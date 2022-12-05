#lang racket/gui
(define dialog (instantiate dialog% ("Example")))

(new text-field% [parent dialog] [label "Your name"])

(define panel(new horizontal-panel%
                  [parent dialog]
                  [alignment '(center center)]))

(new button% [parent panel] [label "cancel"])
(new button% [parent panel] [label "ok"])
(when (system-position-ok-before-cancel?)
  (send panel change-children reverse))

(send dialog show #t)
