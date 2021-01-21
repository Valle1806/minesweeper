#lang racket
(require images/icons/control)
(require "Definiciones.rkt")
(provide (all-defined-out))
(require racket/gui/base)
(define buscaminas (new frame%
                 [label "BUSCAMINAS 4X4"]
               
                 ))
(define juegoterminado3 (instantiate dialog% ("Fin del juego")))
(define mensajeFINAL (new message% [parent juegoterminado3]
                    [label ""]
                    [auto-resize #t]))

(define nuevo (new button% [parent juegoterminado3] 
             [label "Nuevo Juego"]
             (callback (lambda (button event)
                         (reset4 A1 A2 A3 A4 B1 B2 B3 B4
                                C1 C2 C3 C4 D1 D2 D3 D4)
                         (send juegoterminado3 show #f)
                         (send buscaminas show #f)))))
                         

(define mensajeJT1 (new message% [parent juegoterminado3]
                    [label "" ]
                    [auto-resize #t]))
(define panelA (new horizontal-panel% [parent buscaminas]
                                     [alignment '(center center)]))

(define panelB (new horizontal-panel% [parent buscaminas]
                                     [alignment '(center center)]))

(define panelC (new horizontal-panel% [parent buscaminas]
                                     [alignment '(center center)]))

(define panelD (new horizontal-panel% [parent buscaminas]
                                     [alignment '(center center)]))

 ;::::::::::::::::::::::::::::::BOTONES PANEL A::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        

(define A1 (new button% [parent panelA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina1);Funcion para contar las jugadas
                         (procesoterminar mina1);funcion para determinar si es mina y terminar el juego
                         (send A1 set-label minaI1)
                         (send A1 enable false)
                         (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL);Funcion para terminar el juego
                         )]))
(define A2 (new button% [parent panelA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina2)
                         (procesoterminar mina2);funcion para determinar si es mina y terminar el juego
                         (send A2 set-label minaI2)
                         (send A2 enable false)
                         (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define A3 (new button% [parent panelA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina3)
                         (procesoterminar mina3);funcion para determinar si es mina y terminar el juego
                         (send A3 set-label minaI3)
                         (send A3 enable false)
                        (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define A4 (new button% [parent panelA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina4)
                         (procesoterminar mina4);funcion para determinar si es mina y terminar el juego
                         (send A4 set-label minaI4)
                         (send A4 enable false)
                        (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))

 ;::::::::::::::::::::::::::::::BOTONES PANEL B::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        

(define B1 (new button% [parent panelB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina5)
                         (procesoterminar mina5);funcion para determinar si es mina y terminar el juego
                         (send B1 set-label minaI5)
                         (send B1 enable false)
                         (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define B2 (new button% [parent panelB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina6)
                         (procesoterminar mina6);funcion para determinar si es mina y terminar el juego
                         (send B2 set-label minaI6)
                         (send B2 enable false)
                         (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define B3 (new button% [parent panelB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina7)
                         (procesoterminar mina7);funcion para determinar si es mina y terminar el juego
                         (send B3 set-label minaI7)
                         (send B3 enable false)
                        (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define B4 (new button% [parent panelB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina8)
                         (procesoterminar mina8);funcion para determinar si es mina y terminar el juego
                         (send B4 set-label minaI8)
                         (send B4 enable false)
                        (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))


 ;::::::::::::::::::::::::::::::BOTONES PANEL C::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        


(define C1 (new button% [parent panelC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina9)
                         (procesoterminar mina9);funcion para determinar si es mina y terminar el juego
                         (send C1 set-label minaI9)
                         (send C1 enable false)
                         (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define C2 (new button% [parent panelC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina10)
                         (procesoterminar mina10);funcion para determinar si es mina y terminar el juego
                         (send C2 set-label minaI10)
                         (send C2 enable false)
                         (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define C3 (new button% [parent panelC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina11)
                         (procesoterminar mina11);funcion para determinar si es mina y terminar el juego
                         (send C3 set-label minaI11)
                         (send C3 enable false)
                        (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define C4 (new button% [parent panelC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina12)
                         (procesoterminar mina12);funcion para determinar si es mina y terminar el juego
                         (send C4 set-label minaI12)
                         (send C4 enable false)
                        (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
 ;::::::::::::::::::::::::::::::BOTONES PANEL D::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        


(define D1 (new button% [parent panelD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina13)
                         (procesoterminar mina13);funcion para determinar si es mina y terminar el juego
                         (send D1 set-label minaI13)
                         (send D1 enable false)
                         (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define D2 (new button% [parent panelD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina14)
                         (procesoterminar mina14);funcion para determinar si es mina y terminar el juego
                         (send D2 set-label minaI14)
                         (send D2 enable false)
                         (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define D3 (new button% [parent panelD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina15)
                         (procesoterminar mina15);funcion para determinar si es mina y terminar el juego
                         (send D3 set-label minaI15)
                         (send D3 enable false)
                        (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))
(define D4 (new button% [parent panelD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina16)
                         (procesoterminar mina16);funcion para determinar si es mina y terminar el juego
                         (send D4 set-label minaI16)
                         (send D4 enable false)
                        (procesoterminar2 A1 A2 A3 A4 B1 B2 B3 B4 C1 C2 C3 C4 D1 D2 D3 D4 juegoterminado3 mensajeFINAL)
                         )]))

;(send buscaminas show #t)