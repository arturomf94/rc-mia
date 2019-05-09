;; (load /home/arturo/GitHub/rc-mia/tarea2/bayes_rules.clp)

(defrule get_prob
  (p ?event ?prob)
=>
	(printout t ?prob crlf))
