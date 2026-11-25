# Ficha do Wikidata — <NOME>

Antes de criar: procure o nome em https://www.wikidata.org (pode já existir um item).
Crie pela página do site, logado: https://www.wikidata.org/wiki/Special:NewItem
Em cada declaração, clique em "adicionar referência" → **URL da referência (P854)** → cole o link da fonte.

## Item da pessoa

- Rótulo: `<Nome como aparece na imprensa>`
- Descrição (curta, neutra, sem adjetivo): `<ocupação> <nacionalidade>, <o que fez de mais conhecido>`
  - Ex.: `empresário brasileiro de tecnologia da informação, fundador da EMPRESA`
- Nomes alternativos: `<nome completo, apelido>`

| Propriedade | Valor | Fonte (URL) |
|---|---|---|
| instância de (P31) | ser humano (Q5) | |
| sexo ou gênero (P21) | | |
| país de nacionalidade (P27) | | |
| primeiro nome (P735) / sobrenome (P734) | (procure o item do nome) | — |
| ocupação (P106) | ex.: empreendedor (Q131524) | |
| campo de trabalho (P101) | | |
| empregador (P108) | item da empresa | |
| línguas faladas (P1412) | | — |
| Instagram (P2003) / TikTok (P7085) / GitHub (P2037) / canal do YouTube (P2397) | nome do perfil | — |

**Não coloque sem fonte pública:** data e local de nascimento, formação, prêmios, família.

## Item da empresa

- Rótulo: `<NOME DA EMPRESA>` · Nomes alternativos: `<outras grafias>`
- Descrição: `empresa brasileira de <setor>, com sede em <cidade>`

| Propriedade | Valor | Fonte (URL) |
|---|---|---|
| instância de (P31) | negócio (Q4830453) ou outro tipo | |
| país (P17) | | |
| sede (P159) | cidade | |
| data de fundação (P571) | ano | |
| fundador (P112) | item da pessoa | |
| setor de atividade (P452) | | |
| página web oficial (P856) | site | — |

## Depois

- Anote os números Q: pessoa = Q____ · empresa = Q____
- No seu site, ponha o link do item no `sameAs` (dados estruturados schema.org) da pessoa e da empresa.
