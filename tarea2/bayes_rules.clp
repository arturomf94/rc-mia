;; (load /home/arturo/GitHub/rc-mia/tarea2/bayes_rules.clp)

(defrule implication
  (p ?offspring ?parents 1)
  (t ?parents)
=>
  (printout t ?offspring " con probabilidad 1"))
