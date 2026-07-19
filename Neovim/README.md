# Configuración de Neovim

Backup de mi configuración de Neovim, gestionada con [lazy.nvim](https://github.com/folke/lazy.nvim).

## Instalación en una PC nueva

```sh
git clone https://github.com/cdvillarreal/my-archlinux.git
cp -r my-archlinux/Neovim ~/.config/nvim
nvim
```

Al abrir `nvim` por primera vez, `lazy.nvim` se instala solo y descarga todos los plugins
en las versiones exactas fijadas en `lazy-lock.json`. No hace falta instalar nada a mano.

Después de que terminen de instalarse los plugins, correr `:MasonToolsInstallSync` para
instalar los formatters (stylua, prettier, shfmt, clang-format) usados por `conform.nvim`.
