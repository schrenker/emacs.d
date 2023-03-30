;;; init.el -*- lexical-binding: t; -*-

(doom! :completion
       (vertico +icons)

       :local
       (corfu +icons +tng)
       org-format

       :ui
       doom                                     ; what makes DOOM look the way it does
       doom-dashboard                           ; a nifty splash screen for Emacs
       doom-quit                                ; DOOM quit-message prompts when you quit Emacs
       (emoji +ascii +github +unicode)
       hl-todo
       indent-guides                            ; highlighted indent columns
       modeline                                 ; snazzy, Atom-inspired modeline, plus API
       nav-flash
       ophints                                  ; highlight the region an operation acts on
       (popup +defaults +all)                   ; tame sudden yet inevitable temporary windows
       tabs
       treemacs                                 ; a project drawer, like neotree but cooler
       unicode                                  ; extended unicode support for various languages
       (window-select +numbers)                 ; visually switch windows
       workspaces                               ; tab emulation, persistence & separate workspaces
       (vc-gutter +diff-hl +pretty)             ; vcs diff in the fringe
       vi-tilde-fringe                          ; fringe tildes to mark beyond EOB
       zen

       :editor
       (meow +dvorak +override)
       ;; (evil +everywhere)                       ; come to the dark side, we have cookies
       file-templates                           ; auto-snippets for empty files
       fold                                     ; (nigh) universal code folding
       (format +onsave)                         ; automated prettiness
       rotate-text
       snippets                                 ; my elves. They type so I don't have to
       word-wrap

       :emacs
       (dired +icons +dirvish)                   ; making dired pretty [functional] directory editor
       electric                                 ; smarter, keyword-based electric-indent
       (ibuffer +icons)                         ; interactive buffer management
       (undo +tree)                             ; persistent, smarter undo for your inevitable mistakes
       vc                                       ; version-control and Emacs, sitting in a tree

       :term
       eshell

       :checkers
       (spell +flyspell +everywhere)
       (syntax +childframe)                     ; tasing you for every semicolon you forget

       :tools
       ansible
       direnv
       (docker +lsp)
       editorconfig
       (eval +overlay)                          ; run code, run (also, repls)
       lookup                                   ; navigate your code and its documentation
       (lsp +eglot)                             ; M-x vscode
       (magit +forge)                           ; a git porcelain for Emacs
       pdf                                      ; pdf enhancements
       terraform                                ; infrastructure as code
       tree-sitter
       upload                                   ; map local to remote projects via ssh/ftp

       :os
       (:if IS-MAC macos)                       ; improve compatibility with macOS
       (tty +osc)                               ; improve the terminal Emacs experience

       :lang
       data
       emacs-lisp                               ; drown in parentheses
       graphql
       (go +lsp)
       (javascript +lsp +tree-sitter)
       (json +lsp +tree-sitter)                 ; At least it ain't XML
       (python +lsp +pyright +pyenv)            ; beautiful is better than ugly
       (nix +lsp)
       (org +pretty +present +dragndrop +roam2) ; organize your plain life in plain text
       rest
       (scheme +guile)
       (sh +lsp +fish +powershell)              ; she sells {ba,z,fi}sh shells on the C xor
       (web +lsp +tree-sitter)
       (yaml +lsp)                              ; JSON, but readable

       :app
       calendar

       :config
       (default +bindings +smartparens)
       literate)

(setq native-comp-deferred-compilation nil)
(after! (doom-packages straight)
  (setq straight--native-comp-available t))