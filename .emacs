

(setq auto-mode-alist (cons '("\.lua$" . lua-mode) auto-mode-alist))
    (autoload 'lua-mode "lua-mode" "Lua editing mode." t)








(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(column-number-mode t)
 '(custom-enabled-themes (quote (deeper-blue)))
 '(safe-local-variable-values (quote ((Encoding . utf-8))))
 '(size-indication-mode t)
 ;; '(tool-bar-mode t)
 '(tool-bar-position (quote top))
 '(tooltip-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#1C3623" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 86 :width normal :foundry "unknown" :family "Liberation Mono")))))


(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)


(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

