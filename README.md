# hc-zenburn-emacs

A higher contrast version of the popular zenburn theme created by [Bozhidar Batsov](https://github.com/bbatsov/zenburn-emacs).

This theme uses the new built-in theming support available starting
with Emacs 24.

## Screenshot

![](https://github.com/edran/hc-zenburn-emacs/blob/master/screenshot.jpeg)

## Installation

### package.el

hc-zenburn is available in [MELPA](http://melpa.org/).

You can install `hc-zenburn` with the following command:

`M-x package-install hc-zenburn-theme`

To load it automatically on Emacs startup add this to your init file:

```lisp
(load-theme 'hc-zenburn t)
```

### Manual

Download `hc-zenburn-theme.el` to the directory `~/.emacs.d/themes/`. Add this to your
`.emacs`:

```lisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
```

Now you can load the theme with the interactive function `load-theme` like this:

`M-x load-theme RET hc-zenburn`

To load it automatically on Emacs startup add this to your init file:

```lisp
(load-theme 'hc-zenburn t)
```

To customize the contrast update your .spacesmacs file:

```
(defun dotspacemacs/user-init ()
  (defvar hc-zenburn-override-colors-alist
    '(("hc-zenburn-fg"       . "#ECECEC")
      ("hc-zenburn-fg-1"     . "#70705E")
      ("hc-zenburn-bg-2"     . "#000000")
      ("hc-zenburn-bg-1"     . "#151515")
      ("hc-zenburn-bg-05"    . "#2A2A2A")
      ("hc-zenburn-bg"       . "#262626")
      ("hc-zenburn-bg+05"    . "#343434")
      ("hc-zenburn-bg+1"     . "#3A3A3A")
      ("hc-zenburn-bg+2"     . "#4C4C4C")
      ("hc-zenburn-bg+3"     . "#5A5A5A")))
  )
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
