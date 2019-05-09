;; (load /home/arturo/GitHub/rc-mia/tarea2/rules.clp)

(deftemplate organismo

	(slot identidad
	(default x))

	(slot sensible
	(default x))

	(slot resistente
	(default x))

	(slot sitio
	(default x))

	(slot gramm
	(default x))

	(slot morfologia
	(default x)))


(deftemplate paciente

	(slot alergico-penicilina
	(default x))

	(slot hipertermia
	(default x))

	(slot miccion
	(default x))

	(slot faringitico
	(default x))

	(slot bronquitico
	(default x))

	(slot otitico
	(default x))

	(slot diarr-bact
	(default x))

	(slot infec-urinaria
	(default x))

	(slot septicemico
	(default x))

	(slot diarreico
	(default x))

	(slot evac-abundantes
	(default x))

	(slot evac-frecuentes
	(default x))

	(slot pujo
	(default x))

	(slot tenesmo
	(default x))

	(slot hipertermico
	(default x))

	(slot tos
	(default x))

	(slot insuf-resp
	(default x))

	(slot estertores-alveolares
	(default x))

	(slot condensacion
	(default x))

	(slot disnea
	(default x))

	(slot polipnea
	(default x))

	(slot tiros
	(default x))

	(slot cianosis
	(default x))

	(slot anorexico
	(default x))

	(slot anemico
	(default x))

	(slot con-facies-toxica
	(default x))

	(slot polipneico
	(default x))

	(slot oligurico
	(default x))

	(slot cefalalgico
	(default x))

	(slot meningismo
	(default x))

	(slot meningitico
	(default x))

	(slot rigidez-nuca
	(default x))

	(slot kernig
	(default x))

	(slot brudzinski
	(default x))

	(slot quemado
	(default x))

	(slot decaido
	(default x))

	(slot neumonico
	(default x)))




(defrule regla008
   (organismo (identidad ?estafilococo))
   (organismo (sensible ?penicilina))
   (paciente (alergico-penicilina ?negativo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?estafilococo estafilococo) then (bind ?certeza (+ ?certeza 23)))
   (if (eq ?penicilina penicilina) then (bind ?certeza (+ ?certeza 12)))
   (if (eq ?negativo negativo) then (bind ?certeza (+ ?certeza 36)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: penicilina-g 5. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla009
   (organismo (identidad ?estafilococo))
   (organismo (sensible ?penicilina))
   (paciente (alergico-penicilina ?positivo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?estafilococo estafilococo) then (bind ?certeza (+ ?certeza 34)))
   (if (eq ?penicilina penicilina) then (bind ?certeza (+ ?certeza 33)))
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 33)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: eritromicina. Con una certeza de: " ?certeza "%" crlf))
   ))


