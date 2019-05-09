; La regla iniciar se emplea para preguntar sobre cuáles objetos se va inferir
; Generalmente se prunta por un organismo y un paciente, cuando el caso no
; requiere ambos se puede usar nil
 
(defrule iniciar
	(not (iniciado))
=>
	(printout t "Introduzca la instancia del organismo a consultar" crlf)
	(bind ?org (read))
	(printout t "Introduzca la instancia del paciente a consultar" crlf)
	(bind ?pac (read))
	(assert (iniciado))
	(assert (caso-organismo ?org))
	(assert (caso-paciente ?pac)))

; Clase abstracta organismos, representa a un organismo bacteriano y cuenta con 
; los slots identidad, resistente, sitio, gramm, morfologia. Generalmente cuando
; se crea una instancia sus slot tienen el valor nil.

(defclass organismos (is-a USER)
	(slot identidad (allowed-symbols salmonela klebsiella neumococo meningococo shigella estreptococo estafilococo e-coli-patogena proteus h-influenzae pseudomonas desconocido))
	(slot sensible (allowed-symbols nil penicilina))
	(slot resistente (allowed-symbols nil penicilina))
	(slot sitio (allowed-symbols nil sangre))
	(slot gramm (allowed-symbols nil + -))
	(slot morfologia (allowed-symbols nil bastones)))

; Clase abstracta organismos, representa a un paciente y cuenta con slots 
; referentes a estado, sintomas, alergias, etc. Generalmente cuando se crea una
; instancia sus slot tienen el valor nil.

(defclass pacientes (is-a USER)
	(slot tos (allowed-symbols nil + -))
	(slot pujo (allowed-symbols nil + -))
	(slot tenesmo (allowed-symbols nil + -))
	(slot estertores-alveolares (allowed-symbols nil + -))
	(slot condensacion (allowed-symbols nil + -))
	(slot disnea (allowed-symbols nil + -))
	(slot polipnea (allowed-symbols nil + -))
	(slot tiros (allowed-symbols nil + -))
	(slot cianosis (allowed-symbols nil + -))
	(slot meningismo (allowed-symbols nil + -))
	(slot miccion (allowed-symbols nil alterada normal))
	(slot evac-abundantes (allowed-symbols nil + -))
	(slot evac-frecuentes (allowed-symbols nil + -))
	(slot kernig (allowed-symbols nil + -))
	(slot brudzinski (allowed-symbols nil + -))
	(slot faringitico (allowed-symbols nil + -))
	(slot bronquitico (allowed-symbols nil + -))
	(slot otitico (allowed-symbols nil + -))
	(slot hipertermico (allowed-symbols nil + - inicial-excepto-rn-y-lactantes))
	(slot septicemico (allowed-symbols nil + -))
	(slot decaido (allowed-symbols nil + -))
	(slot anorexico (allowed-symbols nil + -))
	(slot anemico (allowed-symbols nil + -))
	(slot con-facies-toxicas (allowed-symbols nil + -))
	(slot polipneico (allowed-symbols nil + - sin-relacion-con-la-hipertermia))
	(slot oligurico (allowed-symbols nil + -))
	(slot cefalalgico (allowed-symbols nil + -))
	(slot meningitico (allowed-symbols nil + -))
	(slot quemado (allowed-symbols nil + -))
	(slot alergico-penicilina (allowed-symbols nil + -))
	(slot infec-urinaria (allowed-symbols nil + -))
	(slot hipertermia (allowed-symbols nil prolongada))
	(slot neumonico(allowed-symbols nil + -))
	(slot insuf-resp (allowed-symbols nil + -))
	(slot diarreico (allowed-symbols nil + -))
	(slot diarr-bact (allowed-symbols nil + -))
	(slot rigidez-nuca (allowed-symbols nil + -)))

; Comportamiento de la clase pacientes

(defmessage-handler pacientes tratamiento ()
(reset)
(run))

; Definición de objetos iniciales

(definstances baseMedica
	(org1 of organismos (identidad salmonela))
	(org2 of organismos (identidad estafilococo) (resistente penicilina))
	(org3 of organismos (identidad estreptococo))
	(org4 of organismos (identidad desconocido))
	(org5 of organismos (identidad pseudomonas) (sitio sangre) (gramm +) (morfologia bastones))
	(pac1 of pacientes (alergico-penicilina +))
	(pac2 of pacientes (hipertermia prolongada) (miccion alterada))
	(pac3 of pacientes (diarreico +) (hipertermico +))
	(pac4 of pacientes (faringitico +) (septicemico +) (quemado +))
	(pac5 of pacientes (rigidez-nuca +) (kernig +) (brudzinski +) (hipertermico +) (cefalalgico +)))

; Reglas de inerencia para determinar el paciente

(defrule regla008
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad estafilococo) (sensible penicilina))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina -))
=>
	(assert (paciente rx08 penicilina-g 5))
  	(printout t "paciente rx08 penicilina-g 5" crlf))

