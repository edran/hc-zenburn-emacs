;;; zenburn-theme.el --- A low contrast color theme for Emacs.

;; Copyright (C)2014 Nantas Nardelli

;; Author: Nantas Nardelli <nantas.nardelli@gmail.com>
;; URL: https:github.com/edran/hc-zenburn-emacs
;; Version 2.1hc

;; This program is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; An even higher contrast version of the zenburn theme

;;; Credits:

;; Bozhidar Batsov created the zenburn theme for emacs, which was a
;; port of the vim theme made by Jani Nurminen

;;; Code:

(deftheme higher-hc-zenburn "An even higher constrast Zenburn color theme")

;;; Color Palette

(defvar higher-hc-zenburn-colors-alist
  '(("higher-hc-zenburn-fg+1"     . "#FFFFEF")
    ("higher-hc-zenburn-fg"       . "#DCDCCC")
    ("higher-hc-zenburn-fg-1"     . "#70705E")
    ("higher-hc-zenburn-bg-2"     . "#000000")
    ("higher-hc-zenburn-bg-1"     . "#202020")
    ("higher-hc-zenburn-bg-05"    . "#2D2D2D")
    ("higher-hc-zenburn-bg"       . "#313131")
    ("higher-hc-zenburn-bg+05"    . "#383838")
    ("higher-hc-zenburn-bg+1"     . "#3E3E3E")
    ("higher-hc-zenburn-bg+2"     . "#4E4E4E")
    ("higher-hc-zenburn-bg+3"     . "#5E5E5E")
    ("higher-hc-zenburn-red+1"    . "#E9B0B0")
    ("higher-hc-zenburn-red"      . "#D9A0A0")
    ("higher-hc-zenburn-red-1"    . "#C99090")
    ("higher-hc-zenburn-red-2"    . "#B98080")
    ("higher-hc-zenburn-red-3"    . "#A97070")
    ("higher-hc-zenburn-red-4"    . "#996060")
    ("higher-hc-zenburn-orange"   . "#ECBC9C")
    ("higher-hc-zenburn-yellow"   . "#FDECBC")
    ("higher-hc-zenburn-yellow-1" . "#EDDCAC")
    ("higher-hc-zenburn-yellow-2" . "#DDCC9C")
    ("higher-hc-zenburn-green-1"  . "#6C8C6C")
    ("higher-hc-zenburn-green"    . "#8CAC8C")
    ("higher-hc-zenburn-green+1"  . "#9CBF9C")
    ("higher-hc-zenburn-green+2"  . "#ACD2AC")
    ("higher-hc-zenburn-green+3"  . "#BCE5BC")
    ("higher-hc-zenburn-green+4"  . "#CCF8CC")
    ("higher-hc-zenburn-cyan"     . "#A0EDF0")
    ("higher-hc-zenburn-blue+1"   . "#9CC7FB")
    ("higher-hc-zenburn-blue"     . "#99DDE0")
    ("higher-hc-zenburn-blue-1"   . "#89C5C8")
    ("higher-hc-zenburn-blue-2"   . "#79ADB0")
    ("higher-hc-zenburn-blue-3"   . "#699598")
    ("higher-hc-zenburn-blue-4"   . "#597D80")
    ("higher-hc-zenburn-blue-5"   . "#436D6D")
    ("higher-hc-zenburn-magenta"  . "#E090C7"))
  "List of Higher-Hc-Zenburn colors.
Each element has the form (NAME . HEX).

`+N' suffixes indicate a color is lighter.
`-N' suffixes indicate a color is darker.")

