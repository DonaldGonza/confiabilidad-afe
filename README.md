# Confiabilidad y análisis factorial exploratorio

Proyecto Quarto con capítulos, resultados completos, videos y lecturas. Los cierres indican qué producto deja cada procedimiento, qué se interpreta, qué decisión se toma y cuál es el siguiente paso.

## Revisar y editar

Abre esta carpeta en RStudio, Positron o un editor con Quarto. Edita los archivos `.qmd`. `_quarto.yml` define el orden, la navegación y el estilo. `referencias.bib` y `estilos/apa.csl` generan citas y referencias APA 7.

Desde la carpeta del proyecto:

```powershell
quarto preview
quarto render
```

Se comprobó la generación con Quarto 1.10.18. Las tablas y los gráficos ya están calculados: renderizar no necesita R ni acceso al OMV. Los archivos agregados están en `datos/`; los materiales descargables, en `descargas/`. Los videos y artículos externos requieren internet.

En Windows también puedes ejecutar `Generar_sitio.ps1`. Si Quarto no está en el PATH, el script busca la copia incluida con RStudio. Con `-VistaPrevia` abre el servidor local de vista previa. Esa vista permite revisar el sitio y su búsqueda antes de publicar.

```powershell
.\Generar_sitio.ps1
.\Generar_sitio.ps1 -VistaPrevia
```

## Publicación en GitHub Pages

Sitio: https://donaldgonza.github.io/confiabilidad-afe/

Repositorio: https://github.com/DonaldGonza/confiabilidad-afe

Los archivos `.qmd`, la bibliografía y los estilos son editables. Quarto genera las páginas en `docs/`. GitHub Pages publica esa carpeta desde la rama `main`.

Después de editar, ejecuta `Generar_sitio.ps1`, revisa el sitio y guarda los cambios:

```powershell
git add .
git commit -m "Actualizar el módulo"
git push origin main
```

GitHub actualizará el sitio con la nueva versión de `docs/`. La base original OMV y las respuestas individuales quedan fuera del repositorio; los materiales incluyen resultados agregados.

Documentación: [Quarto en GitHub Pages](https://quarto.org/docs/publishing/github-pages.html).

## Alcance estadístico

La fuente es Base_IA.omv. Se conservó su huella SHA-256 y no se modificó. Se distribuyen solo resultados agregados. La reproducción utilizó R 4.4.3 y psych 2.5.3, con tres factores fijados, MinRes y Promax. El número de factores procede del análisis paralelo guardado, no de una nueva simulación. La base contiene 907 sustituciones por medias; la guía explica esa limitación y no declara validada una versión final del instrumento.

El registro descargable contiene las decisiones actuales. Conservar provisionalmente no equivale a validación; revisar no equivale a eliminar.

## Estilo de referencias

El archivo APA 7 se copia sin modificaciones del repositorio Citation Style Language, https://github.com/citation-style-language/styles/blob/master/apa.csl. Sus autores y licencia CC BY-SA 3.0 figuran en el propio archivo. Esa licencia corresponde al archivo de estilo.
