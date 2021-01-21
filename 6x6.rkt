#lang racket
(require images/icons/control)
(require "Definiciones.rkt")
(provide (all-defined-out))
(require racket/gui/base)

(define buscaminas36 (new frame%
                 [label "BUSCAMINAS 6X6"];[height 300]
                 ))

(define juegoterminado (instantiate dialog% ("Fin del juego")))
(define mensajeJT (new message% [parent juegoterminado]
                    [label "Se acabó la partida"]
                    [auto-resize #t]))

(define mensajeJT11 (new message% [parent juegoterminado]
                    [label "" ]
                    [auto-resize #t]))
(define nuevo6 (new button% [parent juegoterminado] 
             [label "Nuevo Juego"]
             (callback (lambda (button event)
                         (reset6 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6
                                 CC1 CC2 CC3 CC4 CC5 CC6 DD1 DD2 DD3 DD4 DD5 DD6
                                 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6
                                 )
                         (send juegoterminado show #f)
                         (send buscaminas36 show #f)))))

                 
(define panelAA (new horizontal-panel% [parent buscaminas36]
                                     [alignment '(center center)]))

(define panelBB (new horizontal-panel% [parent buscaminas36]
                                     [alignment '(center center)]))

(define panelCC (new horizontal-panel% [parent buscaminas36]
                                     [alignment '(center center)]))

(define panelDD (new horizontal-panel% [parent buscaminas36]
                                     [alignment '(center center)]))

(define panelEE (new horizontal-panel% [parent buscaminas36]
                                    ))

(define panelFF (new horizontal-panel% [parent buscaminas36]
                                    ))


 ;::::::::::::::::::::::::::::::BOTONES PANEL A::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        

(define AA1 (new button% [parent panelAA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina1);Funcion para contar las jugadas
                         (procesoterminar mina1);funcion para determinar si es mina y terminar el juego
                         (send AA1 set-label minaI1)
                         (send AA1 enable false)
                         (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT);Funcion para terminar el juego
                         )]))
(define AA2 (new button% [parent panelAA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina2)
                         (procesoterminar mina2);funcion para determinar si es mina y terminar el juego
                         (send AA2 set-label minaI2)
                         (send AA2 enable false)
                         (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define AA3 (new button% [parent panelAA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina3)
                         (procesoterminar mina3);funcion para determinar si es mina y terminar el juego
                         (send AA3 set-label minaI3)
                         (send AA3 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define AA4 (new button% [parent panelAA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina4)
                         (procesoterminar mina4);funcion para determinar si es mina y terminar el juego
                         (send AA4 set-label minaI4)
                         (send AA4 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define AA5 (new button% [parent panelAA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina5)
                         (procesoterminar mina5);funcion para determinar si es mina y terminar el juego
                         (send AA5 set-label minaI5)
                         (send AA5 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define AA6 (new button% [parent panelAA] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina6)
                         (procesoterminar mina6);funcion para determinar si es mina y terminar el juego
                         (send AA6 set-label minaI6)
                         (send AA6 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

 ;::::::::::::::::::::::::::::::BOTONES PANEL B::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        

(define BB1 (new button% [parent panelBB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina7)
                         (procesoterminar mina7);funcion para determinar si es mina y terminar el juego
                         (send BB1 set-label minaI7)
                         (send BB1 enable false)
                         (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define BB2 (new button% [parent panelBB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina8)
                         (procesoterminar mina8);funcion para determinar si es mina y terminar el juego
                         (send BB2 set-label minaI8)
                         (send BB2 enable false)
                         (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define BB3 (new button% [parent panelBB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina9)
                         (procesoterminar mina9);funcion para determinar si es mina y terminar el juego
                         (send BB3 set-label minaI9)
                         (send BB3 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define BB4 (new button% [parent panelBB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina10)
                         (procesoterminar mina10);funcion para determinar si es mina y terminar el juego
                         (send BB4 set-label minaI10)
                         (send BB4 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define BB5 (new button% [parent panelBB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina11)
                         (procesoterminar mina11);funcion para determinar si es mina y terminar el juego
                         (send BB5 set-label minaI11)
                         (send BB5 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define BB6 (new button% [parent panelBB] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina12)
                         (procesoterminar mina12);funcion para determinar si es mina y terminar el juego
                         (send BB6 set-label minaI12)
                         (send BB6 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))


 ;::::::::::::::::::::::::::::::BOTONES PANEL C::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        


(define CC1 (new button% [parent panelCC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina13)
                         (procesoterminar mina13);funcion para determinar si es mina y terminar el juego
                         (send CC1 set-label minaI13)
                         (send CC1 enable false)
                         (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define CC2 (new button% [parent panelCC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina14)
                         (procesoterminar mina14);funcion para determinar si es mina y terminar el juego
                         (send CC2 set-label minaI14)
                         (send CC2 enable false)
                         (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define CC3 (new button% [parent panelCC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina15)
                         (procesoterminar mina15);funcion para determinar si es mina y terminar el juego
                         (send CC3 set-label minaI15)
                         (send CC3 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define CC4 (new button% [parent panelCC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina16)
                         (procesoterminar mina16);funcion para determinar si es mina y terminar el juego
                         (send CC4 set-label minaI16)
                         (send CC4 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define CC5 (new button% [parent panelCC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina17)
                         (procesoterminar mina17);funcion para determinar si es mina y terminar el juego
                         (send CC5 set-label minaI17)
                         (send CC5 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define CC6 (new button% [parent panelCC] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina18)
                         (procesoterminar mina18);funcion para determinar si es mina y terminar el juego
                         (send CC6 set-label minaI18)
                         (send CC6 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
 ;::::::::::::::::::::::::::::::BOTONES PANEL D::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::                        


(define DD1 (new button% [parent panelDD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina19)
                         (procesoterminar mina19);funcion para determinar si es mina y terminar el juego
                         (send DD1 set-label minaI19)
                         (send DD1 enable false)
                         (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define DD2 (new button% [parent panelDD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina20)
                         (procesoterminar mina20);funcion para determinar si es mina y terminar el juego
                         (send DD2 set-label minaI20)
                         (send DD2 enable false)
                         (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define DD3 (new button% [parent panelDD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina21)
                         (procesoterminar mina21);funcion para determinar si es mina y terminar el juego
                         (send DD3 set-label minaI21)
                         (send DD3 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))
(define DD4 (new button% [parent panelDD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina22)
                         (procesoterminar mina22);funcion para determinar si es mina y terminar el juego
                         (send DD4 set-label minaI22)
                         (send DD4 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define DD5 (new button% [parent panelDD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina23)
                         (procesoterminar mina23);funcion para determinar si es mina y terminar el juego
                         (send DD5 set-label minaI23)
                         (send DD5 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define DD6 (new button% [parent panelDD] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina24)
                         (procesoterminar mina24);funcion para determinar si es mina y terminar el juego
                         (send DD6 set-label minaI24)
                         (send DD6 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

;:::::::::::::::::::::::::::::::::::: BOTONES PANEL E ::::::::::::::::::::::::::::::::::::::::::::::::

(define EE1 (new button% [parent panelEE] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina25)
                         (procesoterminar mina25);funcion para determinar si es mina y terminar el juego
                         (send EE1 set-label minaI25)
                         (send EE1 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define EE2 (new button% [parent panelEE] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina26)
                         (procesoterminar mina26);funcion para determinar si es mina y terminar el juego
                         (send EE2 set-label minaI26)
                         (send EE2 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define EE3 (new button% [parent panelEE] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina27)
                         (procesoterminar mina27);funcion para determinar si es mina y terminar el juego
                         (send EE3 set-label minaI27)
                         (send EE3 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define EE4 (new button% [parent panelEE] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina28)
                         (procesoterminar mina28);funcion para determinar si es mina y terminar el juego
                         (send EE4 set-label minaI28)
                         (send EE4 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define EE5 (new button% [parent panelEE] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina29)
                         (procesoterminar mina29);funcion para determinar si es mina y terminar el juego
                         (send EE5 set-label minaI29)
                         (send EE5 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define EE6 (new button% [parent panelEE] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina30)
                         (procesoterminar mina30);funcion para determinar si es mina y terminar el juego
                         (send EE6 set-label minaI30)
                         (send EE6 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

;:::::::::::::::::::::::::::::::::::: BOTONES PANEL F ::::::::::::::::::::::::::::::::::::::::::::::::

(define FF1 (new button% [parent panelFF] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina31)
                         (procesoterminar mina31);funcion para determinar si es mina y terminar el juego
                         (send FF1 set-label minaI31)
                         (send FF1 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define FF2 (new button% [parent panelFF] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina32)
                         (procesoterminar mina32);funcion para determinar si es mina y terminar el juego
                         (send FF2 set-label minaI32)
                         (send FF2 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define FF3 (new button% [parent panelFF] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina33)
                         (procesoterminar mina33);funcion para determinar si es mina y terminar el juego
                         (send FF3 set-label minaI33)
                         (send FF3 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define FF4 (new button% [parent panelFF] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina34)
                         (procesoterminar mina34);funcion para determinar si es mina y terminar el juego
                         (send FF4 set-label minaI34)
                         (send FF4 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define FF5 (new button% [parent panelFF] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina35)
                         (procesoterminar mina35);funcion para determinar si es mina y terminar el juego
                         (send FF5 set-label minaI35)
                         (send FF5 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))

(define FF6 (new button% [parent panelFF] 
             [label (stop-icon #:color "white" #:height 25)]
             [callback (lambda (button event)
                         (procescontarpresionandoboton mina36)
                         (procesoterminar mina36);funcion para determinar si es mina y terminar el juego
                         (send FF6 set-label minaI36)
                         (send FF6 enable false)
                        (procesoterminar3 AA1 AA2 AA3 AA4 AA5 AA6 BB1 BB2 BB3 BB4 BB5 BB6 CC1 CC2 CC3 CC4 CC5 CC6 DD1
                                           DD2 DD3 DD4 DD5 DD6 EE1 EE2 EE3 EE4 EE5 EE6 FF1 FF2 FF3 FF4 FF5 FF6 juegoterminado mensajeJT)
                         )]))



;(send buscaminas36 show #t)