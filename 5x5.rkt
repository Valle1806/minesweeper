#lang racket
(require images/icons/control)
(require "Definiciones.rkt")
(provide (all-defined-out))
(require racket/gui/base)
(define buscaminas25 (new frame%
                 [label "BUSCAMINAS 5X5"];[height 300]
                 ))

(define juegoterminado5 (instantiate dialog% ("Fin del juego")))
(define mensajeJT5 (new message% [parent juegoterminado5]
                    [label "Se acabó la partida"]
                    [auto-resize #t]))

(define mensajeJT115 (new message% [parent juegoterminado5]
                    [label "" ]
                    [auto-resize #t]))
(define nuevo5 (new button% [parent juegoterminado5] 
             [label "Nuevo Juego"]
             (callback (lambda (button event)
                         (reset5 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55
                                 CC51 CC52 CC53 CC54 CC55 DD51 DD52 DD53 DD54 DD55
                                 EE51 EE52 EE53 EE54 EE55
                                 )
                         (send juegoterminado5 show #f)
                         (send buscaminas25 show #f)))))


                 
(define panelAA5 (new horizontal-panel% [parent buscaminas25]
                                     [alignment '(center center)]))

(define panelBB5 (new horizontal-panel% [parent buscaminas25]
                                     [alignment '(center center)]))

(define panelCC5 (new horizontal-panel% [parent buscaminas25]
                                     [alignment '(center center)]))

(define panelDD5 (new horizontal-panel% [parent buscaminas25]
                                     [alignment '(center center)]))

(define panelEE5 (new horizontal-panel% [parent buscaminas25]
                     [alignment '(center center)]))




 ;::::::::::::::::::::::::::::::BOTONES PANEL A::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        

(define AA51 (new button% [parent panelAA5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina1);Funcion para contar las jugadas
                         (procesoterminar mina1);funcion para determinar si es mina y terminar el juego
                         (send AA51 set-label minaI1)
                         (send AA51 enable false)
                         (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5);Funcion para terminar juego
                         )]))
(define AA52 (new button% [parent panelAA5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina2)
                         (procesoterminar mina2);funcion para determinar si es mina y terminar el juego
                         (send AA52 set-label minaI2)
                         (send AA52 enable false)
                         (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define AA53 (new button% [parent panelAA5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina3)
                         (procesoterminar mina3);funcion para determinar si es mina y terminar el juego
                         (send AA53 set-label minaI3)
                         (send AA53 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define AA54 (new button% [parent panelAA5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina4)
                         (procesoterminar mina4);funcion para determinar si es mina y terminar el juego
                         (send AA54 set-label minaI4)
                         (send AA54 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

(define AA55 (new button% [parent panelAA5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina5)
                         (procesoterminar mina5);funcion para determinar si es mina y terminar el juego
                         (send AA55 set-label minaI5)
                         (send AA55 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

 ;::::::::::::::::::::::::::::::BOTONES PANEL B::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        

(define BB51 (new button% [parent panelBB5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina6)
                         (procesoterminar mina6);funcion para determinar si es mina y terminar el juego
                         (send BB51 set-label minaI6)
                         (send BB51 enable false)
                         (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define BB52 (new button% [parent panelBB5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina7)
                         (procesoterminar mina7);funcion para determinar si es mina y terminar el juego
                         (send BB52 set-label minaI7)
                         (send BB52 enable false)
                         (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define BB53 (new button% [parent panelBB5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina8)
                         (procesoterminar mina8);funcion para determinar si es mina y terminar el juego
                         (send BB53 set-label minaI8)
                         (send BB53 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define BB54 (new button% [parent panelBB5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina9)
                         (procesoterminar mina9);funcion para determinar si es mina y terminar el juego
                         (send BB54 set-label minaI9)
                         (send BB54 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

(define BB55 (new button% [parent panelBB5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina10)
                         (procesoterminar mina10);funcion para determinar si es mina y terminar el juego
                         (send BB55 set-label minaI10)
                         (send BB55 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

 ;::::::::::::::::::::::::::::::BOTONES PANEL C::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        


(define CC51 (new button% [parent panelCC5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina11)
                         (procesoterminar mina11);funcion para determinar si es mina y terminar el juego
                         (send CC51 set-label minaI11)
                         (send CC51 enable false)
                         (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define CC52 (new button% [parent panelCC5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina12)
                         (procesoterminar mina12);funcion para determinar si es mina y terminar el juego
                         (send CC52 set-label minaI12)
                         (send CC52 enable false)
                         (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define CC53 (new button% [parent panelCC5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina13)
                         (procesoterminar mina13);funcion para determinar si es mina y terminar el juego
                         (send CC53 set-label minaI13)
                         (send CC53 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define CC54 (new button% [parent panelCC5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina14)
                         (procesoterminar mina14);funcion para determinar si es mina y terminar el juego
                         (send CC54 set-label minaI14)
                         (send CC54 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

(define CC55 (new button% [parent panelCC5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina15)
                         (procesoterminar mina15);funcion para determinar si es mina y terminar el juego
                         (send CC55 set-label minaI15)
                         (send CC55 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

 ;::::::::::::::::::::::::::::::BOTONES PANEL D::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        


(define DD51 (new button% [parent panelDD5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina16)
                         (procesoterminar mina16);funcion para determinar si es mina y terminar el juego
                         (send DD51 set-label minaI16)
                         (send DD51 enable false)
                         (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define DD52 (new button% [parent panelDD5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina17)
                         (procesoterminar mina17);funcion para determinar si es mina y terminar el juego
                         (send DD52 set-label minaI17)
                         (send DD52 enable false)
                         (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define DD53 (new button% [parent panelDD5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina18)
                         (procesoterminar mina18);funcion para determinar si es mina y terminar el juego
                         (send DD53 set-label minaI18)
                         (send DD53 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))
(define DD54 (new button% [parent panelDD5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina19)
                         (procesoterminar mina19);funcion para determinar si es mina y terminar el juego
                         (send DD54 set-label minaI19)
                         (send DD54 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

(define DD55 (new button% [parent panelDD5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina20)
                         (procesoterminar mina20);funcion para determinar si es mina y terminar el juego
                         (send DD55 set-label minaI20)
                         (send DD55 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

;:::::::::::::::::::::::::::::::::::: BOTONES PANEL E ::::::::::::::::::::::::::::::::::::::::::::::::

(define EE51 (new button% [parent panelEE5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina21)
                         (procesoterminar mina21);funcion para determinar si es mina y terminar el juego
                         (send EE51 set-label minaI21)
                         (send EE51 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

(define EE52 (new button% [parent panelEE5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina22)
                         (procesoterminar mina22);funcion para determinar si es mina y terminar el juego
                         (send EE52 set-label minaI22)
                         (send EE52 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

(define EE53 (new button% [parent panelEE5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina23)
                         (procesoterminar mina23);funcion para determinar si es mina y terminar el juego
                         (send EE53 set-label minaI23)
                         (send EE53 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

(define EE54 (new button% [parent panelEE5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina24)
                         (procesoterminar mina24);funcion para determinar si es mina y terminar el juego
                         (send EE54 set-label minaI24)
                         (send EE54 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))

(define EE55 (new button% [parent panelEE5] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina25)
                         (procesoterminar mina25);funcion para determinar si es mina y terminar el juego
                         (send EE55 set-label minaI25)
                         (send EE55 enable false)
                        (procesoterminar22 AA51 AA52 AA53 AA54 AA55 BB51 BB52 BB53 BB54 BB55 CC51 CC52 CC53 CC54 CC55 DD51
                                           DD52 DD53 DD54 DD55 EE51 EE52 EE53 EE54 EE55 juegoterminado5 mensajeJT5)
                         )]))



;(send buscaminas25 show #t)