(defrule regla009
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad estafilococo) (sensible penicilina))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina +))
 =>
	(assert (paciente rx09 eritromicina))
   	(printout t "paciente alergico-penicilina +" crlf))

(defrule regla010
	(caso-organismo ?org)
	?o1 <- (object (is-a organismos) (name ?org) (identidad estafilococo)
	(resistente penicilina))
=>
	(assert (paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina))
	(printout t "paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina" crlf))

(defrule regla011
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad estreptococo))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina +))
=>
	(assert (paciente rx11 eritromicina 4 lincomicina 4))
	(printout t "paciente rx11 eritromicina 4 lincomicina 4" crlf))

(defrule regla012
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad estreptococo))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina -))
=>
	(assert (paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4))
	(printout t "paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4" crlf))

(defrule regla013
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad neumococo))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina +))
=>
	(assert (paciente rx13 eritromicina 5 lincomicina 5))
	(printout t "paciente rx13 eritromicina 5 lincomicina 5" crlf))

(defrule regla014
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad neumococo))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina -))
=>
	(assert (paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5))
	(printout t "paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5" crlf))

(defrule regla015
	(caso-organismo ?org)
	?o1 <- (object (is-a organismos) (name ?org) (identidad salmonela))
=>
	(assert (paciente rx15 cloromicetina 5 ampicilina 5))
	(printout t "paciente rx15 cloromicetina 5 ampicilina 5" crlf))

(defrule regla016
	(organismo identidad klebsiella)
=>
	(assert (paciente rx16 cloranfenicol+estreptomicina 5 tetraciclina+sulfonamidas 4 kanamicina 3))
	(printout t "paciente rx16 cloranfenicol+estreptomicina 5 tetraciclina+sulfonamidas 4 kanamicina 3" crlf))

(defrule regla017
	(caso-organismo ?org)
	?o1 <- (object (is-a organismos) (name ?org) (identidad e-coli-patogena))
=>
	(assert (paciente rx17 neomicina 5 ampicilina 4 tetraciclina 4))
	(printout t "paciente rx17 neomicina 5 ampicilina 4 tetraciclina 4" crlf))

(defrule regla018
	(caso-organismo ?org)
	?o1 <- (object (is-a organismos) (name ?org) (identidad pseudomonas))
=>
	(assert (paciente rx18 polimixina 5 cefalotina cefaloridina 5 gentacina))
	(printout t "paciente rx18 polimixina 5 cefalotina cefaloridina 5 gentacina" crlf))

(defrule regla019
	(caso-organismo ?org)
	?o1 <- (object (is-a organismos) (name ?org) (identidad proteus))
=>
	(assert (paciente rx19 cloranfenicol 5 kanamicina 5 tetraciclina 5))
	(printout t "paciente rx19 cloranfenicol 5 kanamicina 5 tetraciclina 5" crlf))

(defrule regla020
	(caso-organismo ?org)
	?o1 <- (object (is-a organismos) (name ?org) (identidad h-influenzae))
=>
	(assert (paciente rx20 ampicilina 5 cloranfenicol 4 tetraciclina 3))
	(printout t "paciente rx20 ampicilina 5 cloranfenicol 4 tetraciclina 3" crlf))

(defrule regla021
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad desconocido))
	?o2 <- (object (is-a pacientes) (name ?pac) (infec-urinaria +))
=>
	(assert (paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3))
	(printout t "paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3" crlf))

(defrule regla022
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (hipertermia prolongada) (miccion alterada))
=>
	(send ?pac put-infec-urinaria +)
	(assert (paciente infec-urinaria +))
	(printout t "paciente infec-urinaria +" crlf))

(defrule regla023_1
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad desconocido))
	?o2 <- (object (is-a pacientes) (name ?pac) (faringitico +))
=>
	(assert (paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))

(defrule regla023_2
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad desconocido))
	?o2 <- (object (is-a pacientes) (name ?pac) (bronquitico +))
=>
	(assert (paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))


(defrule regla023_3
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad desconocido))
	?o2 <- (object (is-a pacientes) (name ?pac) (otitico +))
=>
	(assert (paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))

(defrule regla024
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad desconocido))
	?o2 <- (object (is-a pacientes) (name ?pac) (diarr-bact +))
=>
	(assert (paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3))
	(printout t "paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3" crlf))

(defrule regla025
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad desconocido))
	?o2 <- (object (is-a pacientes) (name ?pac) (septicemico +))
=>
	(assert (paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4))
	(printout t "paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4" crlf))

(defrule regla026
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (hipertermico +) (diarreico +))
=>
	(send ?pac put-diarr-bact +)
	(assert (paciente diarr-bact +))
	(printout t "paciente diarr-bact +" crlf))

