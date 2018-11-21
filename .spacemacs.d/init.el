;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("/home/gianluca/Devel/Misc/")
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     (c-c++ :variables
            c-c++-enable-clang-support t)
     csv
     deft
     docker
     emacs-lisp
     git
     ivy
     (latex :variables
            latex-enable-auto-fill t)
     linux-defaults
     (markdown :variables
               markdown-command "pandoc --smart -f markdown -t html")
     pandoc
     (python :variables
             python-test-runner 'pytest
             python-fill-column 120)
     ranger
     spell-checking
     smex
     sql
     syntax-checking
     yaml
     version-control
     visual-regexp
     )
   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages
   '(
     cdlatex
     compile
     latex-extra
     session
     )
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update t
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'emacs
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   dotspacemacs-startup-lists nil
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(spacemacs-dark
                         spacemacs-light)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font, or prioritized list of fonts. `powerline-scale' allows to
   ;; quickly tweak the mode-line size to make separators look not too crappy.
   dotspacemacs-default-font '("DejaVu Sans Mono"
                               :size 20
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "<f10>"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m")
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ nil
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts t
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 5
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'right-then-bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters point
   ;; when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling t
   ;; Control line numbers activation.
   ;; If set to `t' or `relative' line numbers are turned on in all `prog-mode' and
   ;; `text-mode' derivatives. If set to `relative', line numbers are relative.
   ;; This variable can also be set to a property list for finer control:
   ;; '(:relative nil
   ;;   :disabled-for-modes dired-mode
   ;;                       doc-view-mode
   ;;                       markdown-mode
   ;;                       org-mode
   ;;                       pdf-view-mode
   ;;                       text-mode
   ;;   :size-limit-kb 1000)
   ;; (default nil)
   dotspacemacs-line-numbers nil
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun dotspacemacs/user-init ()
  "Initialization function for user code.
It is called immediately after `dotspacemacs/init', before layer configuration
executes.
 This function is mostly useful for variables that need to be set
before packages are loaded. If you are unsure, you should try in setting them in
`dotspacemacs/user-config' first."
  (if (string= (system-name) "nuc6")
      (setq-default dotspacemacs-default-font '("DejaVu Sans Mono"
                            :size 20
                            :weight normal
                            :width normal
                            :powerline-scale 1.1))
      (setq-default dotspacemacs-default-font '("DejaVu Sans Mono"
                                                :size 14
                                                :weight normal
                                                :width normal
                                                :powerline-scale 1.1)))
  )