(defrule regla010
   (organismo (identidad ?estafilococo))
   (organismo (resistente ?penicilina))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?estafilococo estafilococo) then (bind ?certeza (+ ?certeza 10)))
   (if (eq ?penicilina penicilina) then (bind ?certeza (+ ?certeza 80)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla011
   (organismo (identidad ?estreptococo))
   (paciente (alergico-penicilina ?positivo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?estreptococo estreptococo) then (bind ?certeza (+ ?certeza 70)))
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 30)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: eritromicina 4 lincomicina 4. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla012
   (organismo (identidad ?estreptococo))
   (paciente (alergico-penicilina ?negativo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?estreptococo estreptococo) then (bind ?certeza (+ ?certeza 50)))
   (if (eq ?negativo negativo) then (bind ?certeza (+ ?certeza 40)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: penicilina-g 5 eritromicina 4 lincomicina 4. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla013
   (organismo (identidad ?neumococo))
   (paciente (alergico-penicilina ?positivo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?neumococo neumococo) then (bind ?certeza (+ ?certeza 40)))
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 45)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: eritromicina 5 lincomicina 5. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla014
   (organismo (identidad ?neumococo))
   (paciente (alergico-penicilina ?negativo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?neumococo neumococo) then (bind ?certeza (+ ?certeza 50)))
   (if (eq ?negativo negativo) then (bind ?certeza (+ ?certeza 50)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: penicilina-g 5 eritromicina 5 lincomicina 5. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla015
   (organismo (identidad ?salmonela))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?salmonela salmonela) then (bind ?certeza (+ ?certeza 90)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: cloromicetina 5 ampicilina 5. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla016
   (organismo (identidad ?klebsiella))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?klebsiella klebsiella) then (bind ?certeza (+ ?certeza 99)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: cloranfenicolpositivoestreptomicina 5 tetraciclinapositivosulfonamidas 4 kanamicina 3. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla017
   (organismo (identidad ?e-coli-patogena))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?e-coli-patogena e-coli-patogena) then (bind ?certeza (+ ?certeza 97)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: neomicina 5 ampicilina 4 tetraciclina 4. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla018
   (organismo (identidad ?pseudomonas))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?pseudomonas pseudomonas) then (bind ?certeza (+ ?certeza 89)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: polimixina 5 cefalotina cefaloridina 5 gentacina. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla019
   (organismo (identidad ?proteus))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?proteus proteus) then (bind ?certeza (+ ?certeza 95)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: cloranfenicol 5 kanamicina 5 tetraciclina 5. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla020
   (organismo (identidad ?h-influenzae))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?h-influenzae h-influenzae) then (bind ?certeza (+ ?certeza 90)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: ampicilina 5 cloranfenicol 4 tetraciclina 3. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla021
   (paciente (infec-urinaria ?positivo))
   (organismo (identidad ?desconocido))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 34)))
   (if (eq ?desconocido desconocido) then (bind ?certeza (+ ?certeza 60)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: tetraciclina 3 kanamicina 3 lincomicina 3. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla022
   (paciente (hipertermia ?prolongada))
   (paciente (miccion ?alterada))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?prolongada prolongada) then (bind ?certeza (+ ?certeza 45)))
   (if (eq ?alterada alterada) then (bind ?certeza (+ ?certeza 55)))
   (if (> ?certeza 0) then (printout t "El paciente presenta: infec-urinaria positivo. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla023
   (paciente (faringitico ?positivo))
   (paciente (bronquitico ?positivo2))
   (paciente (otitico ?positivo3))
   (organismo (identidad ?desconocido))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 10)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 20)))
   (if (eq ?positivo3 positivo) then (bind ?certeza (+ ?certeza 30)))
   (if (eq ?desconocido desconocido) then (bind ?certeza (+ ?certeza 30)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla024
   (paciente (diarr-bact ?positivo))
   (organismo (identidad ?desconocido))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 30)))
   (if (eq ?desconocido desconocido) then (bind ?certeza (+ ?certeza 70)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: ampicilina 4 lincomicina 3 tetraciclina 3. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla025
   (paciente (septicemico ?positivo))
   (organismo (identidad ?desconocido))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 53)))
   (if (eq ?desconocido desconocido) then (bind ?certeza (+ ?certeza 42)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla026
   (paciente (hipertermico ?positivo))
   (paciente (diarreico ?positivo2))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 46)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 46)))
   (if (> ?certeza 0) then (progn (printout t "El paciente presenta: diarr-bact positivo. Con una certeza de: " ?certeza "%" crlf)
   ;(assert (paciente (diarr-bact positivo)) (organismo))
   ))))

(defrule regla027
   (paciente (evac-abundantes ?positivo))
   (paciente (evac-frecuentes ?positivo2))
   (paciente (pujo ?negativo))
   (paciente (tenesmo ?negativo2))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 25)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 22)))
   (if (eq ?negativo negativo) then (bind ?certeza (+ ?certeza 24)))
   (if (eq ?negativo2 negativo) then (bind ?certeza (+ ?certeza 26)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla028
   (paciente (hipertermico ?positivo))
   (paciente (tos ?positivo2))
   (paciente (insuf-resp ?positivo3))
   (paciente (estertores-alveolares ?positivo4))
   (paciente (condensacion ?positivo5))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 5)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 20)))
   (if (eq ?positivo3 positivo) then (bind ?certeza (+ ?certeza 22)))
   (if (eq ?positivo4 positivo) then (bind ?certeza (+ ?certeza 30)))
   (if (eq ?positivo5 positivo) then (bind ?certeza (+ ?certeza 23)))
   (if (> ?certeza 0) then (progn (printout t "El paciente presenta: neumonico positivo. Con una certeza de: " ?certeza "%" crlf)
   ;(assert (paciente (neumonico positivo)) (organismo))
   ))))

(defrule regla029
   (paciente (disnea ?positivo))
   (paciente (polipnea ?positivo2))
   (paciente (tiros ?positivo3))
   (paciente (cianosis ?positivo4))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 25)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 25)))
   (if (eq ?positivo3 positivo) then (bind ?certeza (+ ?certeza 25)))
   (if (eq ?positivo4 positivo) then (bind ?certeza (+ ?certeza 25)))
   (if (> ?certeza 0) then (progn (printout t "El paciente presenta: insuf-res positivo. Con una certeza de: " ?certeza "%" crlf)
   ;(assert (paciente (insuf-resp positivo)) (organismo))
   ))))

