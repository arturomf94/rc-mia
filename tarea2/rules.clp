(defrule regla008
	(organismo identidad estafilococo)
  	(organismo sensible penicilina)
  	(paciente alergico-penicilina -)
=>
	(assert (paciente rx08 penicilina-g 5))
  	(printout t "paciente rx08 penicilina-g 5" crlf))

(defrule regla009
	(organismo identidad estafilococo)
   	(organismo sensible penicilina)
   	(paciente alergico-penicilina +)
 =>
	(assert (paciente rx09 eritromicina))
   	(printout t "paciente alergico-penicilina +" crlf))

(defrule regla010
	(organismo identidad estafilococo)
	(organismo resistente penicilina)
=>
	(assert (paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina))
	(printout t "paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina" crlf))

(defrule regla011
	(organismo identidad estreptococo)
	(paciente alergico-penicilina +)
=>
	(assert (paciente rx11 eritromicina 4 lincomicina 4))
	(printout t "paciente rx11 eritromicina 4 lincomicina 4" crlf))

(defrule regla012
	(organismo identidad estreptococo)
	(paciente alergico-penicilina -)
=>
	(assert (paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4))
	(printout t "paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4" crlf))

(defrule regla013
	(organismo identidad neumococo)
	(paciente alergico-penicilina +)
=>
	(assert (paciente rx13 eritromicina 5 lincomicina 5))
	(printout t "paciente rx13 eritromicina 5 lincomicina 5" crlf))

(defrule regla014
	(organismo identidad neumococo)
	(paciente alergico-penicilina -)
=>
	(assert (paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5))
	(printout t "paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5" crlf))

(defrule regla015
	(organismo identidad salmonela)
=>
	(assert (paciente rx15 cloromicetina 5 ampicilina 5))
	(printout t "paciente rx15 cloromicetina 5 ampicilina 5" crlf))

(defrule regla016
	(organismo identidad klebsiella)
=>
	(assert (paciente rx16 cloranfenicol+estreptomicina 5 tetraciclina+sulfonamidas 4 kanamicina 3))
	(printout t "paciente rx16 cloranfenicol+estreptomicina 5 tetraciclina+sulfonamidas 4 kanamicina 3" crlf))

(defrule regla017
	(organismo identidad e-coli-patogena)
=>
	(assert (paciente rx17 neomicina 5 ampicilina 4 tetraciclina 4))
	(printout t "paciente rx17 neomicina 5 ampicilina 4 tetraciclina 4" crlf))

(defrule regla018
	(organismo identidad pseudomonas)
=>
	(assert (paciente rx18 polimixina 5 cefalotina cefaloridina 5 gentacina))
	(printout t "paciente rx18 polimixina 5 cefalotina cefaloridina 5 gentacina" crlf))

(defrule regla019
	(organismo identidad proteus)
=>
	(assert (paciente rx19 cloranfenicol 5 kanamicina 5 tetraciclina 5))
	(printout t "paciente rx19 cloranfenicol 5 kanamicina 5 tetraciclina 5" crlf))

(defrule regla020
	(organismo identidad h-influenzae)
=>
	(assert (paciente rx20 ampicilina 5 cloranfenicol 4 tetraciclina 3))
	(printout t "paciente rx20 ampicilina 5 cloranfenicol 4 tetraciclina 3" crlf))

(defrule regla021
	(paciente infec-urinaria +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3))
	(printout t "paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3" crlf))

(defrule regla022
	(paciente hipertermia prolongada)
	(paciente miccion alterada)
=>
	(assert (paciente infec-urinaria +))
	(printout t "paciente infec-urinaria +" crlf))

(defrule regla023_1
	(paciente faringitico +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))

(defrule regla023_2
	(paciente bronquitico +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))
(defrule regla023
	(paciente faringitico/bronquitico/otitico +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))
(defrule regla023_3
	(paciente otitico +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))

(defrule regla024
	(paciente diarr-bact +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3))
	(printout t "paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3" crlf))

(defrule regla025
	(paciente septicemico +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4))
	(printout t "paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4" crlf))

(defrule regla026
	(paciente hipertermico +)
	(paciente diarreico +)
=>
	(assert (paciente diarr-bact +))
	(printout t "paciente diarr-bact +" crlf))