(defun dotspacemacs/user-config ()
  "Configuration function for user code.
This function is called at the very end of Spacemacs initialization after
layers configuration.
This is the place where most of your configurations should be done. Unless it is
explicitly specified that a variable should be set before a package is loaded,
you should place your code here."
  (setq frame-title-format
        '(:eval
          (if buffer-file-name
              (replace-regexp-in-string
               (replace-regexp-in-string "\\\\" "/" (getenv "HOME")) "~"
               (concat "Emacs " (file-name-directory buffer-file-name) "%b"))
            (buffer-name)
            )))
  ;; (cua-mode 1)
  ;; (setq  cua-enable-cua-keys t
  ;;        cua-overwrite-cursor-color "yellow"
  ;;        cua-prefix-override-inhibit-delay 0.4
  ;;        cua-read-only-cursor-color "green"
  ;;        )


  ;; Make executable each script
  (add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)
 ;;; Abbreviations
  (setq    save-abbrevs (quote silently)
           )
  (set-default 'abbrev-mode t)

 ;;; Global keys
  (global-set-key [(insert)]             'save-buffer)
  (global-set-key [(control begin)]      'beginning-of-buffer)
  (global-set-key [(control  end)]       'end-of-buffer)
  (global-set-key [(remove)]             'kill-region)
  (global-set-key [(shift remove)]       'copy-region-as-kill)
  (global-set-key [(find)]               'isearch-forward)
  (global-set-key [(shift find)]         'isearch-backward)
  (global-set-key [(control shift f)]    'isearch-backward)
  (global-set-key [(control find)]       'isearch-repeat-forward)
  (global-set-key [(control shift find)] 'isearch-repeat-backward)
  (global-set-key [(execute)]            'execute-extended-command)
  (global-set-key [(menu)]               'execute-extended-command)
  
  (global-set-key [(control f)]          'swiper)
  (global-set-key [(control s)]          'save-buffer)
  (global-set-key [(control p)] 'ido-switch-buffer)
  (global-set-key [(control o)] 'ido-find-file)
  (global-set-key [(control z)] 'undo)
  ;; Edit init.el with hotkey
  (defun init-imenu (p)
    (interactive "P")
    (find-file-existing "~/.spacemacs.d/init.el")
    )
  (define-key global-map [(control shift l)] 'init-imenu)
  ;; Edit .bashrc with hotkey
  (defun edit-bashrc (p)
    (interactive "P")
    (find-file-existing "~/.bashrc")
    )
  (define-key global-map [(control shift p)] 'edit-bashrc)

  (global-set-key [(f2)]                 'kill-region)
  (global-set-key [(f3)]                 'ivy-resume)
  (global-set-key [(f4)]                 'copy-region-as-kill)
  (global-set-key [(f5)]                 'cua-paste)
  (global-set-key [(f6)]                 'kmacro-start-macro)
  (global-set-key [(shift f6)]           'kmacro-end-macro)
  (global-set-key [(control f6)]         'kmacro-end-macro)
  (global-set-key [(f7)]                 'kmacro-end-and-call-macro)
  (global-set-key [(f8)]                 'magit-status)
  (global-set-key [(control f9)]          'dired)
  (global-set-key [(shift f10)]                'deft-new-file-named)
  (global-set-key [(shift f11)]                'deft)
  (global-set-key [(f12)]                 (lambda() (interactive) (compile compile-command)))

  (global-set-key [(button1)]         'mouse-track)
  (global-set-key [(button2)]         'x-set-point-and-insert-selection)
  (global-set-key [(button3)]         'popup-mode-menu)
  (global-set-key [(alt \8)]           "(")
  (global-set-key [(alt \9)]           ")")
  (global-set-key [(alt \0)]           "[")
  (global-set-key [(alt \')]           "]")
  (global-set-key [(alt .)]           "{")
  (global-set-key [(alt -)]           "}")
  (global-set-key (kbd "ç") (kbd "{"))
  (global-set-key (kbd "°") (kbd "}"))
  (global-set-key (kbd "§") (kbd "`"))
  (spacemacs/set-leader-keys "xn" 'comment-region)
  (spacemacs/set-leader-keys "xm" 'uncomment-region)
  (global-set-key "\C-c ;" 'comment-region)
  (global-set-key "\C-c :" 'uncomment-region)
  (global-set-key "\C-c_" 'comment-box)
  ;; http://www.emacswiki.org/emacs/SwitchingBuffers#toc5
  (defun switch-to-previous-buffer ()
    "Switch to most recent buffer. Repeated calls toggle back and forth between the most recent two buffers."
    (interactive)
    (switch-to-buffer (other-buffer (current-buffer) 1)))
  
  (global-set-key (kbd "C-ì") 'switch-to-previous-buffer)


  (spacemacs/set-leader-keys "sq" 'vr/query-replace)
  (spacemacs/set-leader-keys "sy" 'vr/query)
  (spacemacs/set-leader-keys "su" 'vr/isearch-backward)

  ;;; Ido
  (setq    ido-everywhere t
           ido-file-extensions-order
           (quote
            (".tex" ".bib" ".c" ".h" ".py" "*.txt" "*.el" "*.go"))
           ido-show-dot-for-dired t
           ido-enable-flex-matching t
           ido-use-filename-at-point (quote guess)
           ido-use-virtual-buffers t
           ido-ignore-extensions t
           ido-create-new-buffer (quote always)
           completion-ignored-extensions
             (quote
              (".o"
               "~"
               ".bin"
               ".lbin"
               ".so"
               ".a"
               ".ln"
               ".blg"
               ".bbl"
               ".elc"
               ".lof"
               ".glo"
               ".idx"
               ".lot"
               ".svn/"
               ".hg/"
               ".git/"
               ".bzr/"
               "CVS/"
               ".fmt"
               ".tfm"
               ".class"
               ".fas"
               ".lib"
               ".mem"
               ".x86f"
               ".sparcf"
               ".dfsl"
               ".pfsl"
               ".d64fsl" ".p64fsl" ".lx64fsl" ".lx32fsl" ".dx64fsl" ".dx32fsl" ".fx64fsl" ".fx32fsl" ".sx64fsl" ".sx32fsl" ".wx64fsl" ".wx32fsl"
               ".fasl" ".ufsl" ".fsl"
               ".dxl"
               ".lo"
               ".la"
               ".gmo"
               ".mo"
               ".toc"
               ".aux"
               ".fdb_latexmk"
               ".fls"
               ".cp"
               ".fn"
               ".ky"
               ".pg"
               ".tp"
               ".vr"
               ".cps"
               ".fns"
               ".kys"
               ".pgs"
               ".tps"
               ".vrs"
               ".pyc"
               ".pyo"
               ".fdb_latexmk"
               ".aux"))
           )

  ;;; recentf
  (setq    recentf-auto-cleanup 300
           recentf-max-menu-items 30
           recentf-save-file "~/.spacemacs.d/recentf"
           )

  ;;; Compile
  (setq    compilation-always-kill t
           compilation-ask-about-save nil
           compilation-auto-jump-to-first-error t
           compilation-read-command nil
           compilation-scroll-output (quote first-error)
           )
  ;; http://www.emacswiki.org/emacs/CompileCommand
  ;;  (defun* get-closest-pathname (&optional (file "Makefile"))
  ;;    "Determine the pathname of the first instance of FILE starting from the current directory towards root.
  ;; This may not do the correct thing in presence of links. If it does not find FILE, then it shall return the name
  ;; of FILE in the current directory, suitable for creation"
  ;;    (let ((root (expand-file-name "/"))) ; the win32 builds should translate this correctly
  ;;      (expand-file-name file
  ;;                        (loop
  ;;                         for d = default-directory then (expand-file-name ".." d)
  ;;                         if (file-exists-p (expand-file-name file d))
  ;;                         return d
  ;;                         if (equal d root)
  ;;                         return nil))))
  
  (defun my-compile ()
    (interactive)
    (compile compile-command))

  ;; Compilation window should be small and disappear if there is no error
  ;; from http://www.emacswiki.org/emacs/ModeCompile
  (setq compilation-finish-functions 'compile-autoclose)
  (defun compile-autoclose (buffer string)
    (cond ((and (string-match "finished" string)
                (not (string-match "TextLint" (buffer-string))))
           (message "Build likely successful: closing window")
           (run-with-timer 2 nil
                           'delete-window
                           (get-buffer-window buffer t)))
          (t
           (message "Compilation exited abnormally: %s" string))))


;;; Deft
  (setq    deft-extensions '("txt" "md" "markdown" "org")
           deft-default-extension "txt"
           deft-text-mode 'markdown-mode
           deft-directory "~/Note/"
           deft-recursive t
           deft-use-filename-as-title t
           deft-current-sort-method 'title
           deft-auto-save-interval 30
           )

;; ;;; LaTeX
  (setenv "TEXINPUTS" (concat ".:~/texmf//:" (getenv "TEXINPUTS")))
  (setenv "BIBINPUTS" (concat ".:~/Articoli/BibInput:" (getenv "BIBINPUTS")))
  (add-hook 'LaTeX-mode-hook 'my-latex-mode-init)
  (setq    TeX-arg-right-insert-p t
           LaTeX-indent-level 0
           TeX-electric-math (quote ("$" . "$"))
           TeX-PDF-mode t
           TeX-save-query nil
           TeX-electric-sub-and-superscript t
           TeX-shell "/bin/bash"
           LaTeX-electric-left-right-brace t
           )
;;   ;; Turn on auto-fill-mode for BibTeX and LaTeX
  (add-hook 'bibtex-mode-hook 'turn-on-auto-fill)
  (defadvice TeX-insert-quote (around wrap-region activate)
    (cond
     (mark-active
      (let ((skeleton-end-newline nil))
        (skeleton-insert `(nil ,TeX-open-quote _ ,TeX-close-quote) -1)))
     ((looking-at (regexp-opt (list TeX-open-quote TeX-close-quote)))
      (forward-char (length TeX-open-quote)))
     (t
      ad-do-it)))
  (put 'TeX-insert-quote 'delete-selection nil)
   (defun my-latex-mode-init ()
     ;; ;; AUCTeX configuration
     ;; ;;Abbreviations
     (setq local-abbrev-table latex-mode-abbrev-table)
     (define-key LaTeX-mode-map [(control prior)] 'latex/previous-section)
     (define-key LaTeX-mode-map [(control next)] 'latex/next-section)
     (define-key LaTeX-mode-map [(f9)]    'TeX-view)
     (define-key LaTeX-mode-map (kbd ".") 'tex-smart-period)
     )

  ;;; Latex-extra
  (add-hook 'LaTeX-mode-hook #'latex-extra-mode)

;;; RefTeX
  (autoload 'reftex-mode     "reftex" "RefTeX Minor Mode" t)
  (autoload 'reftex-citation "reftex-cite" "Make citation" nil)
  (autoload 'reftex-index-phrase-mode "reftex-index" "Phrase mode" t)
  (setq reftex-format-cite-function
        '(lambda (key fmt)
           (let ((cite (replace-regexp-in-string "%l" key fmt)))
             (if (or (= ?~ (string-to-char fmt))
                     (member (preceding-char) '(?\ ?\t ?\n ?~)))
                 cite
               (concat "~" cite)))))
  ;; Make RefTeX faster
  (setq reftex-enable-partial-scans t
        reftex-plug-into-AUCTeX t
        reftex-bibpath-environment-variables  '("~/Articoli/BibInput/")
        reftex-file-extensions '(("nw" "tex" ".tex" ".ltx") ("bib" ".bib"))
        reftex-cite-prompt-optional-args nil
        reftex-cite-cleanup-optional-args t
        reftex-ref-style-alist (quote
                                (("Default" t
                                  (("\\ref" 13)))
                                 ("Varioref" "varioref"
                                  (("\\vref" 118)
                                   ("\\vpageref" 103)
                                   ("\\Vref" 86)
                                   ("\\Ref" 82)))
                                 ("Fancyref" "fancyref"
                                  (("\\fref" 102)
                                   ("\\Fref" 70)))
                                 ("Hyperref" "hyperref"
                                  (("\\autoref" 97)
                                   ("\\autopageref" 117)))
                                 ("Cleveref" "cleveref"
                                  (("\\cref" 99)
                                   ("\\Cref" 67)
                                   ("\\cpageref" 100)
                                   ("\\Cpageref" 68)))))
        reftex-save-parse-info t
        reftex-use-multiple-selection-buffers t
        reftex-label-alist (quote (
                                   ("algorithm"   ?a "algorithm:"      "~\\ref{%s}" nil ("Algorithm" "Algorithms" "Algoritmo" "Alg."))
                                   ("problem"     ?b "problem:"        "~\\ref{%s}" nil ("Prob." "Problem" "Problems" "Problema"))
                                   ("claim"       ?c "claim:"          "~\\ref{%s}" nil ("Claim" "Claims" "Asserzione"))
                                   ("definition"  ?d "definition:"     "~\\ref{%s}" nil ("Def." "Definition" "Definizione"))
                                   ("exercise"    ?e "exercise:"       "~\\ref{%s}" nil ("Exercise" "Esercizio"))
                                   ("program"     ?g "program:"        "~\\ref{%s}" nil ("Prog." "Program" "Programma"))
                                   ("theorem"     ?h "theorem:"        "~\\ref{%s}" nil ("Thm" "Theorem" "Teorema"))
                                   ("remark"      ?k "remark:"         "~\\ref{%s}" nil ("Remark" "Nota"))
                                   ("lemma"       ?l "lemma:"          "~\\ref{%s}" nil ("Lemma" "Lemmas" "Lemmata"))
                                   ("observation" ?o "observation:"    "~\\ref{%s}" nil ("Observation" "Observations" "Obs." "Osservazione"))
                                   ("proposition" ?p "proposition:"    "~\\ref{%s}" nil ("Prop." "Proposition"  "Propositions" "Proposizione"))
                                   ("corollary"   ?r "corollary:"      "~\\ref{%s}" nil ("Cor." "Corollary" "Corollaries" "Corollario"))
                                   ("example"     ?x "example:"        "~\\ref{%s}" nil ("Example" "Es." "Esempio"))
                                   ))

        TeX-view-program-selection '((output-pdf "Evince"))
        TeX-view-program-list '(("Evince" "evince --page-index=%(outpage) %o"))
        )
  (defun LaTeX-view ()
    "Run the View command from the toolbar. Automagicly inhibits
 the confirmation garbage."
    (interactive)
    (let* ((entry (copy-sequence (assoc "View" TeX-command-list)))
           TeX-command-list)
      (rplaca (nthcdr 3 entry) nil)
      (setq TeX-command-list (list entry))
      (TeX-command-master "View")))
  ;; save a file and compile it with latex
  (defun tex-smart-period ()
    "Smart \".\" key: insert \".\n\".
 If the period key is pressed a second time, \".\n\" is removed and replaced by the period."
    (interactive)
    (let ((assign-len (length ".\n")))
      (if (and
           (>= (point) (+ assign-len (point-min))) ;check that we can move back
           (save-excursion
             (backward-char assign-len)
             (looking-at "\\.")))
          ;; If we are currently looking at ess-S-assign, replace it with _
          (progn
            (delete-backward-char assign-len)
            (insert "."))
        (delete-horizontal-space)
        (insert ".\n"))))

;;; CDlatex
  (add-hook 'LaTeX-mode-hook 'turn-on-cdlatex)
  (setq    cdlatex-simplify-sub-super-scripts nil
           )

;;; Desktop
  (setq    desktop-lazy-idle-delay 0
           desktop-path "~/.emacs.d/.cache/"
           desktop-base-file-name "emacs.desktop"
           )
  (desktop-save-mode 1)
  (desktop-read)
  )




;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(aggressive-indent-excluded-modes
   (quote
    (bibtex-mode cider-repl-mode coffee-mode comint-mode conf-mode Custom-mode diff-mode doc-view-mode dos-mode erc-mode jabber-chat-mode haml-mode haskell-mode image-mode makefile-mode makefile-gmake-mode minibuffer-inactive-mode netcmd-mode sass-mode slim-mode special-mode shell-mode snippet-mode eshell-mode tabulated-list-mode term-mode TeX-output-mode text-mode yaml-mode python-mode markdown-mode)))
 '(cua-enable-cua-keys t)
 '(cua-mode t nil (cua-base))
 '(cursor-in-non-selected-windows nil)
 '(delete-old-versions t)
 '(display-line-numbers t)
 '(electric-layout-mode t)
 '(fill-column 120)
 '(global-aggressive-indent-mode t)
 '(global-prettify-symbols-mode t)
 '(global-subword-mode t)
 '(global-visual-line-mode t)
 '(ispell-help-in-bufferp (quote electric))
 '(ispell-silently-savep t)
 '(ivy-count-format "(%d/%d) ")
 '(kept-new-versions 16)
 '(mouse-avoidance-mode (quote exile) nil (avoid))
 '(package-selected-packages
   (quote
    (sql-indent swiper cdlatex treepy graphql spinner parent-mode projectile helm helm-core flx smartparens iedit anzu highlight counsel evil goto-chg pkg-info epl popup avy dash hydra powerline ivy bind-key csv-mode recentf-ext buffer-move latex-extra yapfify yaml-mode visual-regexp-steroids visual-regexp unfill smeargle session ranger pyvenv pytest pyenv-mode py-isort pip-requirements pandoc-mode ox-pandoc ht orgit mwim mmm-mode markdown-toc markdown-mode magit-gitflow live-py-mode hy-mode dash-functional gitignore-mode gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe+ git-gutter-fringe fringe-helper git-gutter+ git-gutter gh-md flyspell-correct-ivy flyspell-correct flycheck-pos-tip pos-tip flycheck evil-magit magit git-commit ghub with-editor dockerfile-mode docker json-mode tablist magit-popup docker-tramp json-snatcher json-reformat disaster diff-hl deft cython-mode cmake-mode clang-format auto-dictionary auctex-latexmk auctex anaconda-mode pythonic ws-butler winum which-key wgrep volatile-highlights vi-tilde-fringe uuidgen use-package toc-org spaceline smex restart-emacs request rainbow-delimiters popwin persp-mode pcre2el paradox org-plus-contrib org-bullets open-junk-file neotree move-text macrostep lorem-ipsum linum-relative link-hint ivy-hydra indent-guide hungry-delete hl-todo highlight-parentheses highlight-numbers highlight-indentation helm-make google-translate golden-ratio flx-ido fill-column-indicator fancy-battery eyebrowse expand-region exec-path-from-shell evil-visualstar evil-visual-mark-mode evil-unimpaired evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-nerd-commenter evil-mc evil-matchit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-ediff evil-args evil-anzu eval-sexp-fu elisp-slime-nav dumb-jump diminish define-word counsel-projectile column-enforce-mode clean-aindent-mode bind-map auto-highlight-symbol auto-compile aggressive-indent adaptive-wrap ace-window ace-link)))
 '(paradox-github-token t)
 '(read-quoted-char-radix 10)
 '(safe-local-variable-values (quote ((buffer-file-coding-system . utf-8))))
 '(tab-always-indent (quote complete))
 '(tab-width 4)
 '(which-function-mode t)
 '(x-select-request-type (quote UTF8_STRING))
 '(yank-excluded-properties t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