(defrule regla030
  (organismo (identidad ?meningococo))
  (paciente (alergico-penicilina ?positivo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?meningococo meningococo) then (bind ?certeza (+ ?certeza 51)))
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 41)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: lincomicina 4 eritromicina 3. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla031
  (organismo (identidad ?meningococo))
  (paciente (alergico-penicilina ?negativo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?meningococo meningococo) then (bind ?certeza (+ ?certeza 42)))
   (if (eq ?negativo negativo) then (bind ?certeza (+ ?certeza 33)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: penicilicina-g 5 lincomicina 4 ampicilina 4. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla032
   (organismo (identidad ?shigella))
   (paciente (alergico-penicilina ?negativo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?shigella shigella) then (bind ?certeza (+ ?certeza 45)))
   (if (eq ?negativo negativo) then (bind ?certeza (+ ?certeza 51)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: ampicilina 5 tetraciclina 4 paramomicina 4. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla033
   (organismo (identidad ?shigella))
   (paciente (alergico-penicilina ?positivo))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?shigella shigella) then (bind ?certeza (+ ?certeza 33)))
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 33)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: tetraciclina 4 lincomicina 4 paramomicina 4. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla034
  (paciente (septicemico ?positivo))
  (organismo (identidad ?desconocido))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 60)))
   (if (eq ?desconocido desconocido) then (bind ?certeza (+ ?certeza 40)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla035
  (paciente (decaido ?positivo))
  (paciente (anorexico ?positivo2))
  (paciente (anemico ?positivo3))
  (paciente (con-facies-toxica ?positivo4))
  (paciente (hipertermico ?inicial-excepto-rn-y-lactantes))
  (paciente (polipneico ?sin-relacion-con-la-hipertermia))
  (paciente (oligurico ?positivo5))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 15)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 12)))
   (if (eq ?positivo3 positivo) then (bind ?certeza (+ ?certeza 13)))
   (if (eq ?positivo4 positivo) then (bind ?certeza (+ ?certeza 16)))
   (if (eq ?inicial-excepto-rn-y-lactantes inicial-excepto-rn-y-lactantes) then (bind ?certeza (+ ?certeza 18)))
   (if (eq ?sin-relacion-con-la-hipertermia sin-relacion-con-la-hipertermia) then (bind ?certeza (+ ?certeza 9)))
   (if (eq ?positivo5 positivo) then (bind ?certeza (+ ?certeza 9)))
   (if (> ?certeza 0) then (progn (printout t "El paciente es: septicemico positivo. Con una certeza de: " ?certeza "%" crlf)
   ;(assert (paciente (septicemico positivo)) (organismo))
   ))))

(defrule regla036
  (paciente (hipertermico ?positivo))
  (paciente (cefalalgico ?positivo2))
  (paciente (meningismo ?positivo3))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 9)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 38)))
   (if (eq ?positivo3 positivo) then (bind ?certeza (+ ?certeza 29)))
   (if (> ?certeza 0) then (progn (printout t "El paciente es: meningitico positivo. Con una certeza de: " ?certeza "%" crlf)
   ;(assert (paciente (meningitico positivo)) (organismo))
   ))))

(defrule regla037
  (paciente (meningitico ?positivo))
  (organismo (identidad ?desconocido))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 46)))
   (if (eq ?desconocido desconocido) then (bind ?certeza (+ ?certeza 46)))
   (if (> ?certeza 0) then (printout t "El tratammiento a seguir es: penicilina-g 3 lincomicina 2 tetraciclina 3 endovenosa. Con una certeza de: " ?certeza "%" crlf))
   ))

(defrule regla038
  (paciente (rigidez-nuca ?positivo))
  (paciente (kernig ?positivo2))
  (paciente (brudzinski ?positivo3))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 33)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 33)))
   (if (eq ?positivo3 positivo) then (bind ?certeza (+ ?certeza 33)))
   (if (> ?certeza 0) then (progn (printout t "El paciente presenta: meningismo positivo. Con una certeza de: " ?certeza "%" crlf)
   ;(assert (paciente (meningismo positivo)) (organismo))
   ))))


(defrule regla048
  (paciente (septicemico ?positivo))
  (organismo (sitio ?sangre))
  (organismo (gramm ?negativo))
  (organismo (morfologia ?bastones))
  (paciente (quemado ?positivo2))
=>
   (progn
   (bind ?certeza 0)
   (if (eq ?positivo positivo) then (bind ?certeza (+ ?certeza 28)))
   (if (eq ?sangre sangre) then (bind ?certeza (+ ?certeza 20)))
   (if (eq ?negativo negativo) then (bind ?certeza (+ ?certeza 21)))
   (if (eq ?bastones bastones) then (bind ?certeza (+ ?certeza 25)))
   (if (eq ?positivo2 positivo) then (bind ?certeza (+ ?certeza 23)))
   (if (> ?certeza 0) then (progn (printout t "El paciente presenta: organismo identidad pseudomonas. Con una certeza de: " ?certeza "%" crlf)
   ;(assert (organismo (identidad pseudomonas)) (paciente))
   ))))