(defrule regla027
	(paciente evac-abundantes +)
	(paciente evac-frecuentes +)
	(paciente pujo/tenesmo -)
=>
	(assert (paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3))
	(printout t "paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))

(defrule regla028_1
	(paciente hipertermico +)
	(paciente tos +)
	(paciente insuf-resp +)
	(paciente estertores-alveolares +)
=>
	(assert (paciente neumonico +))
	(printout t "paciente neumonico +" crlf))

(defrule regla028
	(paciente hipertermico +)
	(paciente tos +)
	(paciente insuf-resp +)
	(paciente condensacion +)
=>
	(assert (paciente neumonico +))
	(printout t "paciente neumonico +" crlf))

(defrule regla029_1
	(paciente disnea +)
=>
	(assert (paciente insuf-res +))
	(printout t "paciente insuf-res +" crlf))

(defrule regla029_2
	(paciente polipnea +)
=>
	(assert (paciente insuf-res +))
	(printout t "paciente insuf-res +" crlf))

(defrule regla029_3
	(paciente tiros +)
=>
	(assert (paciente insuf-res +))
	(printout t "paciente insuf-res +" crlf))

(defrule regla029_4
	(paciente cianosis +)
=>
	(assert (paciente insuf-res +))
	(printout t "paciente insuf-res +" crlf))

(defrule regla030
	(organismo identidad meningococo)
	(paciente alergico-penicilina +)
=>
	(assert (paciente rx30 lincomicina 4 eritromicina 3))
	(printout t "paciente rx30 lincomicina 4 eritromicina 3" crlf))

(defrule regla031
	(organismo identidad meningococo)
	(paciente alergico-penicilina -)
=>
	(assert (paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4))
	(printout t "paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4" crlf))

(defrule regla032
	(organismo identidad shigella)
	(paciente alergico-penicilina -)
=>
	(assert (paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4))
	(printout t "paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4" crlf))

(defrule regla033
	(organismo identidad shigella)
	(paciente alergico-penicilina +)
=>
	(assert (paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4))
	(printout t "paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4" crlf))

(defrule regla034
	(paciente septicemico +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2))
	(printout t "paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2" crlf))

(defrule regla035_1
	(paciente decaido +)
 	(paciente hipertermico inicial-excepto-rn-y-lactantes)
	(paciente polipneico sin-relacion-con-la-hipertermia)
	(paciente oligurico +)
=>
	(assert (paciente septicemico +))
	(printout t "paciente septicemico +" crlf))

(defrule regla035_2
	(paciente anorexico +)
	(paciente hipertermico inicial excepto rn y lactantes)
	(paciente polipneico sin relacion con la hipertermia)
	(paciente oligurico +)
=>
	(assert (paciente septicemico +))
	(printout t "paciente septicemico +" crlf))

(defrule regla035_3
	(paciente anemico +)
	(paciente hipertermico inicial excepto rn y lactantes)
	(paciente polipneico sin relacion con la hipertermia)
	(paciente oligurico +)
=>
	(assert (paciente septicemico +))
	(printout t "paciente septicemico +" crlf))

(defrule regla035_4
	(paciente con-facies-toxica +)
	(paciente hipertermico inicial excepto rn y lactantes)
	(paciente polipneico sin relacion con la hipertermia)
	(paciente oligurico +)
=>
	(assert (paciente septicemico +))
	(printout t "paciente septicemico +" crlf))

(defrule regla036
	(paciente hipertermico +)
	(paciente cefalalgico +)
	(paciente meningismo +)
=>
	(assert (paciente meningitico +))
	(printout t "paciente meningitico +" crlf))


(defrule regla037
	(paciente meningitico +)
	(organismo identidad desconocido)
=>
	(assert (paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa))
	(printout t "paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa" crlf))


(defrule regla038
	(paciente rigidez-nuca +)
	(paciente kernig +)
	(paciente brudzinski +)
=>
	(assert (paciente meningismo +))
	(printout t "paciente meningismo +" crlf))


(defrule regla048
	(paciente septicemico)
	(organismo sitio sangre)
	(organismo gramm -)
	(organismo morfologia bastones)
	(paciente quemado +)
=>
	(assert (organismo identidad pseudomonas))
	(printout t "organismo identidad pseudomonas" crlf))
