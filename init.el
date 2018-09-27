(package-initialize)
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("melpa" . "http://melpa.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))

(setq inhibit-startup-message t)

;; Colortheme
(load-theme 'monokai t)

;;; Editor configurations
;; No backup, no autosave
(setq make-backup-files nil)
(setq delete-auto-save-files t)

;; No menu bar in terminal mode
(if (eq window-system 'x)
    (menu-bar-mode 1) (menu-bar-mode 0))

;; Display line number
(require 'linum)
(global-linum-mode 1)
(setq linum-format "%4d ")

;; Backspace with "C-h"
(global-set-key (kbd "C-h") 'delete-backward-char)

(setq default-tab-width 4)

(blink-cursor-mode 0)
(show-paren-mode 1)
