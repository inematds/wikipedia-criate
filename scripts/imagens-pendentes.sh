#!/usr/bin/env bash
# Gera as imagens que o Codex não fez em 25/11/2026 (limite de uso): 4 fotos de perfil
# e os banners EN/ES. Roda por timer depois que a cota volta. Só troca arquivo quando a
# imagem nova existe; commit + push no fim. Idempotente: pula o que já foi feito.
set -u
REPO=/home/nmaldaner/projetos/wikipedia-criate
A=$REPO/guia/assets
LOG=$REPO/scripts/imagens-pendentes.log
export CODEX_HOME=${CODEX_HOME:-/home/nmaldaner/.codex-tec}
export PATH=/home/nmaldaner/.local/bin:/home/nmaldaner/.npm-global/bin:/usr/local/bin:/usr/bin:/bin
cd "$REPO" || exit 1
exec >>"$LOG" 2>&1
echo "== $(date '+%F %T') início"

BASE="Use sua ferramenta de geração de imagem (image_gen) para criar UMA ilustração fotográfica 3:2 horizontal e salve o PNG em guia/assets/ARQ.png dentro deste diretório. Não edite nenhum outro arquivo. Sem nenhum texto, letra ou logotipo na imagem. Luz neutra, fundo escuro grafite com um único acento âmbar quente, estilo foto editorial realista, pessoa brasileira de 35 a 60 anos. Cena:"
declare -A CENA=(
  [quem-dono]="dono de uma empresa pequena no balcão da própria loja olhando o celular, com uma pasta de recortes de jornal sobre o balcão"
  [quem-profissional]="profissional liberal (advogada ou médica) no consultório lendo no notebook uma ficha com o próprio nome e uma foto"
  [quem-criador]="criador de conteúdo no estúdio caseiro, câmera e microfone, olhando uma enciclopédia aberta ao lado do notebook"
  [quem-assessor]="assessora de comunicação numa mesa de escritório organizando recortes de jornal antigos e um notebook com uma tabela"
)
for n in "${!CENA[@]}"; do
  [ -s "$A/$n.jpg" ] && { echo "pula $n"; continue; }
  printf '%s' "${BASE/ARQ/$n} ${CENA[$n]}." | timeout 600 codex exec --skip-git-repo-check --dangerously-bypass-approvals-and-sandbox - >/dev/null 2>&1
  if [ -s "$A/$n.png" ]; then ffmpeg -loglevel error -y -i "$A/$n.png" -vf scale=760:-1 -q:v 4 "$A/$n.jpg" && rm -f "$A/$n.png"; echo "ok $n"; else echo "FALHOU $n"; fi
done

G=/home/nmaldaner/.claude/skills/projetos-landing-guia/assets/gerar-banner.sh
banner() { # lang título destaque sub line tiles
  local L=$1; shift
  for est in live grade; do
    local saida=banner-$L; [ $est = grade ] && saida=banner-grade-$L
    [ -f "$A/.$saida.feito" ] && { echo "pula $saida"; continue; }
    if bash "$G" --repo "$REPO" --lang "$L" --title "$1" --destaque "$2" --sub "$3" --line "$4" --tiles "$5" \
         --sides "an old open encyclopedia with golden data cards rising from the pages" --estilo $est --saida "$saida.novo" >/dev/null 2>&1 \
       && [ -s "$A/$saida.novo.jpg" ]; then
      mv -f "$A/$saida.novo.jpg" "$A/$saida.jpg"; touch "$A/.$saida.feito"; echo "ok $saida"
    else echo "FALHOU $saida"; fi
    rm -f "$A/$saida.novo".* "$A"/*.codex.log
  done
}
banner en "WIKIPEDIA THE RIGHT WAY" "RIGHT WAY" "Your name on Wikidata and Wikipedia, with sources" "So Google and AI tools know who you are" "Gather sources,Wikidata entry,Declare your link,Article draft,Review request,Link your site"
banner es "WIKIPEDIA COMO DEBE SER" "DEBE SER" "Tu nombre en Wikidata y Wikipedia, con fuentes" "Para que Google y las IA sepan quién eres" "Reunir fuentes,Ficha en Wikidata,Declarar el vínculo,Borrador del artículo,Pedido de revisión,Enlazar tu sitio"

git add guia/assets/*.jpg
if ! git diff --cached --quiet; then
  git commit -q -m "guia: fotos de perfil e banners EN/ES (gerados depois do limite do Codex)" && git push -q origin main && echo "push ok"
fi
echo "== $(date '+%F %T') fim"
