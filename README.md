# config-micro

Archivos de configuración para [Micro Editor](https://micro-editor.github.io/)

## Objetivo

El editor **Micro** es un excelente reemplazo a Nano como editor de
textos/programación para la consola de comandos.

Sin embargo, en su configuración inicial, las combinaciones de teclas
con Ctrl y Alt corresponden al estándar Macintosh. Como usuario de Linux,
encuentro muy molesto este detalle.

Siendo Python mi lenguaje de cabecera, necesito poder ejecutar mis scripts
sin salir del editor, idealmente apretando F5 como estoy acostumbrado.

Estos archivos de configuración corrigen ambos aspectos.

## Ventajas

- Configuraciones adecuadas para programar en Python.
- Las teclas Ctrl y Alt se comportan como debe ser (Linux/Win).
- Incluye ejecución de archivo desde el editor mediante F5.

## Instalación

Para instalar los archivos de configuración, sólo hay que copiarlos a la carpeta `~/.config/micro`.

Desde la línea de comandos **bash**, la instalación puede realizarse de las siguientes maneras:

### Automática

```bash
curl https://raw.githubusercontent.com/czayas/config-micro/master/install.sh | bash
```

### Manual

```bash
cd ~/.config/micro/
wget https://raw.githubusercontent.com/czayas/config-micro/master/bindings.json
wget https://raw.githubusercontent.com/czayas/config-micro/master/settings.json
wget https://raw.githubusercontent.com/czayas/config-micro/master/init1.lua
wget https://raw.githubusercontent.com/czayas/config-micro/master/init2.lua
cd -
```

Al finalizar la descarga, si en la carpeta `~/.config/micro` hay archivos con extensión `.1` éstos deben reemplazar a los que no poseen dicha extensión. Por ejemplo, si ya existía `settings.json`:

```bash
cd ~/.config/micro/
mv settings.json settings.json.backup
mv settings.json.1 settings.json
cd -
```

### El archivo init.lua

Dependiendo de la versión de Micro Editor instalada, debe renombrarse el archivo **init1.lua** o **init2.lua** a **init.lua**
