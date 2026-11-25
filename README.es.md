# 📚 Wikipedia como debe ser

[![Wikipedia como debe ser](guia/assets/banner-es.jpg)](https://inematds.github.io/wikipedia-criate/guia/es/)

**🇧🇷 [Português](README.md) · 🇺🇸 [English](README.en.md) · 🇪🇸 [Español](README.es.md)**

## Qué es

Esta es una guía, con modelos listos para usar, para poner a usted o a su empresa en **Wikidata** (la base de datos abierta de Wikipedia, que leen los buscadores y las IA) y, cuando haya fuentes suficientes, en **Wikipedia**. Sirve para empresarios, profesionales liberales, creadores de contenido y quienes cuidan la imagen de otra persona. Enseña el camino que la propia Wikipedia acepta: reunir artículos publicados por terceros, declarar que el tema es usted y pedir que un editor independiente lo revise. Solo necesita sus artículos de prensa antiguos y un asistente de IA, como Claude Code o Codex, para hacer la parte trabajosa.

## 📖 Guía

**https://inematds.github.io/wikipedia-criate/guia/es/** (también en [portugués](https://inematds.github.io/wikipedia-criate/guia/) e [inglés](https://inematds.github.io/wikipedia-criate/guia/en/))

## Por qué esto importa para usted y para su negocio

- Cuando alguien le pregunta a Google o a una IA quién es usted, la respuesta depende de lo que exista en fuentes abiertas y confiables. Sin ficha, la IA responde con poco, con errores o con un homónimo.
- Wikidata es abierto y de dominio público: los buscadores y quienes entrenan IA usan esos datos. Una ficha neutral, con fuente, vincula su nombre, su empresa, su sitio web y sus redes.
- Clientes, socios e inversores investigan antes de cerrar un trato. Encontrar una ficha con fuente transmite más confianza que cualquier anuncio.
- No hay garantía de cómo cada servicio usa esos datos. La ganancia segura es tener su historia documentada en el lugar que todos consultan.

## Empiece pegando esto en su IA (Claude Code o Codex)

```
Lee el kit https://github.com/inematds/wikipedia-criate (README, carpeta modelos/ y CASO-REAL.md). Quiero poner a [SU NOMBRE o SU EMPRESA] en Wikidata y, si hay fuentes suficientes, en Wikipedia en portugués.
1. Busca artículos sobre mí en periódicos, revistas, universidades, asociaciones y archivos de la web (arquivo.pt, web.archive.org). Abre cada página y copia la frase que comprueba cada dato. Arma el dossier con el modelo 01.
2. Dime con franqueza: ¿alcanza para Wikidata? ¿Alcanza para Wikipedia? ¿Qué falta?
3. Arma la ficha de Wikidata (modelo 02) solo con lo que tenga fuente.
4. Escribe el texto de mi página de usuario (modelo 03) y un borrador de artículo neutral (modelo 04).
No crees cuentas, no publiques nada y no escribas contraseñas. Muéstrame todo antes y espera mi sí.
```

## Qué hay aquí

| Archivo | Para qué sirve |
|---|---|
| [modelos/01-dossie-de-fontes.md](modelos/01-dossie-de-fontes.md) (en portugués) | Lista de artículos, con la frase que comprueba cada dato |
| [modelos/02-ficha-wikidata.md](modelos/02-ficha-wikidata.md) (en portugués) | Campos del ítem de la persona y de la empresa, con los códigos de las propiedades |
| [modelos/03-pagina-de-usuario.txt](modelos/03-pagina-de-usuario.txt) (en portugués) | Declaración de conflicto de intereses (primera edición de la cuenta) |
| [modelos/04-rascunho-artigo.wiki](modelos/04-rascunho-artigo.wiki) (en portugués) | Esqueleto de artículo neutral, con citas |
| [modelos/05-pedido-de-revisao.txt](modelos/05-pedido-de-revisao.txt) (en portugués) | Solicitud de revisión para editores independientes |
| [CASO-REAL.md](CASO-REAL.md) (en portugués) | El caso de Nei Maldaner y SISNEMA (25/11/2026), con enlaces, errores y correcciones |

## El proceso, de principio a fin

Quién lo hace: 🧠 sesión con la persona · 🤖 IA (Claude Code / Codex) · 👤 la propia persona

1. 🤖 **Dossier de fuentes** (modelo 01). Buscar en periódicos, universidades, asociaciones, arquivo.pt y web.archive.org. Abrir cada página y copiar la frase literal. Una fuente pegada desde otra IA solo entra después de verificarla.
2. 🧠 **Evaluación franca.** Wikidata: necesita una fuente pública para cada dato. Wikipedia: cobertura significativa en varias fuentes independientes. Marca nueva sin prensa → solo Wikidata (o nada).
3. 🤖 **Ficha de Wikidata** (modelo 02). Comprobar si el ítem ya existe. Verificar cada código de propiedad en su página (ej.: https://www.wikidata.org/wiki/Property:P112).
4. 👤 **Cuenta Wikimedia** con nombre de persona (no de marca). La contraseña y el CAPTCHA siempre los hace la persona. La cuenta sirve para Wikidata y Wikipedia.
5. 🤖👤 **Página de usuario** (modelo 03) en Wikidata y en Wikipedia: declarar el vínculo antes de cualquier otra edición.
6. 🤖 **Ítems en Wikidata**, desde la página del sitio (Special:NewItem), una declaración a la vez, con "URL de la referencia" (P854) en cada una. Primero la empresa, después la persona, y enlazar "fundador" (P112).
7. 🤖 **Su sitio apunta al ítem**: incluir el enlace de Wikidata en el `sameAs` de los datos estructurados (schema.org `Person` / `Organization`).
8. 🤖 **Borrador del artículo** (modelo 04) en `Usuario:<Nombre>/Borrador`: previsualizar, eliminar frases sin fuente, categorías desactivadas.
9. 🤖👤 **Solicitud de revisión** (modelo 05) en Ayuda:Tire suas dúvidas. Quien lo pone en línea es un editor independiente.
10. 👤 **Dar seguimiento** con la campanita de notificaciones. No editar el artículo después de publicado; pedir cambios en la página de discusión.

## Instalación técnica

No hay programa que instalar. Es un kit de textos y una guía en HTML estático.

**Requisitos previos**
- Un asistente de IA con acceso a la web: Claude Code o Codex.
- Navegador. Cuenta Wikimedia creada por la persona (https://www.wikidata.org/wiki/Special:CreateAccount).

**Cómo lo hizo la IA en el caso real (25/11/2026)**
- Investigación: páginas HTML públicas (periódicos, arquivo.pt, Wayback). Las páginas que cargan con JavaScript se abrieron en el navegador.
- Edición: un Chromium con perfil propio abierto **en la pantalla de la persona** (`--remote-debugging-port`), controlado por Playwright (`connectOverCDP`), haciendo clic en la interfaz del sitio, al ritmo de una persona, y verificando cada guardado en la página pública. La persona inició sesión y resolvió cada CAPTCHA en la misma ventana.
- **Sin API y sin QuickStatements.** Editar por la interfaz, con la persona al lado, mantiene el control humano. La edición masiva o automática exige una cuenta de bot aprobada por la comunidad: https://www.wikidata.org/wiki/Wikidata:Bots
- Inicio de sesión global: entrar en Wikidata y después abrir `Especial:Entrar` en pt.wikipedia inicia sesión sin pedir la contraseña otra vez.

**Propiedades de Wikidata más usadas**

| Código | Nombre | Uso |
|---|---|---|
| P31 | instancia de | Q5 (ser humano) o Q4830453 (negocio) |
| P21 / P27 | sexo / nacionalidad | persona |
| P106 / P101 | ocupación / campo de trabajo | persona |
| P108 | empleador | persona → empresa |
| P112 | fundador | empresa → persona |
| P17 / P159 / P571 | país / sede / fundación | empresa |
| P856 | página web oficial | empresa |
| P2003 / P7085 / P2037 / P2397 | Instagram / TikTok / GitHub / YouTube | perfiles |
| P854 | URL de la referencia | dentro de cada referencia |

**Pruebas de la guía**
- Los 3 idiomas responden (`/guia/`, `/guia/en/`, `/guia/es/`), el selector de idioma navega, sin desplazamiento horizontal en 360 px.

## Cuidados (qué no hacer)

- No escribir como publicidad ("renombrado", "líder", "referente").
- No usar un nombre de marca en la cuenta. No crear varias cuentas. No pedir a amigos que editen sin declarar el vínculo.
- No publicar directamente en el espacio principal. No pelear por el texto después.
- No usar un artículo "publicitario" como prueba de relevancia.
- La edición pagada tiene reglas propias y debe declararse: https://foundation.wikimedia.org/wiki/Policy:Terms_of_Use

---

Proyecto independiente, sin vínculo con la Wikimedia Foundation. Hecho por [INEMA.CLUB](https://inema.club).