(defrule regla027_1
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (evac-abundantes +) (evac-frecuentes +) (tenesmo -))
=>
	(assert (paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))

(defrule regla027_2
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (evac-abundantes +) (evac-frecuentes +) (pujo -))
=>
	(assert (paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))

(defrule regla028_1
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (hipertermico +) (tos +) (insuf-resp +) (estertores-alveolares +))
=>
	(send ?pac set-neumonico +)
	(assert (paciente neumonico +))
	(printout t "paciente neumonico +" crlf))

(defrule regla028_2
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (hipertermico +) (tos +) (insuf-resp +) (condensacion +))
=>
	(send ?pac set-neumonico +)
	(assert (paciente neumonico +))
	(printout t "paciente neumonico +" crlf))

(defrule regla029_1
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (disnea +))
=>
	(send ?pac set-insuf-resp +)
	(assert (paciente insuf-resp +))
	(printout t "paciente insuf-resp +" crlf))

(defrule regla029_2
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (polipnea +))
=>
	(send ?pac set-insuf-resp +)
	(assert (paciente insuf-resp +))
	(printout t "paciente insuf-resp +" crlf))

(defrule regla029_3
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (tiros +))
=>
	(send ?pac set-insuf-resp +)
	(assert (paciente insuf-resp +))
	(printout t "paciente insuf-resp +" crlf))

(defrule regla029_4
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (cianosis +))
=>
	(send ?pac set-insuf-resp +)
	(assert (paciente insuf-resp +))
	(printout t "paciente insuf-resp +" crlf))

(defrule regla030
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad meningococo))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina +))
=>
	(assert (paciente rx30 lincomicina 4 eritromicina 3))
	(printout t "paciente rx30 lincomicina 4 eritromicina 3" crlf))

(defrule regla031
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad meningococo))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina -))
=>
	(assert (paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4))
	(printout t "paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4" crlf))

(defrule regla032
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad shigella))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina -))
=>
	(assert (paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4))
	(printout t "paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4" crlf))

(defrule regla033
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad shigella))
	?o2 <- (object (is-a pacientes) (name ?pac) (alergico-penicilina +))
=>
	(assert (paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4))
	(printout t "paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4" crlf))

(defrule regla034
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad desconocido))
	?o2 <- (object (is-a pacientes) (name ?pac) (septicemico +))
=>
	(assert (paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2))
	(printout t "paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2" crlf))

(defrule regla035_1
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (decaido +)(hipertermico inicial-excepto-rn-y-lactantes) (polipneico sin-relacion-con-la-hipertermia) (oligurico +))
=>
	(send ?pac put-septicemico +)
	(assert (paciente septicemico +))
	(printout t "paciente septicemico +" crlf))

(defrule regla035_2
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (anorexico +)(hipertermico inicial-excepto-rn-y-lactantes) (polipneico sin-relacion-con-la-hipertermia) (oligurico +))
=>
	(send ?pac put-septicemico +)
	(assert (paciente septicemico +))
	(printout t "paciente septicemico +" crlf))

(defrule regla035_3
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (anemico +)(hipertermico inicial-excepto-rn-y-lactantes) (polipneico sin-relacion-con-la-hipertermia) (oligurico +))
=>
	(send ?pac put-septicemico +)
	(assert (paciente septicemico +))
	(printout t "paciente septicemico +" crlf))

(defrule regla035_4
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (con-facies-toxicas +)(hipertermico inicial-excepto-rn-y-lactantes) (polipneico sin-relacion-con-la-hipertermia) (oligurico +))
=>
	(send ?pac put-septicemico +)
	(assert (paciente septicemico +))
	(printout t "paciente septicemico +" crlf))

(defrule regla036
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (hipertermico +) (cefalalgico +) (meningismo +))
=>
	(send ?pac put-meningitico +)
	(assert (paciente meningitico +))
	(printout t "paciente meningitico +" crlf))


(defrule regla037
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (identidad desconocido))
	?o2 <- (object (is-a pacientes) (name ?pac) (meningitico +))
=>
	(assert (paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa))
	(printout t "paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa" crlf))


(defrule regla038
	(caso-paciente ?pac)
	?o2 <- (object (is-a pacientes) (name ?pac) (rigidez-nuca +) (kernig +) (brudzinski +))
=>
	(send ?pac put-meningismo +)
	(assert (paciente meningismo +))
	(printout t "paciente meningismo +" crlf))


(defrule regla048
	(caso-organismo ?org)
	(caso-paciente ?pac)
	?o1 <- (object (is-a organismos) (name ?org) (sitio sangre) (gramm -) (morfologia bastones))
	?o2 <- (object (is-a pacientes) (name ?pac) (septicemico +) (quemado +))
=>
	(send ?org set-identidad pseudomonas)
	(assert (organismo identidad pseudomonas))
	(printout t "organismo identidad pseudomonas" crlf))
