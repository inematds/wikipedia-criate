# Handoff — 2026-11-27 — História do RS: rascunho v2 na Wikipédia e página Nossa história no portal

## Projeto e escopo
wikipedia-criate (~/projetos/wikipedia-criate), com trabalho também no portal (~/projetos/portal, inema.club). O Nei pediu para reenquadrar a biografia como história (redes nos anos 90, Academics desde 1998, Road Show, portal INEMA, inema.club), juntar provas do Internet Archive e criar a página "Nossa história" no portal em PT/EN/ES.

## Objetivo atual
Entregue: rascunho v2 no ar e página nos 3 idiomas. Aguardando o revisor da Wikipédia. Pergunta nova do Nei: se também foi publicado no inema.tds (Instagram/TikTok) — não foi.

## Estado aceito
- [confirmed] Rascunho v2 publicado na Wikipédia, igual ao arquivo local — arquivo: `rascunhos/nei-maldaner-v2.wiki`; v1 guardada em `rascunhos/nei-maldaner-v1-no-ar.wiki`
- [confirmed] Dossiê de provas — arquivo: `DOSSIE-HISTORIA-RS.md` — evidência: commit c0dc7f3
- [confirmed] Nossa história PT/EN/ES no portal — evidência: commits 8681db7, 2358f81, 27e0d7f no ~/projetos/portal, push feito
- [confirmed] Linha do tempo do caso — arquivo: `CASO-REAL.md` — evidência: commit e0eda4e

## Proposto / tentado, não confirmado
- [unverified] Deploy do Vercel — não se confere por regra; só o push conta.
- [?] Post sobre a Nossa história no inema.tds — não feito; depende de pedido do Nei.

## Decisões
- Biografia contada como história, não currículo — pedido do Nei.
- Números do portal INEMA (milhões de fotos, 160 mil matérias) aparecem como números do próprio portal; repositórios como "mais de 900" — não há fonte independente.
- Páginas antigas da SISNEMA servem para fatos simples, com atribuição; notabilidade pede imprensa independente.

## Não fazer (restrições e travas)
- Não editar Wikipédia/Wikidata por API sem autorização; não digitar senha; não resolver CAPTCHA — fonte: `CLAUDE.md`
- Não conferir o Vercel — fonte: ~/.claude/CLAUDE.md
- Commits do portal como NeiMaldaner; deste repo como inematds — fonte: ~/projetos/portal/CLAUDE.md e `CLAUDE.md`
- Archive.org: buscar devagar, uma página por vez (bloqueou por excesso) — fonte: ~/projetos/wifi/LIMITES.md
- Pesquisa profunda em jornais fica para depois ("não estou com tempo agora") — dito pelo usuário em 27/11, gravado em `DOSSIE-HISTORIA-RS.md`

## Arquivos alterados
- `DOSSIE-HISTORIA-RS.md`, `rascunhos/nei-maldaner-v2.wiki`, `rascunhos/nei-maldaner-v1-no-ar.wiki`, `CASO-REAL.md`
- Fora do projeto: `~/projetos/portal/src/data/nossa-historia.ts`, `~/projetos/portal/src/components/NossaHistoria.tsx`, rotas `(pt)/nossa-historia`, `(en)/en/our-story`, `(es)/es/nuestra-historia`, `src/i18n/locales.ts`, `src/app/sitemap.ts`, `CLAUDE.md` do portal; `~/projetos/wifi/LIMITES.md`

## Memória e regras duráveis tocadas
- `~/projetos/wifi/LIMITES.md` — archive.org recusando conexões (aberto)

## Verificação
- Rodado: tsc + `npm test` no portal → 13/13 ok; dev server local → as 3 rotas com HTTP 200, lang certo, hreflang, largura 390 ok
- Não rodado: página no ar em inema.club — regra de não checar deploy

## Estado em execução
- Processos em segundo plano: nenhum (dev server parado). Chromium local (porta 9233, DISPLAY=:10) pode estar aberto.
- Servidores / portas: nenhum
- Worktrees / branches abertos: nenhum

## Perguntas abertas e adiados
- Aberta: publicar a Nossa história no inema.tds (Instagram/TikTok)? Em que formato?
- Adiado: idmat015425 "Perfil do Diretor de tecnologia", matérias do evento de gestão (015977, 015984, 016015, 016027, 016055, 016001), originais de ZH/JC/O Sul, fonte da rede Sicredi e dos números do portal.

## Pela metade
- nada

## Próxima ação exata
Responder ao Nei: portal sim, inema.tds não. Se ele pedir o post, montar a peça e mostrar antes de agendar no Metricool (metricool-inematds); publicar só com OK.

## Mapa de retomada
- `DOSSIE-HISTORIA-RS.md` — todas as provas e pendências
- `rascunhos/nei-maldaner-v2.wiki` — texto no ar
- `CASO-REAL.md` — linha do tempo

## Perguntas-teste
1. Qual é a tarefa atual e o critério de pronto? → Rascunho v2 no ar e Nossa história em 3 idiomas, aguardando revisor — fonte: `CASO-REAL.md` — chave: `v2`
2. Qual foi a última decisão e por quê? → Números do portal atribuídos ao próprio portal, sem fonte independente — fonte: `DOSSIE-HISTORIA-RS.md` — chave: `160 mil`
3. O que não pode mudar? → Nada de API na Wikipédia, senha ou CAPTCHA — fonte: `CLAUDE.md` — chave: `CAPTCHA`
4. O que está pela metade? → nada; só pesquisa adiada — fonte: `DOSSIE-HISTORIA-RS.md` — chave: `015425`
5. Qual é a próxima ação? → Perguntar se publica no inema.tds; precisa de OK — fonte: só nesta conversa — chave: `inema.tds`

## Checagem de compartilhamento
- Sem segredos, tokens, cookies, dados pessoais ou endpoints privados: sim


<!-- handoff-estado:inicio -->
## Estado gravado pelo script (não editar)

Gravado por handoff-grava.py no momento do handoff. `--conferir` compara com o projeto agora.

- commit: e0eda4e1e6429b300e921d4e3492b339eebc46a9 · branch: main
- arquivos sujos fora de handoffs/: 0
- `rascunhos/nei-maldaner-v2.wiki` · sha256:c15a2e4659c9 · citado
- `rascunhos/nei-maldaner-v1-no-ar.wiki` · sha256:077b01bf5f92 · citado
- `DOSSIE-HISTORIA-RS.md` · sha256:b5e680f84b6a · citado
- `CASO-REAL.md` · sha256:8d702635ad60 · citado
- `CLAUDE.md` · sha256:f1147ddb0b6d · citado

### Repo do trabalho: /home/nmaldaner/projetos/portal
- commit: 27e0d7f17882c2679c3f5f0e41851d3754a68737 · branch: main
- arquivos sujos: 2
- impressão de todos os sujos: d4d6dd2aaca22feb
- `next-env.d.ts` · sha256:0f70629890b7 · sujo
- `tsconfig.tsbuildinfo` · sha256:635a247253af · sujo
<!-- handoff-estado:fim -->
