#lang racket/gui
; Creating the frame
(define frame(new frame% [label "Widget Gallery"]))

; Panel inside the frame
(define panel(new vertical-panel% [parent frame] [alignment '(center top)]))

; Button widget
(define button(new button%
                   (parent panel)
                   (label "Button")))

; Check-Box Widget
(define check-box(new check-box%
                      (parent panel)
                      (label "Check Box")
                      (value #t)))

; Choice Widget
(define choice(new choice%
                   (label "Choice")
                   (parent panel)
                   (choices (list "item 0" "item 1"))))

; Combo field Widget
(define combo-field(new combo-field%
                        (label "Combo")
                        (parent panel)
                        (choices (list "Field" "Desire"))
                        (init-value "Desire")))

; Editor Canvas Widget
(define editor-canvas(new editor-canvas%
                          (label "Editor Canvas")
                          (parent panel)))
(define text(new text%))
(send text insert "Editor Canvas")
(send editor-canvas set-editor text)

; Gauge widget
(define gauge(new gauge%
                  (label "Gauge")
                  (parent panel)
                  (range 100)))
(send gauge set-value 42)

; Group box panel Widget
(define group-box-panel(new group-box-panel%
                            (label "Group Box Panel")
                            (parent panel)))

; List Box Widget
(define list-box(new list-box%
                     (parent (new horizontal-panel%
                                  (parent panel)
                                  (style (list 'border))))
                     (label "List Box")
                     (choices (list "item 0" "item 1" "item 2"))
                     (style (list 'single
                                  'column-headers))
                     (columns (list "First Column"))))

; Menu bar Widget
(define menu-bar(new menu-bar%
                     (parent frame)))
(new menu%
     (label "&File")
     (parent menu-bar))
(new menu%
     (label "&Edit")
     (parent menu-bar))
(new menu%
     (label "&Paste")
     (parent menu-bar))

; Message Widget
(define msg(new message%
                (parent panel)
                (label "Message")))

; Panel Widget
(define a-panel(new panel%
                    (parent panel)
                    (style (list 'border))))
(new message%
     (parent a-panel)
     (label "Panel"))

; Radio Box Widget
(define radio-box(new radio-box%
                      (label "Radio Box")
                      (parent panel)
                      (choices (list "Button 1"
                                     "Button 2"
                                     "Button 3"))))

; Slider
(define slider(new slider%
                   (label "Slider")
                   (parent panel)
                   (min-value 0)
                   (max-value 100)
                   (init-value 42)))

; Tab Panel Widget
(define tab-panel(new tab-panel%
                      (parent panel)
                      (choices (list "tab 0"
                                     "tab 1"
                                     "tab 2"))))

; Text Field Widget
(define text-field (new text-field%
                        (label "Text")
                        (parent panel)
                        (init-value "Field")))

; Displaying the frame
(send frame show #t)
