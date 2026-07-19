# Configuración de Neovim

Backup de mi configuración de Neovim, gestionada con [lazy.nvim](https://github.com/folke/lazy.nvim).

## Instalación en una PC nueva

### Linux

```sh
git clone https://github.com/cdvillarreal/my-archlinux.git
cp -r my-archlinux/Neovim ~/.config/nvim
nvim
```

### Windows
```sh
cd ~
git clone https://github.com/cdvillarreal/my-archlinux.git
Copy-Item -Recurse my-archlinux\Neovim $env:LOCALAPPDATA\nvim
nvim
```
nvim-treesitter compila parsers en C, así que en Windows necesitás un compilador instalado (zig es la opción más simple para esto, o el toolset de MSVC). Sin eso, el resaltado de sintaxis vía treesitter puede fallar en la primera instalación. El resto de los plugins (LSP, blink.cmp, lualine, gitsigns, etc.) son multiplataforma y no deberían dar problema.

#### Instalación de zig
```sh
winget install zig.zig
```
Después, abrí una terminal nueva (para que tome el PATH actualizado) y confirmá:
```sh
zig version
```
Si eso imprime una versión, ya está — la próxima vez que abras nvim con tu config, nvim-treesitter va a encontrar zig solo y compilar los parsers sin que hagas nada más.

#### Últimos pasos
Al abrir `nvim` por primera vez, `lazy.nvim` se instala solo y descarga todos los plugins
en las versiones exactas fijadas en `lazy-lock.json`. No hace falta instalar nada a mano.

Después de que terminen de instalarse los plugins, correr `:MasonToolsInstallSync` para
instalar los formatters (stylua, prettier, shfmt, clang-format) usados por `conform.nvim`.
