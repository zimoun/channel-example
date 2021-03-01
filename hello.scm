(define-module (hello)
  #:use-module (guix packages)
  #:use-module (guix build-system gnu)
  #:use-module (guix git-download)
  #:use-module (guix licenses))

(define-public hi
  (package
    (name "hi")
    (version "2.10")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/zimoun/hello-example.git")
                    (commit "e1eefd033b8a2c4c81babc6fde08ebb116c6abb8")))
              (sha256
               (base32
                "1im1gglfm4k10bh4mdaqzmx3lm3kivnsmxrvl6vyvmfqqzljq75l"))))
    (build-system gnu-build-system)
    (synopsis "Hello, GNU world: An example GNU package")
    (description
     "GNU Hello prints the message \"Hello, world!\" and then exits.  It
serves as an example of standard GNU coding practices.  As such, it supports
command-line arguments, multiple languages, and so on.")
    (home-page "https://www.gnu.org/software/hello/")
    (license gpl3+)))
