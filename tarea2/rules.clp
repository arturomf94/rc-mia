(defrule regla008
  (organismo identidad estafilococo)
  (organismo sensible penicilina)
  (paciente alergico-penicilina -)
=>
  (assert (paciente rx08 penicilina-g 5)))

(defrule regla009
   (organismo identidad estafilococo)
   (organismo sensible penicilina)
   (paciente alergico-penicilina +)
 =>
   (assert (paciente rx09 eritromicina)))

(defrule regla010
  (organismo identidad estafilococo)
  (organismo resistente penicilina)
=>
  (assert (paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina)))

(defrule regla011
	(organismo identidad estreptococo)
	(paciente alergico-penicilina +)
=>
	(assert (paciente rx11 eritromicina 4 lincomicina 4)))


(defrule regla012
	(organismo identidad estreptococo)
	(paciente alergico-penicilina -)
=>
	(assert (paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4)))


(defrule regla013
	(organismo identidad neumococo)
  (paciente alergico-penicilina +)
=>
	(assert (paciente rx13 eritromicina 5 lincomicina 5)))


(defrule regla014
	(organismo identidad neumococo)
  (paciente alergico-penicilina -)
=>
	(assert (paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5)))


(defrule regla015
	(organismo identidad salmonela)
=>
	(assert (paciente rx15 cloromicetina 5 ampicilina 5)))


(defrule regla016
	(organismo identidad klebsiella)
=>
	(assert (paciente rx16 cloranfenicol+estreptomicina 5 tetraciclina+sulfonamidas 4 kanamicina 3)))


(defrule regla017
	(organismo identidad e-coli-patogena)
=>
	(assert (paciente rx17 neomicina 5 ampicilina 4 tetraciclina 4)))


(defrule regla018
	(organismo identidad pseudomonas)
=>
	(assert (paciente rx18 polimixina 5 cefalotina cefaloridina 5 gentacina)))


(defrule regla019
	(organismo identidad proteus)
=>
	(assert (paciente rx19 cloranfenicol 5 kanamicina 5 tetraciclina 5)))


(defrule regla020
	(organismo identidad h-influenzae)
=>
	(assert (paciente rx20 ampicilina 5 cloranfenicol 4 tetraciclina 3)))


(defrule regla021
	(paciente infec-urinaria +)
	(organismo identidad ?)
=>
	(assert (paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3)))


(defrule regla022
  (paciente hipertermia prolongada)
  (paciente miccion alterada)
=>
	(assert (paciente infec-urinaria +)))


(defrule regla023
  (paciente faringitico/bronquitico/otitico +)
	(organismo identidad ?)
=>
	(assert (paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3)))


(defrule regla024
  (paciente diarr-bact +)
	(organismo identidad ?)
=>
	(assert (paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3)))


(defrule regla025
  (paciente septicemico +)
	(organismo identidad ?)
=>
	(assert (paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4)))


(defrule regla026
  (paciente hipertermico +)
  (paciente diarreico +)
=>
	(assert (paciente diarr-bact +)))


(defrule regla027
  (paciente evac-abundantes +)
  (paciente evac-frecuentes +)
  (paciente pujo/tenesmo -)
=>
	(assert (paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3)))


(defrule regla028
  (paciente hipertermico +)
  (paciente tos +)
  (paciente insuf-resp +)
  (paciente estertores-alveolares/condensacion +)
=>
	(assert (paciente neumonico +)))


(defrule regla029
  (paciente disnea/polipnea/tiros/cianosis +)
=>
	(assert (paciente insuf-res +)))


(defrule regla030
	(organismo identidad meningococo)
  (paciente alergico-penicilina +)
=>
	(assert (paciente rx30 lincomicina 4 eritromicina 3)))


(defrule regla031
	(organismo identidad meningococo)
  (paciente alergico-penicilina -)
=>
	(assert (paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4)))


(defrule regla032
	(organismo identidad shigella)
  (paciente alergico-penicilina -)
=>
	(assert (paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4)))


(defrule regla033
	(organismo identidad shigella)
  (paciente alergico-penicilina +)
=>
	(assert (paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4)))


(defrule regla034
  (paciente septicemico +)
  (organismo identidad ?)
=>
	(assert (paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2)))


(defrule regla035_1
  (paciente decaido +)
  (paciente hipertermico inicial excepto rn y lactantes)
  (paciente polipneico sin relacion con la hipertermia)
  (paciente oligurico +)
=>
	(assert (paciente septicemico +)))

(defrule regla035_2
  (paciente anorexico +)
  (paciente hipertermico inicial excepto rn y lactantes)
  (paciente polipneico sin relacion con la hipertermia)
  (paciente oligurico +)
=>
	(assert (paciente septicemico +)))

(defrule regla035_3
  (paciente anemico +)
  (paciente hipertermico inicial excepto rn y lactantes)
  (paciente polipneico sin relacion con la hipertermia)
  (paciente oligurico +)
=>
	(assert (paciente septicemico +)))

(defrule regla035_4
  (paciente con-facies-toxica +)
  (paciente hipertermico inicial excepto rn y lactantes)
  (paciente polipneico sin relacion con la hipertermia)
  (paciente oligurico +)
=>
	(assert (paciente septicemico +)))

(defrule regla036
  (paciente hipertermico +)
  (paciente cefalalgico +)
  (paciente meningismo +)
=>
	(assert (paciente meningitico +)))


(defrule regla037
  (paciente meningitico +)
  (organismo identidad ?)
=>
	(assert (paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa)))


(defrule regla038
  (paciente rigidez-nuca +)
  (paciente kernig +)
  (paciente brudzinski +)
=>
	(assert (paciente meningismo +)))


(defrule regla048
  (paciente septicemico)
  (organismo sitio sangre)
  (organismo gramm -)
  (organismo morfologia bastones)
  (paciente quemado +)
=>
	(assert (organismo identidad pseudomonas)))
