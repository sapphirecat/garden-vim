# garden-vim

An earthy, mid-dark colorscheme for vim GUI, neovim, and [truecolor terminals](https://github.com/termstandard/colors).

## Requirements

For best results: GVim, graphical neovim, or a truecolor terminal
with `set termguicolors` applied before using `colorscheme garden`.

Possible, but not recommended: a 256-color terminal.
Due to palette limitations, several colors are gray, including the background.

88- and 16-color terminals are not supported.
These will appear as vim’s default theme in dark mode.

## Installation

Use it as `sapphirecat/garden-vim` with
[vim-plug](https://github.com/junegunn/vim-plug)
or your favorite package manager; or, install the repository
as [a Vim8 package](https://dev.to/iggredible/how-to-use-vim-packages-3gil).
Choose your own adventure out there!

After installing, activate it with the `:colorscheme garden` command.
There is no configuration specific to this scheme.

## Features

- [Airline](https://github.com/vim-airline/vim-airline) theme included
- [Rainbow](https://github.com/luochen1990/rainbow) colors included
- Made with love on [Ubuntu Studio](https://ubuntustudio.org/)

### Usage with Rainbow

Set the `g:rainbow_active` variable before using `:colorscheme`,
and Garden will define rainbow colors (if not already defined.)

That is, in your vimrc (example using vim-plug as plugin manager):

```vim
    call plug#begin()
        " any order acceptable
        Plug 'sapphirecat/garden-vim'
        Plug 'luochen1990/rainbow'
    call plug#end()

    " must use this ordering
    let g:rainbow_active=0
    colorscheme garden
```

The result is that `:RainbowToggle` will activate rainbow, with Garden’s
colors.  If you define your own `g:rainbow_conf.guifgs` etc. _before_ calling
`colorscheme garden`, then your colors will be respected:

```vim
    let g:rainbow_active=1
    let g:rainbow_conf = {'guifgs': ['black', 'red', 'green', 'gold']}
    colorscheme garden
```

### Usage in Terminals

If you only use truecolor terminals, as listed on
[termstandard/colors](https://github.com/termstandard/colors), then add this to
your vimrc to have themes use (truecolor) GUI colors in your terminal:

```vim
    if !has('gui_running') && exists('&termguicolors')
        set termguicolors
    endif
```

Alternatively, you can use a different color scheme in terminals:

```vim
    if has('gui_running')
        colorscheme garden
    else
        colorscheme desert
    endif
```

## Screenshots

[![PHP code](https://sapphirecat.github.io/images/garden/garden-php.png "PHP Demo")](https://sapphirecat.github.io/images/garden/garden-php.png)

[![Multi window view](https://sapphirecat.github.io/images/garden/garden-multi.png "Multi-window Demo")](https://sapphirecat.github.io/images/garden/garden-multi.png)

## Inspiration

I wanted to experiment with pastels on a not-too-deep background.
Green was kind of a random choice; the “Garden” concept defined a palette from there.

The only conceptually nearby schemes I was able to find were:

- [marklar](https://vimcolorschemes.com/vim-scripts/marklar.vim/),
  based on green chalkboards, with a much bluer background than garden
- [tabula](https://vimcolorschemes.com/vim-scripts/tabula.vim/), based on marklar
- [base16-atelier-seaside-light](https://base16.netlify.app/previews/base16-atelier-seaside-light),
  a light sea-green theme

Garden is very warm, and definitely not light.

## License

MIT.
