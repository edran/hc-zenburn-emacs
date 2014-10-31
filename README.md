## About

A higher contrast version of the popular zenburn theme created by [Bozhidar Batsov](https://github.com/bbatsov/zenburn-emacs).

This theme uses the new built-in theming support available starting
with Emacs 24.

## Screenshot

![](https://github.com/edran/hc-zenburn-emacs/blob/master/screenshot.jpeg)


## Installation

### Manual

Download `hc-zenburn-theme.el` to the directory `~/.emacs.d/themes/`. Add this to your
`.emacs`:

```lisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
```

Now you can load the theme with the interactive function `load-theme` like this:

`M-x load-theme RET hc-zenburn`

<!-- ### Package.el -->

<!-- Zenburn is available in both [Marmalade](http://marmalade-repo.org) -->
<!-- and [MELPA](http://melpa.milkbox.net). -->
<!-- Keep in mind the fact the version in the Marmalade repo may not always -->
<!-- be up-to-date. -->

<!-- You can install `zenburn` with the following command: -->

<!-- `M-x package-install hc-zenburn-theme` -->

To load it automatically on Emacs startup add this to your init file:

```lisp
(load-theme 'hc-zenburn t)
```

## Ugly colors in the terminal Emacs version

If your Emacs looks considerably uglier in a terminal (compared to the
GUI version) try adding this to your `.bashrc` or `.zshrc`:

```bash
export TERM=xterm-256color
```

Source the `.bashrc`(`.zshrc`) file and start Emacs again.

# Bugs & Improvements

Please, report any problems that you find at the
[project integrated tracker](https://github.com/edran/hc-zenburn-emacs/issues).
If you've added some improvements and you want them included upstream
don't hesitate to send me a patch or even better - a GitHub pull
request.
