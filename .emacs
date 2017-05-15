(setq emacs-lisp-dir "~/.emacs.d/"
      my-elmode-dir (concat emacs-lisp-dir "elmodes/"))
(setq load-path
      (append load-path (list my-elmode-dir)))

(add-to-list 'load-path "~/.emacs.d/epitech")

(load "std.el")
(load "std_comment.el")
(if (file-exists-p "~/.myemacs") 
    (load-file "~/.myemacs"))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;                                                                                                                                                                         

;; Suppression des espaces en fin de ligne a l'enregistrement                                                                                                                                                       
(add-hook 'before-save-hook 'whitespace-cleanup)

;; Pour éviter le temps d'attente au démarrage...                                                                                                                                                                   
(modify-frame-parameters nil '((wait-for-wm . nil)) )

;; ...et enlever le message d'accueil                                                                                                                                                                               
(setq inhibit-startup-message t)

;; affiche les espaces inutile                                                                                                                                                                                      
(setq-default show-trailing-whitespace t)

;; Affiche la parenthese correspondante                                                                                                                                                                             
(show-paren-mode)

;; Affiche le numéro de ligne et de colonne                                                                                                                                                                         
(column-number-mode t)
(line-number-mode t)

;;; compte le nombre de ligne                                                                                                                                                                                       
(global-set-key [f4] 'count-lines-region)

;;max 80 colonnes                                                                                                                                                                                                   
(setq-default fill-column 80)

;; affiche l'heure                                                                                                                                                                                                  
(display-time-mode t)

;; Bold line                                                                                                                                                                                                        
(global-hl-line-mode t)
(custom-set-faces
 '(highlight ((t (:weight bold)))))

;; Surbrillance de la region                                                                                                                                                                                        
(setq transient-mark-mode t)

;; Show tabs and too long lines                                                                                                                                                                                     
(custom-set-faces
 '(my-tab-face ((((class color)) (:foreground "black" :weight bold :underline t))) t)
 '(my-trailing-space-face ((((class color)) (:background "gray10"))) t)
 '(my-loong-line-face ((((class color)) (:background "yellow"))) t))

(defun cc-mode-add-keywords (mode)
  (font-lock-add-keywords
   mode
   '(
     ("\t+" (0 'my-tab-face append))
     ("^.\\{81\\}\\(.+\\)$" (1 'my-loong-line-face append)))))

(cc-mode-add-keywords 'c-mode)
(cc-mode-add-keywords 'php-mode)
(cc-mode-add-keywords 'sh-mode)
(cc-mode-add-keywords 'python-mode)
(cc-mode-add-keywords 'perl-mode)
(cc-mode-add-keywords 'c++-mode)
