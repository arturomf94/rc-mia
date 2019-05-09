;; (load /home/arturo/GitHub/rc-mia/tarea2/bayes_rules.clp)

(defrule combinations2
   (evidencia ?e1)
   (evidencia ?e2)
   (test (not (eq ?e1 ?e2)))
   =>
   (assert (evidencia ?e1 ?e2)))

(defrule combinations3
    (evidencia ?e1)
    (evidencia ?e2)
    (evidencia ?e3)
    (test (not (eq ?e1 ?e2)))
    (test (not (eq ?e2 ?e3)))
    (test (not (eq ?e1 ?e3)))
    =>
    (assert (evidencia ?e1 ?e2 ?e3)))

(defrule removeduplicates
    ?f1 <- (fact ?number1)
    ?f2 <- (fact ?number2)
    (test (eq ?number1 ?number2))
    =>
    (retract ?f1)
)

(defrule implication
  (evidencia ?parents1)
  (p ?offspring ?parents2 1)
  (test (eq ?parents1 ?parents2))
=>
  (printout t ?offspring " con probabilidad 1" crlf))