(defmacro higher-hc-zenburn-with-color-variables (&rest body)
  "`let' bind all colors defined in `higher-hc-zenburn-colors-alist' around BODY.
Also bind `class' to ((class color) (min-colors 89))."
  (declare (indent 0))
  `(let ((class '((class color) (min-colors 89)))
         ,@(mapcar (lambda (cons)
                     (list (intern (car cons)) (cdr cons)))
                   higher-hc-zenburn-colors-alist))
     ,@body))

;;; Theme Faces
(higher-hc-zenburn-with-color-variables
  (custom-theme-set-faces
   'higher-hc-zenburn
;;;; Built-in
;;;;; basic coloring
   '(button ((t (:underline t))))
   `(link ((t (:foreground ,higher-hc-zenburn-yellow :underline t :weight bold))))
   `(link-visited ((t (:foreground ,higher-hc-zenburn-yellow-2 :underline t :weight normal))))
   `(default ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg))))
   `(cursor ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-fg+1))))
   `(escape-glyph ((t (:foreground ,higher-hc-zenburn-yellow :bold t))))
   `(fringe ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg+1))))
   `(header-line ((t (:foreground ,higher-hc-zenburn-yellow
                                  :background ,higher-hc-zenburn-bg-1
                                  :box (:line-width -1 :style released-button)))))
   `(highlight ((t (:background ,higher-hc-zenburn-bg-05))))
   `(success ((t (:foreground ,higher-hc-zenburn-green :weight bold))))
   `(warning ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
;;;;; compilation
   `(compilation-column-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(compilation-enter-directory-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(compilation-error-face ((t (:foreground ,higher-hc-zenburn-red-1 :weight bold :underline t))))
   `(compilation-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(compilation-info-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(compilation-info ((t (:foreground ,higher-hc-zenburn-green+4 :underline t))))
   `(compilation-leave-directory-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(compilation-line-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(compilation-line-number ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(compilation-message-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(compilation-warning-face ((t (:foreground ,higher-hc-zenburn-orange :weight bold :underline t))))
   `(compilation-mode-line-exit ((t (:foreground ,higher-hc-zenburn-green+2 :weight bold))))
   `(compilation-mode-line-fail ((t (:foreground ,higher-hc-zenburn-red :weight bold))))
   `(compilation-mode-line-run ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
;;;;; grep
   `(grep-context-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(grep-error-face ((t (:foreground ,higher-hc-zenburn-red-1 :weight bold :underline t))))
   `(grep-hit-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(grep-match-face ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
   `(match ((t (:background ,higher-hc-zenburn-bg-1 :foreground ,higher-hc-zenburn-orange :weight bold))))
;;;;; isearch
   `(isearch ((t (:foreground ,higher-hc-zenburn-yellow-2 :weight bold :background ,higher-hc-zenburn-bg+2))))
   `(isearch-fail ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-red-4))))
   `(lazy-highlight ((t (:foreground ,higher-hc-zenburn-yellow-2 :weight bold :background ,higher-hc-zenburn-bg-05))))

   `(menu ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg))))
   `(minibuffer-prompt ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(mode-line
     ((,class (:foreground ,higher-hc-zenburn-green+1
                           :background ,higher-hc-zenburn-bg-1
                           :box (:line-width -1 :style released-button)))
      (t :inverse-video t)))
   `(mode-line-buffer-id ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(mode-line-inactive
     ((t (:foreground ,higher-hc-zenburn-green-1
                      :background ,higher-hc-zenburn-bg-05
                      :box (:line-width -1 :style released-button)))))
   `(region ((,class (:background ,higher-hc-zenburn-bg-1))
             (t :inverse-video t)))
   `(secondary-selection ((t (:background ,higher-hc-zenburn-bg+2))))
   `(trailing-whitespace ((t (:background ,higher-hc-zenburn-red))))
   `(vertical-border ((t (:foreground ,higher-hc-zenburn-fg))))
;;;;; font lock
   `(font-lock-builtin-face ((t (:foreground ,higher-hc-zenburn-fg :weight bold))))
   `(font-lock-comment-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,higher-hc-zenburn-green-1))))
   `(font-lock-constant-face ((t (:foreground ,higher-hc-zenburn-green+4))))
   `(font-lock-doc-face ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(font-lock-function-name-face ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(font-lock-keyword-face ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(font-lock-negation-char-face ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(font-lock-preprocessor-face ((t (:foreground ,higher-hc-zenburn-blue+1))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(font-lock-regexp-grouping-backslash ((t (:foreground ,higher-hc-zenburn-green :weight bold))))
   `(font-lock-string-face ((t (:foreground ,higher-hc-zenburn-red))))
   `(font-lock-type-face ((t (:foreground ,higher-hc-zenburn-blue-1))))
   `(font-lock-variable-name-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(font-lock-warning-face ((t (:foreground ,higher-hc-zenburn-yellow-2 :weight bold))))

   `(c-annotation-face ((t (:inherit font-lock-constant-face))))
;;;;; newsticker
   `(newsticker-date-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(newsticker-default-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(newsticker-enclosure-face ((t (:foreground ,higher-hc-zenburn-green+3))))
   `(newsticker-extra-face ((t (:foreground ,higher-hc-zenburn-bg+2 :height 0.8))))
   `(newsticker-feed-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(newsticker-immortal-item-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(newsticker-new-item-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(newsticker-obsolete-item-face ((t (:foreground ,higher-hc-zenburn-red))))
   `(newsticker-old-item-face ((t (:foreground ,higher-hc-zenburn-bg+3))))
   `(newsticker-statistics-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(newsticker-treeview-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(newsticker-treeview-immortal-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(newsticker-treeview-listwindow-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(newsticker-treeview-new-face ((t (:foreground ,higher-hc-zenburn-blue :weight bold))))
   `(newsticker-treeview-obsolete-face ((t (:foreground ,higher-hc-zenburn-red))))
   `(newsticker-treeview-old-face ((t (:foreground ,higher-hc-zenburn-bg+3))))
   `(newsticker-treeview-selection-face ((t (:background ,higher-hc-zenburn-bg-1 :foreground ,higher-hc-zenburn-yellow))))
;;;; Third-party
;;;;; ace-jump
   `(ace-jump-face-background
     ((t (:foreground ,higher-hc-zenburn-fg-1 :background ,higher-hc-zenburn-bg :inverse-video nil))))
   `(ace-jump-face-foreground
     ((t (:foreground ,higher-hc-zenburn-green+2 :background ,higher-hc-zenburn-bg :inverse-video nil))))
;;;;; android mode
   `(android-mode-debug-face ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(android-mode-error-face ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
   `(android-mode-info-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(android-mode-verbose-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(android-mode-warning-face ((t (:foreground ,higher-hc-zenburn-yellow))))
;;;;; anzu
   `(anzu-mode-line ((t (:foreground ,higher-hc-zenburn-cyan :weight bold))))
;;;;; auctex
   `(font-latex-bold-face ((t (:inherit bold))))
   `(font-latex-warning-face ((t (:foreground nil :inherit font-lock-warning-face))))
   `(font-latex-sectioning-5-face ((t (:foreground ,higher-hc-zenburn-red :weight bold ))))
   `(font-latex-sedate-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(font-latex-italic-face ((t (:foreground ,higher-hc-zenburn-cyan :slant italic))))
   `(font-latex-string-face ((t (:inherit ,font-lock-string-face))))
   `(font-latex-math-face ((t (:foreground ,higher-hc-zenburn-orange))))
;;;;; auto-complete
   `(ac-candidate-face ((t (:background ,higher-hc-zenburn-bg+3 :foreground ,higher-hc-zenburn-bg-2))))
   `(ac-selection-face ((t (:background ,higher-hc-zenburn-blue-4 :foreground ,higher-hc-zenburn-fg))))
   `(popup-tip-face ((t (:background ,higher-hc-zenburn-yellow-2 :foreground ,higher-hc-zenburn-bg-2))))
   `(popup-scroll-bar-foreground-face ((t (:background ,higher-hc-zenburn-blue-5))))
   `(popup-scroll-bar-background-face ((t (:background ,higher-hc-zenburn-bg-1))))
   `(popup-isearch-match ((t (:background ,higher-hc-zenburn-bg :foreground ,higher-hc-zenburn-fg))))
;;;;; company-mode
   `(company-tooltip ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg+1))))
   `(company-tooltip-selection ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg-1))))
   `(company-tooltip-mouse ((t (:background ,higher-hc-zenburn-bg-1))))
   `(company-tooltip-common ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(company-tooltip-common-selection ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(company-scrollbar-fg ((t (:background ,higher-hc-zenburn-green+1))))
   `(company-scrollbar-bg ((t (:background ,higher-hc-zenburn-bg-1))))
   `(company-preview ((t (:background ,higher-hc-zenburn-green+1))))
   `(company-preview-common ((t (:background ,higher-hc-zenburn-bg-1))))
;;;;; bm
   `(bm-face ((t (:background ,higher-hc-zenburn-yellow-1 :foreground ,higher-hc-zenburn-bg))))
   `(bm-fringe-face ((t (:background ,higher-hc-zenburn-yellow-1 :foreground ,higher-hc-zenburn-bg))))
   `(bm-fringe-persistent-face ((t (:background ,higher-hc-zenburn-green-1 :foreground ,higher-hc-zenburn-bg))))
   `(bm-persistent-face ((t (:background ,higher-hc-zenburn-green-1 :foreground ,higher-hc-zenburn-bg))))
;;;;; clojure-test-mode
   `(clojure-test-failure-face ((t (:foreground ,higher-hc-zenburn-orange :weight bold :underline t))))
   `(clojure-test-error-face ((t (:foreground ,higher-hc-zenburn-red :weight bold :underline t))))
   `(clojure-test-success-face ((t (:foreground ,higher-hc-zenburn-green+1 :weight bold :underline t))))
;;;;; coq
   `(coq-solve-tactics-face ((t (:foreground nil :inherit font-lock-constant-face))))
;;;;; ctable
   `(ctbl:face-cell-select ((t (:background ,higher-hc-zenburn-blue :foreground ,higher-hc-zenburn-bg))))
   `(ctbl:face-continue-bar ((t (:background ,higher-hc-zenburn-bg-05 :foreground ,higher-hc-zenburn-bg))))
   `(ctbl:face-row-select ((t (:background ,higher-hc-zenburn-cyan :foreground ,higher-hc-zenburn-bg))))
;;;;; diff
   `(diff-added ((,class (:foreground ,higher-hc-zenburn-green+4 :background nil))
                 (t (:foreground ,higher-hc-zenburn-green-1 :background nil))))
   `(diff-changed ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(diff-removed ((,class (:foreground ,higher-hc-zenburn-red :background nil))
                   (t (:foreground ,higher-hc-zenburn-red-3 :background nil))))
   `(diff-refine-added ((t :inherit diff-added :weight bold)))
   `(diff-refine-change ((t :inherit diff-changed :weight bold)))
   `(diff-refine-removed ((t :inherit diff-removed :weight bold)))
   `(diff-header ((,class (:background ,higher-hc-zenburn-bg+2))
                  (t (:background ,higher-hc-zenburn-fg :foreground ,higher-hc-zenburn-bg))))
   `(diff-file-header
     ((,class (:background ,higher-hc-zenburn-bg+2 :foreground ,higher-hc-zenburn-fg :bold t))
      (t (:background ,higher-hc-zenburn-fg :foreground ,higher-hc-zenburn-bg :bold t))))
;;;;; diff-hl
   `(diff-hl-change ((,class (:foreground ,higher-hc-zenburn-blue-2 :background ,higher-hc-zenburn-bg-05))))
   `(diff-hl-delete ((,class (:foreground ,higher-hc-zenburn-red+1 :background ,higher-hc-zenburn-bg-05))))
   `(diff-hl-insert ((,class (:foreground ,higher-hc-zenburn-green+1 :background ,higher-hc-zenburn-bg-05))))
   `(diff-hl-unknown ((,class (:foreground ,higher-hc-zenburn-yellow :background ,higher-hc-zenburn-bg-05))))
;;;;; dim-autoload
   `(dim-autoload-cookie-line ((t :foreground ,higher-hc-zenburn-bg+1)))
;;;;; dired+
   `(diredp-display-msg ((t (:foreground ,higher-hc-zenburn-blue))))
   `(diredp-compressed-file-suffix ((t (:foreground ,higher-hc-zenburn-orange))))
   `(diredp-date-time ((t (:foreground ,higher-hc-zenburn-magenta))))
   `(diredp-deletion ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(diredp-deletion-file-name ((t (:foreground ,higher-hc-zenburn-red))))
   `(diredp-dir-heading ((t (:foreground ,higher-hc-zenburn-blue :background ,higher-hc-zenburn-bg-1))))
   `(diredp-dir-priv ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(diredp-exec-priv ((t (:foreground ,higher-hc-zenburn-red))))
   `(diredp-executable-tag ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(diredp-file-name ((t (:foreground ,higher-hc-zenburn-blue))))
   `(diredp-file-suffix ((t (:foreground ,higher-hc-zenburn-green))))
   `(diredp-flag-mark ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(diredp-flag-mark-line ((t (:foreground ,higher-hc-zenburn-orange))))
   `(diredp-ignored-file-name ((t (:foreground ,higher-hc-zenburn-red))))
   `(diredp-link-priv ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(diredp-mode-line-flagged ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(diredp-mode-line-marked ((t (:foreground ,higher-hc-zenburn-orange))))
   `(diredp-no-priv ((t (:foreground ,higher-hc-zenburn-fg))))
   `(diredp-number ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(diredp-other-priv ((t (:foreground ,higher-hc-zenburn-yellow-1))))
   `(diredp-rare-priv ((t (:foreground ,higher-hc-zenburn-red-1))))
   `(diredp-read-priv ((t (:foreground ,higher-hc-zenburn-green-1))))
   `(diredp-symlink ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(diredp-write-priv ((t (:foreground ,higher-hc-zenburn-magenta))))
;;;;; ediff
   `(ediff-current-diff-A ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-red-4))))
   `(ediff-current-diff-Ancestor ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-red-4))))
   `(ediff-current-diff-B ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-green-1))))
   `(ediff-current-diff-C ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-blue-5))))
   `(ediff-even-diff-A ((t (:background ,higher-hc-zenburn-bg+1))))
   `(ediff-even-diff-Ancestor ((t (:background ,higher-hc-zenburn-bg+1))))
   `(ediff-even-diff-B ((t (:background ,higher-hc-zenburn-bg+1))))
   `(ediff-even-diff-C ((t (:background ,higher-hc-zenburn-bg+1))))
   `(ediff-fine-diff-A ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-red-2 :weight bold))))
   `(ediff-fine-diff-Ancestor ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-red-2 weight bold))))
   `(ediff-fine-diff-B ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-green :weight bold))))
   `(ediff-fine-diff-C ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-blue-3 :weight bold ))))
   `(ediff-odd-diff-A ((t (:background ,higher-hc-zenburn-bg+2))))
   `(ediff-odd-diff-Ancestor ((t (:background ,higher-hc-zenburn-bg+2))))
   `(ediff-odd-diff-B ((t (:background ,higher-hc-zenburn-bg+2))))
   `(ediff-odd-diff-C ((t (:background ,higher-hc-zenburn-bg+2))))
;;;;; egg
   `(egg-text-base ((t (:foreground ,higher-hc-zenburn-fg))))
   `(egg-help-header-1 ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(egg-help-header-2 ((t (:foreground ,higher-hc-zenburn-green+3))))
   `(egg-branch ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(egg-branch-mono ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(egg-term ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(egg-diff-add ((t (:foreground ,higher-hc-zenburn-green+4))))
   `(egg-diff-del ((t (:foreground ,higher-hc-zenburn-red+1))))
   `(egg-diff-file-header ((t (:foreground ,higher-hc-zenburn-yellow-2))))
   `(egg-section-title ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(egg-stash-mono ((t (:foreground ,higher-hc-zenburn-green+4))))
;;;;; elfeed
   `(elfeed-search-date-face ((t (:foreground ,higher-hc-zenburn-yellow-1 :underline t
                                              :weight bold))))
   `(elfeed-search-tag-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(elfeed-search-feed-face ((t (:foreground ,higher-hc-zenburn-cyan))))
;;;;; emacs-w3m
   `(w3m-anchor ((t (:foreground ,higher-hc-zenburn-yellow :underline t
                                 :weight bold))))
   `(w3m-arrived-anchor ((t (:foreground ,higher-hc-zenburn-yellow-2
                                         :underline t :weight normal))))
   `(w3m-form ((t (:foreground ,higher-hc-zenburn-red-1 :underline t))))
   `(w3m-header-line-location-title ((t (:foreground ,higher-hc-zenburn-yellow
                                                     :underline t :weight bold))))
   '(w3m-history-current-url ((t (:inherit match))))
   `(w3m-lnum ((t (:foreground ,higher-hc-zenburn-green+2 :background ,higher-hc-zenburn-bg))))
   `(w3m-lnum-match ((t (:background ,higher-hc-zenburn-bg-1
                                     :foreground ,higher-hc-zenburn-orange
                                     :weight bold))))
   `(w3m-lnum-minibuffer-prompt ((t (:foreground ,higher-hc-zenburn-yellow))))
;;;;; erc
   `(erc-action-face ((t (:inherit erc-default-face))))
   `(erc-bold-face ((t (:weight bold))))
   `(erc-current-nick-face ((t (:foreground ,higher-hc-zenburn-blue :weight bold))))
   `(erc-dangerous-host-face ((t (:inherit font-lock-warning-face))))
   `(erc-default-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(erc-direct-msg-face ((t (:inherit erc-default))))
   `(erc-error-face ((t (:inherit font-lock-warning-face))))
   `(erc-fool-face ((t (:inherit erc-default))))
   `(erc-highlight-face ((t (:inherit hover-highlight))))
   `(erc-input-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(erc-keyword-face ((t (:foreground ,higher-hc-zenburn-blue :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(erc-my-nick-face ((t (:foreground ,higher-hc-zenburn-red :weight bold))))
   `(erc-nick-msg-face ((t (:inherit erc-default))))
   `(erc-notice-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(erc-pal-face ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
   `(erc-prompt-face ((t (:foreground ,higher-hc-zenburn-orange :background ,higher-hc-zenburn-bg :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,higher-hc-zenburn-green+4))))
   `(erc-underline-face ((t (:underline t))))
;;;;; ert
   `(ert-test-result-expected ((t (:foreground ,higher-hc-zenburn-green+4 :background ,higher-hc-zenburn-bg))))
   `(ert-test-result-unexpected ((t (:foreground ,higher-hc-zenburn-red :background ,higher-hc-zenburn-bg))))
;;;;; eshell
   `(eshell-prompt ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(eshell-ls-archive ((t (:foreground ,higher-hc-zenburn-red-1 :weight bold))))
   `(eshell-ls-backup ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-clutter ((t (:inherit font-lock-comment-face))))
   `(eshell-ls-directory ((t (:foreground ,higher-hc-zenburn-blue+1 :weight bold))))
   `(eshell-ls-executable ((t (:foreground ,higher-hc-zenburn-red+1 :weight bold))))
   `(eshell-ls-unreadable ((t (:foreground ,higher-hc-zenburn-fg))))
   `(eshell-ls-missing ((t (:inherit font-lock-warning-face))))
   `(eshell-ls-product ((t (:inherit font-lock-doc-face))))
   `(eshell-ls-special ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(eshell-ls-symlink ((t (:foreground ,higher-hc-zenburn-cyan :weight bold))))
;;;;; flx
   `(flx-highlight-face ((t (:foreground ,higher-hc-zenburn-green+2 :weight bold))))
;;;;; flycheck
   `(flycheck-error
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-red-1) :inherit unspecified))
      (t (:foreground ,higher-hc-zenburn-red-1 :weight bold :underline t))))
   `(flycheck-warning
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-yellow) :inherit unspecified))
      (t (:foreground ,higher-hc-zenburn-yellow :weight bold :underline t))))
   `(flycheck-info
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-cyan) :inherit unspecified))
      (t (:foreground ,higher-hc-zenburn-cyan :weight bold :underline t))))
   `(flycheck-fringe-error ((t (:foreground ,higher-hc-zenburn-red-1 :weight bold))))
   `(flycheck-fringe-warning ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(flycheck-fringe-info ((t (:foreground ,higher-hc-zenburn-cyan :weight bold))))
;;;;; flymake
   `(flymake-errline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-red)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,higher-hc-zenburn-red-1 :weight bold :underline t))))
   `(flymake-warnline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-orange)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,higher-hc-zenburn-orange :weight bold :underline t))))
   `(flymake-infoline
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-green)
                   :inherit unspecified :foreground unspecified :background unspecified))
      (t (:foreground ,higher-hc-zenburn-green-1 :weight bold :underline t))))
;;;;; flyspell
   `(flyspell-duplicate
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-orange) :inherit unspecified))
      (t (:foreground ,higher-hc-zenburn-orange :weight bold :underline t))))
   `(flyspell-incorrect
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-red) :inherit unspecified))
      (t (:foreground ,higher-hc-zenburn-red-1 :weight bold :underline t))))
;;;;; full-ack
   `(ack-separator ((t (:foreground ,higher-hc-zenburn-fg))))
   `(ack-file ((t (:foreground ,higher-hc-zenburn-blue))))
   `(ack-line ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(ack-match ((t (:foreground ,higher-hc-zenburn-orange :background ,higher-hc-zenburn-bg-1 :weight bold))))
;;;;; git-gutter
   `(git-gutter:added ((t (:foreground ,higher-hc-zenburn-green :weight bold :inverse-video t))))
   `(git-gutter:deleted ((t (:foreground ,higher-hc-zenburn-red :weight bold :inverse-video t))))
   `(git-gutter:modified ((t (:foreground ,higher-hc-zenburn-magenta :weight bold :inverse-video t))))
   `(git-gutter:unchanged ((t (:foreground ,higher-hc-zenburn-fg :weight bold :inverse-video t))))
;;;;; git-gutter-fr
   `(git-gutter-fr:added ((t (:foreground ,higher-hc-zenburn-green  :weight bold))))
   `(git-gutter-fr:deleted ((t (:foreground ,higher-hc-zenburn-red :weight bold))))
   `(git-gutter-fr:modified ((t (:foreground ,higher-hc-zenburn-magenta :weight bold))))
;;;;; git-rebase-mode
   `(git-rebase-hash ((t (:foreground, higher-hc-zenburn-orange))))
;;;;; gnus
   `(gnus-group-mail-1 ((t (:bold t :inherit gnus-group-mail-1-empty))))
   `(gnus-group-mail-1-empty ((t (:inherit gnus-group-news-1-empty))))
   `(gnus-group-mail-2 ((t (:bold t :inherit gnus-group-mail-2-empty))))
   `(gnus-group-mail-2-empty ((t (:inherit gnus-group-news-2-empty))))
   `(gnus-group-mail-3 ((t (:bold t :inherit gnus-group-mail-3-empty))))
   `(gnus-group-mail-3-empty ((t (:inherit gnus-group-news-3-empty))))
   `(gnus-group-mail-4 ((t (:bold t :inherit gnus-group-mail-4-empty))))
   `(gnus-group-mail-4-empty ((t (:inherit gnus-group-news-4-empty))))
   `(gnus-group-mail-5 ((t (:bold t :inherit gnus-group-mail-5-empty))))
   `(gnus-group-mail-5-empty ((t (:inherit gnus-group-news-5-empty))))
   `(gnus-group-mail-6 ((t (:bold t :inherit gnus-group-mail-6-empty))))
   `(gnus-group-mail-6-empty ((t (:inherit gnus-group-news-6-empty))))
   `(gnus-group-mail-low ((t (:bold t :inherit gnus-group-mail-low-empty))))
   `(gnus-group-mail-low-empty ((t (:inherit gnus-group-news-low-empty))))
   `(gnus-group-news-1 ((t (:bold t :inherit gnus-group-news-1-empty))))
   `(gnus-group-news-2 ((t (:bold t :inherit gnus-group-news-2-empty))))
   `(gnus-group-news-3 ((t (:bold t :inherit gnus-group-news-3-empty))))
   `(gnus-group-news-4 ((t (:bold t :inherit gnus-group-news-4-empty))))
   `(gnus-group-news-5 ((t (:bold t :inherit gnus-group-news-5-empty))))
   `(gnus-group-news-6 ((t (:bold t :inherit gnus-group-news-6-empty))))
   `(gnus-group-news-low ((t (:bold t :inherit gnus-group-news-low-empty))))
   `(gnus-header-content ((t (:inherit message-header-other))))
   `(gnus-header-from ((t (:inherit message-header-from))))
   `(gnus-header-name ((t (:inherit message-header-name))))
   `(gnus-header-newsgroups ((t (:inherit message-header-other))))
   `(gnus-header-subject ((t (:inherit message-header-subject))))
   `(gnus-summary-cancelled ((t (:foreground ,higher-hc-zenburn-orange))))
   `(gnus-summary-high-ancient ((t (:foreground ,higher-hc-zenburn-blue))))
   `(gnus-summary-high-read ((t (:foreground ,higher-hc-zenburn-green :weight bold))))
   `(gnus-summary-high-ticked ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
   `(gnus-summary-high-unread ((t (:foreground ,higher-hc-zenburn-fg :weight bold))))
   `(gnus-summary-low-ancient ((t (:foreground ,higher-hc-zenburn-blue))))
   `(gnus-summary-low-read ((t (:foreground ,higher-hc-zenburn-green))))
   `(gnus-summary-low-ticked ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
   `(gnus-summary-low-unread ((t (:foreground ,higher-hc-zenburn-fg))))
   `(gnus-summary-normal-ancient ((t (:foreground ,higher-hc-zenburn-blue))))
   `(gnus-summary-normal-read ((t (:foreground ,higher-hc-zenburn-green))))
   `(gnus-summary-normal-ticked ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
   `(gnus-summary-normal-unread ((t (:foreground ,higher-hc-zenburn-fg))))
   `(gnus-summary-selected ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(gnus-cite-1 ((t (:foreground ,higher-hc-zenburn-blue))))
   `(gnus-cite-10 ((t (:foreground ,higher-hc-zenburn-yellow-1))))
   `(gnus-cite-11 ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(gnus-cite-2 ((t (:foreground ,higher-hc-zenburn-blue-1))))
   `(gnus-cite-3 ((t (:foreground ,higher-hc-zenburn-blue-2))))
   `(gnus-cite-4 ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(gnus-cite-5 ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(gnus-cite-6 ((t (:foreground ,higher-hc-zenburn-green))))
   `(gnus-cite-7 ((t (:foreground ,higher-hc-zenburn-red))))
   `(gnus-cite-8 ((t (:foreground ,higher-hc-zenburn-red-1))))
   `(gnus-cite-9 ((t (:foreground ,higher-hc-zenburn-red-2))))
   `(gnus-group-news-1-empty ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(gnus-group-news-2-empty ((t (:foreground ,higher-hc-zenburn-green+3))))
   `(gnus-group-news-3-empty ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(gnus-group-news-4-empty ((t (:foreground ,higher-hc-zenburn-blue-2))))
   `(gnus-group-news-5-empty ((t (:foreground ,higher-hc-zenburn-blue-3))))
   `(gnus-group-news-6-empty ((t (:foreground ,higher-hc-zenburn-bg+2))))
   `(gnus-group-news-low-empty ((t (:foreground ,higher-hc-zenburn-bg+2))))
   `(gnus-signature ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(gnus-x ((t (:background ,higher-hc-zenburn-fg :foreground ,higher-hc-zenburn-bg))))
;;;;; guide-key
   `(guide-key/highlight-command-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(guide-key/key-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(guide-key/prefix-command-face ((t (:foreground ,higher-hc-zenburn-green+1))))
;;;;; helm
   `(helm-header
     ((t (:foreground ,higher-hc-zenburn-green
                      :background ,higher-hc-zenburn-bg
                      :underline nil
                      :box nil))))
   `(helm-source-header
     ((t (:foreground ,higher-hc-zenburn-yellow
                      :background ,higher-hc-zenburn-bg-1
                      :underline nil
                      :weight bold
                      :box (:line-width -1 :style released-button)))))
   `(helm-selection ((t (:background ,higher-hc-zenburn-bg+1 :underline nil))))
   `(helm-selection-line ((t (:background ,higher-hc-zenburn-bg+1))))
   `(helm-visible-mark ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-yellow-2))))
   `(helm-candidate-number ((t (:foreground ,higher-hc-zenburn-green+4 :background ,higher-hc-zenburn-bg-1))))
   `(helm-separator ((t (:foreground ,higher-hc-zenburn-red :background ,higher-hc-zenburn-bg))))
   `(helm-time-zone-current ((t (:foreground ,higher-hc-zenburn-green+2 :background ,higher-hc-zenburn-bg))))
   `(helm-time-zone-home ((t (:foreground ,higher-hc-zenburn-red :background ,higher-hc-zenburn-bg))))
   `(helm-bookmark-addressbook ((t (:foreground ,higher-hc-zenburn-orange :background ,higher-hc-zenburn-bg))))
   `(helm-bookmark-directory ((t (:foreground nil :background nil :inherit helm-ff-directory))))
   `(helm-bookmark-file ((t (:foreground nil :background nil :inherit helm-ff-file))))
   `(helm-bookmark-gnus ((t (:foreground ,higher-hc-zenburn-magenta :background ,higher-hc-zenburn-bg))))
   `(helm-bookmark-info ((t (:foreground ,higher-hc-zenburn-green+2 :background ,higher-hc-zenburn-bg))))
   `(helm-bookmark-man ((t (:foreground ,higher-hc-zenburn-yellow :background ,higher-hc-zenburn-bg))))
   `(helm-bookmark-w3m ((t (:foreground ,higher-hc-zenburn-magenta :background ,higher-hc-zenburn-bg))))
   `(helm-buffer-not-saved ((t (:foreground ,higher-hc-zenburn-red :background ,higher-hc-zenburn-bg))))
   `(helm-buffer-process ((t (:foreground ,higher-hc-zenburn-cyan :background ,higher-hc-zenburn-bg))))
   `(helm-buffer-saved-out ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg))))
   `(helm-buffer-size ((t (:foreground ,higher-hc-zenburn-fg-1 :background ,higher-hc-zenburn-bg))))
   `(helm-ff-directory ((t (:foreground ,higher-hc-zenburn-cyan :background ,higher-hc-zenburn-bg :weight bold))))
   `(helm-ff-file ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg :weight normal))))
   `(helm-ff-executable ((t (:foreground ,higher-hc-zenburn-green+2 :background ,higher-hc-zenburn-bg :weight normal))))
   `(helm-ff-invalid-symlink ((t (:foreground ,higher-hc-zenburn-red :background ,higher-hc-zenburn-bg :weight bold))))
   `(helm-ff-symlink ((t (:foreground ,higher-hc-zenburn-yellow :background ,higher-hc-zenburn-bg :weight bold))))
   `(helm-ff-prefix ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-yellow :weight normal))))
   `(helm-grep-cmd-line ((t (:foreground ,higher-hc-zenburn-cyan :background ,higher-hc-zenburn-bg))))
   `(helm-grep-file ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg))))
   `(helm-grep-finish ((t (:foreground ,higher-hc-zenburn-green+2 :background ,higher-hc-zenburn-bg))))
   `(helm-grep-lineno ((t (:foreground ,higher-hc-zenburn-fg-1 :background ,higher-hc-zenburn-bg))))
   `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
   `(helm-grep-running ((t (:foreground ,higher-hc-zenburn-red :background ,higher-hc-zenburn-bg))))
   `(helm-moccur-buffer ((t (:foreground ,higher-hc-zenburn-cyan :background ,higher-hc-zenburn-bg))))
   `(helm-mu-contacts-address-face ((t (:foreground ,higher-hc-zenburn-fg-1 :background ,higher-hc-zenburn-bg))))
   `(helm-mu-contacts-name-face ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg))))
;;;;; hl-line-mode
   `(hl-line-face ((,class (:background ,higher-hc-zenburn-bg-05))
                   (t :weight bold)))
   `(hl-line ((,class (:background ,higher-hc-zenburn-bg-05)) ; old emacsen
              (t :weight bold)))
;;;;; hl-sexp
   `(hl-sexp-face ((,class (:background ,higher-hc-zenburn-bg+1))
                   (t :weight bold)))
;;;;; ido-mode
   `(ido-first-match ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(ido-only-match ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
   `(ido-subdir ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(ido-indicator ((t (:foreground ,higher-hc-zenburn-yellow :background ,higher-hc-zenburn-red-4))))
;;;;; iedit-mode
   `(iedit-occurrence ((t (:background ,higher-hc-zenburn-bg+2 :weight bold))))
;;;;; jabber-mode
   `(jabber-roster-user-away ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(jabber-roster-user-online ((t (:foreground ,higher-hc-zenburn-blue-1))))
   `(jabber-roster-user-dnd ((t (:foreground ,higher-hc-zenburn-red+1))))
   `(jabber-rare-time-face ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(jabber-chat-prompt-local ((t (:foreground ,higher-hc-zenburn-blue-1))))
   `(jabber-chat-prompt-foreign ((t (:foreground ,higher-hc-zenburn-red+1))))
   `(jabber-activity-face((t (:foreground ,higher-hc-zenburn-red+1))))
   `(jabber-activity-personal-face ((t (:foreground ,higher-hc-zenburn-blue+1))))
   `(jabber-title-small ((t (:height 1.1 :weight bold))))
   `(jabber-title-medium ((t (:height 1.2 :weight bold))))
   `(jabber-title-large ((t (:height 1.3 :weight bold))))
;;;;; js2-mode
   `(js2-warning ((t (:underline ,higher-hc-zenburn-orange))))
   `(js2-error ((t (:foreground ,higher-hc-zenburn-red :weight bold))))
   `(js2-jsdoc-tag ((t (:foreground ,higher-hc-zenburn-green-1))))
   `(js2-jsdoc-type ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(js2-jsdoc-value ((t (:foreground ,higher-hc-zenburn-green+3))))
   `(js2-function-param ((t (:foreground, higher-hc-zenburn-green+3))))
   `(js2-external-variable ((t (:foreground ,higher-hc-zenburn-orange))))
;;;;; ledger-mode
   `(ledger-font-payee-uncleared-face ((t (:foreground ,higher-hc-zenburn-red-1 :weight bold))))
   `(ledger-font-payee-cleared-face ((t (:foreground ,higher-hc-zenburn-fg :weight normal))))
   `(ledger-font-xact-highlight-face ((t (:background ,higher-hc-zenburn-bg+1))))
   `(ledger-font-pending-face ((t (:foreground ,higher-hc-zenburn-orange weight: normal))))
   `(ledger-font-other-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(ledger-font-posting-account-face ((t (:foreground ,higher-hc-zenburn-blue-1))))
   `(ledger-font-posting-account-cleared-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(ledger-font-posting-account-pending-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(ledger-font-posting-amount-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(ledger-font-posting-account-pending-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(ledger-occur-narrowed-face ((t (:foreground ,higher-hc-zenburn-fg-1 :invisible t))))
   `(ledger-occur-xact-face ((t (:background ,higher-hc-zenburn-bg+1))))
   `(ledger-font-comment-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(ledger-font-reconciler-uncleared-face ((t (:foreground ,higher-hc-zenburn-red-1 :weight bold))))
   `(ledger-font-reconciler-cleared-face ((t (:foreground ,higher-hc-zenburn-fg :weight normal))))
   `(ledger-font-reconciler-pending-face ((t (:foreground ,higher-hc-zenburn-orange :weight normal))))
   `(ledger-font-report-clickable-face ((t (:foreground ,higher-hc-zenburn-orange :weight normal))))
;;;;; linum-mode
   `(linum ((t (:foreground ,higher-hc-zenburn-green+2 :background ,higher-hc-zenburn-bg))))
;;;;; macrostep
   `(macrostep-gensym-1
     ((t (:foreground ,higher-hc-zenburn-green+2 :background ,higher-hc-zenburn-bg-1))))
   `(macrostep-gensym-2
     ((t (:foreground ,higher-hc-zenburn-red+1 :background ,higher-hc-zenburn-bg-1))))
   `(macrostep-gensym-3
     ((t (:foreground ,higher-hc-zenburn-blue+1 :background ,higher-hc-zenburn-bg-1))))
   `(macrostep-gensym-4
     ((t (:foreground ,higher-hc-zenburn-magenta :background ,higher-hc-zenburn-bg-1))))
   `(macrostep-gensym-5
     ((t (:foreground ,higher-hc-zenburn-yellow :background ,higher-hc-zenburn-bg-1))))
   `(macrostep-expansion-highlight-face
     ((t (:inherit highlight))))
   `(macrostep-macro-face
     ((t (:underline t))))
;;;;; magit
   `(magit-item-highlight ((t (:background ,higher-hc-zenburn-bg+05))))
   `(magit-section-title ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(magit-process-ok ((t (:foreground ,higher-hc-zenburn-green :weight bold))))
   `(magit-process-ng ((t (:foreground ,higher-hc-zenburn-red :weight bold))))
   `(magit-branch ((t (:foreground ,higher-hc-zenburn-blue :weight bold))))
   `(magit-log-author ((t (:foreground ,higher-hc-zenburn-orange))))
   `(magit-log-sha1 ((t (:foreground, higher-hc-zenburn-orange))))
;;;;; message-mode
   `(message-cited-text ((t (:inherit font-lock-comment-face))))
   `(message-header-name ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(message-header-other ((t (:foreground ,higher-hc-zenburn-green))))
   `(message-header-to ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(message-header-from ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(message-header-cc ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(message-header-newsgroups ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(message-header-subject ((t (:foreground ,higher-hc-zenburn-orange :weight bold))))
   `(message-header-xheader ((t (:foreground ,higher-hc-zenburn-green))))
   `(message-mml ((t (:foreground ,higher-hc-zenburn-yellow :weight bold))))
   `(message-separator ((t (:inherit font-lock-comment-face))))
;;;;; mew
   `(mew-face-header-subject ((t (:foreground ,higher-hc-zenburn-orange))))
   `(mew-face-header-from ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(mew-face-header-date ((t (:foreground ,higher-hc-zenburn-green))))
   `(mew-face-header-to ((t (:foreground ,higher-hc-zenburn-red))))
   `(mew-face-header-key ((t (:foreground ,higher-hc-zenburn-green))))
   `(mew-face-header-private ((t (:foreground ,higher-hc-zenburn-green))))
   `(mew-face-header-important ((t (:foreground ,higher-hc-zenburn-blue))))
   `(mew-face-header-marginal ((t (:foreground ,higher-hc-zenburn-fg :weight bold))))
   `(mew-face-header-warning ((t (:foreground ,higher-hc-zenburn-red))))
   `(mew-face-header-xmew ((t (:foreground ,higher-hc-zenburn-green))))
   `(mew-face-header-xmew-bad ((t (:foreground ,higher-hc-zenburn-red))))
   `(mew-face-body-url ((t (:foreground ,higher-hc-zenburn-orange))))
   `(mew-face-body-comment ((t (:foreground ,higher-hc-zenburn-fg :slant italic))))
   `(mew-face-body-cite1 ((t (:foreground ,higher-hc-zenburn-green))))
   `(mew-face-body-cite2 ((t (:foreground ,higher-hc-zenburn-blue))))
   `(mew-face-body-cite3 ((t (:foreground ,higher-hc-zenburn-orange))))
   `(mew-face-body-cite4 ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(mew-face-body-cite5 ((t (:foreground ,higher-hc-zenburn-red))))
   `(mew-face-mark-review ((t (:foreground ,higher-hc-zenburn-blue))))
   `(mew-face-mark-escape ((t (:foreground ,higher-hc-zenburn-green))))
   `(mew-face-mark-delete ((t (:foreground ,higher-hc-zenburn-red))))
   `(mew-face-mark-unlink ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(mew-face-mark-refile ((t (:foreground ,higher-hc-zenburn-green))))
   `(mew-face-mark-unread ((t (:foreground ,higher-hc-zenburn-red-2))))
   `(mew-face-eof-message ((t (:foreground ,higher-hc-zenburn-green))))
   `(mew-face-eof-part ((t (:foreground ,higher-hc-zenburn-yellow))))
;;;;; mic-paren
   `(paren-face-match ((t (:foreground ,higher-hc-zenburn-cyan :background ,higher-hc-zenburn-bg :weight bold))))
   `(paren-face-mismatch ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-magenta :weight bold))))
   `(paren-face-no-match ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-red :weight bold))))
;;;;; mingus
   `(mingus-directory-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(mingus-pausing-face ((t (:foreground ,higher-hc-zenburn-magenta))))
   `(mingus-playing-face ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(mingus-playlist-face ((t (:foreground ,higher-hc-zenburn-cyan ))))
   `(mingus-song-file-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(mingus-stopped-face ((t (:foreground ,higher-hc-zenburn-red))))
;;;;; nav
   `(nav-face-heading ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(nav-face-button-num ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(nav-face-dir ((t (:foreground ,higher-hc-zenburn-green))))
   `(nav-face-hdir ((t (:foreground ,higher-hc-zenburn-red))))
   `(nav-face-file ((t (:foreground ,higher-hc-zenburn-fg))))
   `(nav-face-hfile ((t (:foreground ,higher-hc-zenburn-red-4))))
;;;;; mu4e
   `(mu4e-cited-1-face ((t (:foreground ,higher-hc-zenburn-blue    :slant italic))))
   `(mu4e-cited-2-face ((t (:foreground ,higher-hc-zenburn-green+2 :slant italic))))
   `(mu4e-cited-3-face ((t (:foreground ,higher-hc-zenburn-blue-2  :slant italic))))
   `(mu4e-cited-4-face ((t (:foreground ,higher-hc-zenburn-green   :slant italic))))
   `(mu4e-cited-5-face ((t (:foreground ,higher-hc-zenburn-blue-4  :slant italic))))
   `(mu4e-cited-6-face ((t (:foreground ,higher-hc-zenburn-green-1 :slant italic))))
   `(mu4e-cited-7-face ((t (:foreground ,higher-hc-zenburn-blue    :slant italic))))
   `(mu4e-replied-face ((t (:foreground ,higher-hc-zenburn-bg+3))))
   `(mu4e-trashed-face ((t (:foreground ,higher-hc-zenburn-bg+3 :strike-through t))))
;;;;; mumamo
   `(mumamo-background-chunk-major ((t (:background nil))))
   `(mumamo-background-chunk-submode1 ((t (:background ,higher-hc-zenburn-bg-1))))
   `(mumamo-background-chunk-submode2 ((t (:background ,higher-hc-zenburn-bg+2))))
   `(mumamo-background-chunk-submode3 ((t (:background ,higher-hc-zenburn-bg+3))))
   `(mumamo-background-chunk-submode4 ((t (:background ,higher-hc-zenburn-bg+1))))
;;;;; org-mode
   `(org-agenda-date-today
     ((t (:foreground ,higher-hc-zenburn-fg+1 :slant italic :weight bold))) t)
   `(org-agenda-structure
     ((t (:inherit font-lock-comment-face))))
   `(org-archived ((t (:foreground ,higher-hc-zenburn-fg :weight bold))))
   `(org-checkbox ((t (:background ,higher-hc-zenburn-bg+2 :foreground ,higher-hc-zenburn-fg+1
                                   :box (:line-width 1 :style released-button)))))
   `(org-date ((t (:foreground ,higher-hc-zenburn-blue :underline t))))
   `(org-deadline-announce ((t (:foreground ,higher-hc-zenburn-red-1))))
   `(org-done ((t (:bold t :weight bold :foreground ,higher-hc-zenburn-green+3))))
   `(org-formula ((t (:foreground ,higher-hc-zenburn-yellow-2))))
   `(org-headline-done ((t (:foreground ,higher-hc-zenburn-green+3))))
   `(org-hide ((t (:foreground ,higher-hc-zenburn-bg-1))))
   `(org-level-1 ((t (:foreground ,higher-hc-zenburn-orange))))
   `(org-level-2 ((t (:foreground ,higher-hc-zenburn-green+4))))
   `(org-level-3 ((t (:foreground ,higher-hc-zenburn-blue-1))))
   `(org-level-4 ((t (:foreground ,higher-hc-zenburn-yellow-2))))
   `(org-level-5 ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(org-level-6 ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(org-level-7 ((t (:foreground ,higher-hc-zenburn-red-4))))
   `(org-level-8 ((t (:foreground ,higher-hc-zenburn-blue-4))))
   `(org-link ((t (:foreground ,higher-hc-zenburn-yellow-2 :underline t))))
   `(org-scheduled ((t (:foreground ,higher-hc-zenburn-green+4))))
   `(org-scheduled-previously ((t (:foreground ,higher-hc-zenburn-red))))
   `(org-scheduled-today ((t (:foreground ,higher-hc-zenburn-blue+1))))
   `(org-sexp-date ((t (:foreground ,higher-hc-zenburn-blue+1 :underline t))))
   `(org-special-keyword ((t (:inherit font-lock-comment-face))))
   `(org-table ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(org-tag ((t (:bold t :weight bold))))
   `(org-time-grid ((t (:foreground ,higher-hc-zenburn-orange))))
   `(org-todo ((t (:bold t :foreground ,higher-hc-zenburn-red :weight bold))))
   `(org-upcoming-deadline ((t (:inherit font-lock-keyword-face))))
   `(org-warning ((t (:bold t :foreground ,higher-hc-zenburn-red :weight bold :underline nil))))
   `(org-column ((t (:background ,higher-hc-zenburn-bg-1))))
   `(org-column-title ((t (:background ,higher-hc-zenburn-bg-1 :underline t :weight bold))))
   `(org-mode-line-clock ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg-1))))
   `(org-mode-line-clock-overrun ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-red-1))))
   `(org-ellipsis ((t (:foreground ,higher-hc-zenburn-yellow-1 :underline t))))
   `(org-footnote ((t (:foreground ,higher-hc-zenburn-cyan :underline t))))
;;;;; outline
   `(outline-1 ((t (:foreground ,higher-hc-zenburn-orange))))
   `(outline-2 ((t (:foreground ,higher-hc-zenburn-green+4))))
   `(outline-3 ((t (:foreground ,higher-hc-zenburn-blue-1))))
   `(outline-4 ((t (:foreground ,higher-hc-zenburn-yellow-2))))
   `(outline-5 ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(outline-6 ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(outline-7 ((t (:foreground ,higher-hc-zenburn-red-4))))
   `(outline-8 ((t (:foreground ,higher-hc-zenburn-blue-4))))
;;;;; p4
   `(p4-depot-added-face ((t :inherit diff-added)))
   `(p4-depot-branch-op-face ((t :inherit diff-changed)))
   `(p4-depot-deleted-face ((t :inherit diff-removed)))
   `(p4-depot-unmapped-face ((t :inherit diff-changed)))
   `(p4-diff-change-face ((t :inherit diff-changed)))
   `(p4-diff-del-face ((t :inherit diff-removed)))
   `(p4-diff-file-face ((t :inherit diff-file-header)))
   `(p4-diff-head-face ((t :inherit diff-header)))
   `(p4-diff-ins-face ((t :inherit diff-added)))
;;;;; perspective
   `(persp-selected-face ((t (:foreground ,higher-hc-zenburn-yellow-2 :inherit mode-line))))
;;;;; powerline
   `(powerline-active1 ((t (:background ,higher-hc-zenburn-bg-05 :inherit mode-line))))
   `(powerline-active2 ((t (:background ,higher-hc-zenburn-bg+2 :inherit mode-line))))
   `(powerline-inactive1 ((t (:background ,higher-hc-zenburn-bg+1 :inherit mode-line-inactive))))
   `(powerline-inactive2 ((t (:background ,higher-hc-zenburn-bg+3 :inherit mode-line-inactive))))
;;;;; proofgeneral
   `(proof-active-area-face ((t (:underline t))))
   `(proof-boring-face ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-bg+2))))
   `(proof-command-mouse-highlight-face ((t (:inherit proof-mouse-highlight-face))))
   `(proof-debug-message-face ((t (:inherit proof-boring-face))))
   `(proof-declaration-name-face ((t (:inherit font-lock-keyword-face :foreground nil))))
   `(proof-eager-annotation-face ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-orange))))
   `(proof-error-face ((t (:foreground ,higher-hc-zenburn-fg :background ,higher-hc-zenburn-red-4))))
   `(proof-highlight-dependency-face ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-yellow-1))))
   `(proof-highlight-dependent-face ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-orange))))
   `(proof-locked-face ((t (:background ,higher-hc-zenburn-blue-5))))
   `(proof-mouse-highlight-face ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-orange))))
   `(proof-queue-face ((t (:background ,higher-hc-zenburn-red-4))))
   `(proof-region-mouse-highlight-face ((t (:inherit proof-mouse-highlight-face))))
   `(proof-script-highlight-error-face ((t (:background ,higher-hc-zenburn-red-2))))
   `(proof-tacticals-name-face ((t (:inherit font-lock-constant-face :foreground nil :background ,higher-hc-zenburn-bg))))
   `(proof-tactics-name-face ((t (:inherit font-lock-constant-face :foreground nil :background ,higher-hc-zenburn-bg))))
   `(proof-warning-face ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-yellow-1))))
;;;;; rainbow-delimiters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,higher-hc-zenburn-green+4))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,higher-hc-zenburn-yellow-2))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,higher-hc-zenburn-blue+1))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,higher-hc-zenburn-yellow-1))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,higher-hc-zenburn-blue-2))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,higher-hc-zenburn-blue-5))))
;;;;; rcirc
   `(rcirc-my-nick ((t (:foreground ,higher-hc-zenburn-blue))))
   `(rcirc-other-nick ((t (:foreground ,higher-hc-zenburn-orange))))
   `(rcirc-bright-nick ((t (:foreground ,higher-hc-zenburn-blue+1))))
   `(rcirc-dim-nick ((t (:foreground ,higher-hc-zenburn-blue-2))))
   `(rcirc-server ((t (:foreground ,higher-hc-zenburn-green))))
   `(rcirc-server-prefix ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(rcirc-timestamp ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(rcirc-nick-in-message ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(rcirc-nick-in-message-full-line ((t (:bold t))))
   `(rcirc-prompt ((t (:foreground ,higher-hc-zenburn-yellow :bold t))))
   `(rcirc-track-nick ((t (:inverse-video t))))
   `(rcirc-track-keyword ((t (:bold t))))
   `(rcirc-url ((t (:bold t))))
   `(rcirc-keyword ((t (:foreground ,higher-hc-zenburn-yellow :bold t))))
;;;;; rpm-mode
   `(rpm-spec-dir-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(rpm-spec-doc-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(rpm-spec-ghost-face ((t (:foreground ,higher-hc-zenburn-red))))
   `(rpm-spec-macro-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(rpm-spec-obsolete-tag-face ((t (:foreground ,higher-hc-zenburn-red))))
   `(rpm-spec-package-face ((t (:foreground ,higher-hc-zenburn-red))))
   `(rpm-spec-section-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(rpm-spec-tag-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(rpm-spec-var-face ((t (:foreground ,higher-hc-zenburn-red))))
;;;;; rst-mode
   `(rst-level-1-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(rst-level-2-face ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(rst-level-3-face ((t (:foreground ,higher-hc-zenburn-blue-1))))
   `(rst-level-4-face ((t (:foreground ,higher-hc-zenburn-yellow-2))))
   `(rst-level-5-face ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(rst-level-6-face ((t (:foreground ,higher-hc-zenburn-green-1))))
;;;;; sh-mode
   `(sh-heredoc     ((t (:foreground ,higher-hc-zenburn-yellow :bold t))))
   `(sh-quoted-exec ((t (:foreground ,higher-hc-zenburn-red))))
;;;;; show-paren
   `(show-paren-mismatch ((t (:foreground ,higher-hc-zenburn-red+1 :background ,higher-hc-zenburn-bg+3 :weight bold))))
   `(show-paren-match ((t (:background ,higher-hc-zenburn-bg+3 :weight bold))))
;;;;; smartparens
   `(sp-show-pair-mismatch-face ((t (:foreground ,higher-hc-zenburn-red+1 :background ,higher-hc-zenburn-bg+3 :weight bold))))
   `(sp-show-pair-match-face ((t (:background ,higher-hc-zenburn-bg+3 :weight bold))))
;;;;; sml-mode-line
   '(sml-modeline-end-face ((t :inherit default :width condensed)))
;;;;; SLIME
   `(slime-repl-output-face ((t (:foreground ,higher-hc-zenburn-red))))
   `(slime-repl-inputed-output-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(slime-error-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-red)))
      (t
       (:underline ,higher-hc-zenburn-red))))
   `(slime-warning-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-orange)))
      (t
       (:underline ,higher-hc-zenburn-orange))))
   `(slime-style-warning-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-yellow)))
      (t
       (:underline ,higher-hc-zenburn-yellow))))
   `(slime-note-face
     ((((supports :underline (:style wave)))
       (:underline (:style wave :color ,higher-hc-zenburn-green)))
      (t
       (:underline ,higher-hc-zenburn-green))))
   `(slime-highlight-face ((t (:inherit highlight))))
;;;;; speedbar
   `(speedbar-button-face ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(speedbar-directory-face ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(speedbar-file-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(speedbar-highlight-face ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-green+2))))
   `(speedbar-selected-face ((t (:foreground ,higher-hc-zenburn-red))))
   `(speedbar-separator-face ((t (:foreground ,higher-hc-zenburn-bg :background ,higher-hc-zenburn-blue-1))))
   `(speedbar-tag-face ((t (:foreground ,higher-hc-zenburn-yellow))))
;;;;; tabbar
   `(tabbar-button ((t (:foreground ,higher-hc-zenburn-fg
                                    :background ,higher-hc-zenburn-bg))))
   `(tabbar-selected ((t (:foreground ,higher-hc-zenburn-fg
                                      :background ,higher-hc-zenburn-bg
                                      :box (:line-width -1 :style pressed-button)))))
   `(tabbar-unselected ((t (:foreground ,higher-hc-zenburn-fg
                                        :background ,higher-hc-zenburn-bg+1
                                        :box (:line-width -1 :style released-button)))))
;;;;; term
   `(term-color-black ((t (:foreground ,higher-hc-zenburn-bg
                                       :background ,higher-hc-zenburn-bg-1))))
   `(term-color-red ((t (:foreground ,higher-hc-zenburn-red-2
                                       :background ,higher-hc-zenburn-red-4))))
   `(term-color-green ((t (:foreground ,higher-hc-zenburn-green
                                       :background ,higher-hc-zenburn-green+2))))
   `(term-color-yellow ((t (:foreground ,higher-hc-zenburn-orange
                                       :background ,higher-hc-zenburn-yellow))))
   `(term-color-blue ((t (:foreground ,higher-hc-zenburn-blue-1
                                      :background ,higher-hc-zenburn-blue-4))))
   `(term-color-magenta ((t (:foreground ,higher-hc-zenburn-magenta
                                         :background ,higher-hc-zenburn-red))))
   `(term-color-cyan ((t (:foreground ,higher-hc-zenburn-cyan
                                       :background ,higher-hc-zenburn-blue))))
   `(term-color-white ((t (:foreground ,higher-hc-zenburn-fg
                                       :background ,higher-hc-zenburn-fg-1))))
   '(term-default-fg-color ((t (:inherit term-color-white))))
   '(term-default-bg-color ((t (:inherit term-color-black))))
;;;;; undo-tree
   `(undo-tree-visualizer-active-branch-face ((t (:foreground ,higher-hc-zenburn-fg+1 :weight bold))))
   `(undo-tree-visualizer-current-face ((t (:foreground ,higher-hc-zenburn-red-1 :weight bold))))
   `(undo-tree-visualizer-default-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(undo-tree-visualizer-register-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(undo-tree-visualizer-unmodified-face ((t (:foreground ,higher-hc-zenburn-cyan))))
;;;;; volatile-highlights
   `(vhl/default-face ((t (:background ,higher-hc-zenburn-bg-05))))
;;;;; web-mode
   `(web-mode-builtin-face ((t (:inherit ,font-lock-builtin-face))))
   `(web-mode-comment-face ((t (:inherit ,font-lock-comment-face))))
   `(web-mode-constant-face ((t (:inherit ,font-lock-constant-face))))
   `(web-mode-css-at-rule-face ((t (:foreground ,higher-hc-zenburn-orange ))))
   `(web-mode-css-prop-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(web-mode-css-pseudo-class-face ((t (:foreground ,higher-hc-zenburn-green+3 :weight bold))))
   `(web-mode-css-rule-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(web-mode-doctype-face ((t (:inherit ,font-lock-comment-face))))
   `(web-mode-folded-face ((t (:underline t))))
   `(web-mode-function-name-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(web-mode-html-attr-name-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(web-mode-html-attr-value-face ((t (:inherit ,font-lock-string-face))))
   `(web-mode-html-tag-face ((t (:foreground ,higher-hc-zenburn-cyan))))
   `(web-mode-keyword-face ((t (:inherit ,font-lock-keyword-face))))
   `(web-mode-preprocessor-face ((t (:inherit ,font-lock-preprocessor-face))))
   `(web-mode-string-face ((t (:inherit ,font-lock-string-face))))
   `(web-mode-type-face ((t (:inherit ,font-lock-type-face))))
   `(web-mode-variable-name-face ((t (:inherit ,font-lock-variable-name-face))))
   `(web-mode-server-background-face ((t (:background ,higher-hc-zenburn-bg))))
   `(web-mode-server-comment-face ((t (:inherit web-mode-comment-face))))
   `(web-mode-server-string-face ((t (:inherit web-mode-string-face))))
   `(web-mode-symbol-face ((t (:inherit font-lock-constant-face))))
   `(web-mode-warning-face ((t (:inherit font-lock-warning-face))))
   `(web-mode-whitespaces-face ((t (:background ,higher-hc-zenburn-red))))
;;;;; whitespace-mode
   `(whitespace-space ((t (:background ,higher-hc-zenburn-bg+1 :foreground ,higher-hc-zenburn-bg+1))))
   `(whitespace-hspace ((t (:background ,higher-hc-zenburn-bg+1 :foreground ,higher-hc-zenburn-bg+1))))
   `(whitespace-tab ((t (:background ,higher-hc-zenburn-red-1))))
   `(whitespace-newline ((t (:foreground ,higher-hc-zenburn-bg+1))))
   `(whitespace-trailing ((t (:background ,higher-hc-zenburn-red))))
   `(whitespace-line ((t (:background ,higher-hc-zenburn-bg :foreground ,higher-hc-zenburn-magenta))))
   `(whitespace-space-before-tab ((t (:background ,higher-hc-zenburn-orange :foreground ,higher-hc-zenburn-orange))))
   `(whitespace-indentation ((t (:background ,higher-hc-zenburn-yellow :foreground ,higher-hc-zenburn-red))))
   `(whitespace-empty ((t (:background ,higher-hc-zenburn-yellow))))
   `(whitespace-space-after-tab ((t (:background ,higher-hc-zenburn-yellow :foreground ,higher-hc-zenburn-red))))
;;;;; wanderlust
   `(wl-highlight-folder-few-face ((t (:foreground ,higher-hc-zenburn-red-2))))
   `(wl-highlight-folder-many-face ((t (:foreground ,higher-hc-zenburn-red-1))))
   `(wl-highlight-folder-path-face ((t (:foreground ,higher-hc-zenburn-orange))))
   `(wl-highlight-folder-unread-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(wl-highlight-folder-zero-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(wl-highlight-folder-unknown-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(wl-highlight-message-citation-header ((t (:foreground ,higher-hc-zenburn-red-1))))
   `(wl-highlight-message-cited-text-1 ((t (:foreground ,higher-hc-zenburn-red))))
   `(wl-highlight-message-cited-text-2 ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(wl-highlight-message-cited-text-3 ((t (:foreground ,higher-hc-zenburn-blue))))
   `(wl-highlight-message-cited-text-4 ((t (:foreground ,higher-hc-zenburn-blue+1))))
   `(wl-highlight-message-header-contents-face ((t (:foreground ,higher-hc-zenburn-green))))
   `(wl-highlight-message-headers-face ((t (:foreground ,higher-hc-zenburn-red+1))))
   `(wl-highlight-message-important-header-contents ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(wl-highlight-message-header-contents ((t (:foreground ,higher-hc-zenburn-green+1))))
   `(wl-highlight-message-important-header-contents2 ((t (:foreground ,higher-hc-zenburn-green+2))))
   `(wl-highlight-message-signature ((t (:foreground ,higher-hc-zenburn-green))))
   `(wl-highlight-message-unimportant-header-contents ((t (:foreground ,higher-hc-zenburn-fg))))
   `(wl-highlight-summary-answered-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(wl-highlight-summary-disposed-face ((t (:foreground ,higher-hc-zenburn-fg
                                                         :slant italic))))
   `(wl-highlight-summary-new-face ((t (:foreground ,higher-hc-zenburn-blue))))
   `(wl-highlight-summary-normal-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(wl-highlight-summary-thread-top-face ((t (:foreground ,higher-hc-zenburn-yellow))))
   `(wl-highlight-thread-indent-face ((t (:foreground ,higher-hc-zenburn-magenta))))
   `(wl-highlight-summary-refiled-face ((t (:foreground ,higher-hc-zenburn-fg))))
   `(wl-highlight-summary-displaying-face ((t (:underline t :weight bold))))
;;;;; which-func-mode
   `(which-func ((t (:foreground ,higher-hc-zenburn-green+4))))
;;;;; yascroll
   `(yascroll:thumb-text-area ((t (:background ,higher-hc-zenburn-bg-1))))
   `(yascroll:thumb-fringe ((t (:background ,higher-hc-zenburn-bg-1 :foreground ,higher-hc-zenburn-bg-1))))
   ))

;;; Theme Variables
(higher-hc-zenburn-with-color-variables
  (custom-theme-set-variables
   'higher-hc-zenburn
;;;;; ansi-color
   `(ansi-color-names-vector [,higher-hc-zenburn-bg ,higher-hc-zenburn-red ,higher-hc-zenburn-green ,higher-hc-zenburn-yellow
                                          ,higher-hc-zenburn-blue ,higher-hc-zenburn-magenta ,higher-hc-zenburn-cyan ,higher-hc-zenburn-fg])
;;;;; fill-column-indicator
   `(fci-rule-color ,higher-hc-zenburn-bg-05)
;;;;; vc-annotate
   `(vc-annotate-color-map
     '(( 20. . ,higher-hc-zenburn-red-1)
       ( 40. . ,higher-hc-zenburn-red)
       ( 60. . ,higher-hc-zenburn-orange)
       ( 80. . ,higher-hc-zenburn-yellow-2)
       (100. . ,higher-hc-zenburn-yellow-1)
       (120. . ,higher-hc-zenburn-yellow)
       (140. . ,higher-hc-zenburn-green-1)
       (160. . ,higher-hc-zenburn-green)
       (180. . ,higher-hc-zenburn-green+1)
       (200. . ,higher-hc-zenburn-green+2)
       (220. . ,higher-hc-zenburn-green+3)
       (240. . ,higher-hc-zenburn-green+4)
       (260. . ,higher-hc-zenburn-cyan)
       (280. . ,higher-hc-zenburn-blue-2)
       (300. . ,higher-hc-zenburn-blue-1)
       (320. . ,higher-hc-zenburn-blue)
       (340. . ,higher-hc-zenburn-blue+1)
       (360. . ,higher-hc-zenburn-magenta)))
   `(vc-annotate-very-old-color ,higher-hc-zenburn-magenta)
   `(vc-annotate-background ,higher-hc-zenburn-bg-1)
   ))

;;; Rainbow Support

(declare-function rainbow-mode 'rainbow-mode)
(declare-function rainbow-colorize-by-assoc 'rainbow-mode)

(defvar higher-hc-zenburn-add-font-lock-keywords nil
  "Whether to add font-lock keywords for higher-hc-zenburn color names.
In buffers visiting library `higher-hc-zenburn-theme.el' the higher-hc-zenburn
specific keywords are always added.  In all other Emacs-Lisp
buffers this variable controls whether this should be done.
This requires library `rainbow-mode'.")

(defvar higher-hc-zenburn-colors-font-lock-keywords nil)

;; (defadvice rainbow-turn-on (after higher-hc-zenburn activate)
;;   "Maybe also add font-lock keywords for higher-hc-zenburn colors."
;;   (when (and (derived-mode-p 'emacs-lisp-mode)
;;              (or higher-hc-zenburn-add-font-lock-keywords
;;                  (equal (file-name-nondirectory (buffer-file-name))
;;                         "higher-hc-zenburn-theme.el")))
;;     (unless higher-hc-zenburn-colors-font-lock-keywords
;;       (setq higher-hc-zenburn-colors-font-lock-keywords
;;             `((,(regexp-opt (mapcar 'car higher-hc-zenburn-colors-alist) 'words)
;;                (0 (rainbow-colorize-by-assoc higher-hc-zenburn-colors-alist))))))
;;     (font-lock-add-keywords nil higher-hc-zenburn-colors-font-lock-keywords)))

;; (defadvice rainbow-turn-off (after higher-hc-zenburn activate)
;;   "Also remove font-lock keywords for higher-hc-zenburn colors."
;;   (font-lock-remove-keywords nil higher-hc-zenburn-colors-font-lock-keywords))

;;; Footer

;;;###autoload
(and load-file-name
     (boundp 'custom-theme-load-path)
     (add-to-list 'custom-theme-load-path
                  (file-name-as-directory
                   (file-name-directory load-file-name))))

(provide-theme 'higher-hc-zenburn)

;;;###autoload
(add-to-list 'safe-local-eval-forms
             '(when (require 'rainbow-mode nil t) (rainbow-mode 1)))

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; eval: (when (require 'rainbow-mode nil t) (rainbow-mode 1))
;; End:
;;; higher-hc-zenburn-theme.el ends here
