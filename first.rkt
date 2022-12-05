#lang racket/gui
; make a frame by instantiating the frame% class
(define frame(new frame% [label "example"]))

(define msg (new message% [parent frame]
                 [label "No events so far"]))

(new button% [parent frame]
     [label "Click me!"]
     [callback (lambda (button event)
                 (send msg set-label "Button Clicked"))])

(define my-canvas%
  (class canvas%
    (define/override (on-event event)
      (send msg set-label "Canvas mouse"))
    (define/override (on-char event)
      (send msg set-label "Canvas keyboard"))
    (super-new)))

(new my-canvas% [parent frame])

(new button% [parent frame]
     [label "pause"]
     [callback (lambda (button event) (sleep 5))])

(define panel(new horizontal-panel%[parent frame]))
(new button% [parent panel]
     [label "Left"]
     [callback (lambda (button event)
                 (send msg set-label "Left click"))])
(new button% [parent panel]
     [label "Right"]
     [callback (lambda (button event)
                 (send msg set-label "Right click"))])

; showing the frame by calling its show method
(send frame show #t)