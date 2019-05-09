
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
   (or (organismo (identidad estafilococo))
   (organismo (sensible penicilina))
   (paciente (alergico-penicilina -)))
=>
   
(printout t "La superclase es el tratamiento: penicilina-g 5" crlf))

(defrule regla009 
   (or (organismo (identidad estafilococo))
   (organismo (sensible penicilina))
   (paciente (alergico-penicilina +)))
=>
   (printout t "La superclase es el tratamiento: eritromicina" crlf))


(defrule regla010 
   (or (organismo (identidad estafilococo))
   (organismo (resistente penicilina)))
=>
   (printout t "La superclase es el tratamiento: cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina" crlf))


(defrule regla011 
   (or (organismo (identidad estreptococo))
   (paciente (alergico-penicilina +)))
=>
   (printout t "La superclase es el tratamiento: eritromicina 4 lincomicina 4" crlf))


(defrule regla012 
   (or (organismo (identidad estreptococo))
   (paciente (alergico-penicilina -)))
=>
   (printout t "La superclase es el tratamiento: penicilina-g 5 eritromicina 4 lincomicina 4" crlf))


(defrule regla013 
   (or (organismo (identidad neumococo))
   (paciente (alergico-penicilina +)))
=>
   (printout t "La superclase es el tratamiento: eritromicina 5 lincomicina 5" crlf))


(defrule regla014 
   (or (organismo (identidad neumococo))
   (paciente (alergico-penicilina -)))
=>
   (printout t "La superclase es el tratamiento: penicilina-g 5 eritromicina 5 lincomicina 5" crlf))


(defrule regla015 
   (organismo (identidad salmonela))
=>
   (printout t "La superclase es el tratamiento: cloromicetina 5 ampicilina 5" crlf))


(defrule regla016 
   (organismo (identidad klebsiella))
=>
   (printout t "La superclase es el tratamiento: cloranfenicol-estreptomicina 5 tetraciclina-sulfonamidas 4 kanamicina 3" crlf))


(defrule regla017 
   (organismo (identidad e-coli-patogena))
=>
   (printout t "La superclase es el tratamiento: neomicina 5 ampicilina 4 tetraciclina 4" crlf))


(defrule regla018 
   (organismo (identidad pseudomonas))
=>
   (printout t "La superclase es el tratamiento: polimixina 5 cefalotina cefaloridina 5 gentacina" crlf))


(defrule regla019 
   (organismo (identidad proteus))
=>
   (printout t "La superclase es el tratamiento: cloranfenicol 5 kanamicina 5 tetraciclina 5" crlf))


(defrule regla020 
   (organismo (identidad h-influenzae))
=>
   (printout t "La superclase es el tratamiento: ampicilina 5 cloranfenicol 4 tetraciclina 3" crlf))


(defrule regla021 
   (or (paciente (infec-urinaria +))
   (organismo (identidad desconocido)))
=>
  (printout t "La superclase es el tratamiento: tetraciclina 3 kanamicina 3 lincomicina 3" crlf))


(defrule regla022 
   (or (paciente (hipertermia prolongada))
   (paciente (miccion alterada)))
=>
   (progn
   (printout t "La superclase es (paciente (infec-urinaria +))" crlf)
   (assert (paciente (infec-urinaria +)))
   ))


(defrule regla023 
   (or (paciente (faringitico +))
   (paciente (bronquitico +))
   (paciente (otitico +))
   (organismo (identidad desconocido)))
=>
   (printout t "La superclase es el tratamiento: cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))


(defrule regla024 
   (or (paciente (diarr-bact +))
   (organismo (identidad desconocido)))
=>
   (printout t "La superclase es el tratamiento: ampicilina 4 lincomicina 3 tetraciclina 3" crlf))


(defrule regla025 
   (or (paciente (septicemico +))
   (organismo (identidad desconocido)))
=>
   (printout t "La superclase es el tratamiento: cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4" crlf))


(defrule regla026 
   (or (paciente (hipertermico +))
   (paciente (diarreico +)))
=>
   (progn
   (printout t "La superclase es (paciente (diarr-bact +))" crlf)
   (assert (paciente (diarr-bact +)))))

(defrule regla027 
   (or (paciente (evac-abundantes +))
   (paciente (evac-frecuentes +))
   (paciente (pujo -))
   (paciente (tenesmo -)))
=>
   (printout t "La superclase es el tratamiento: cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3" crlf))


(defrule regla028 
   (or (paciente (hipertermico +))
   (paciente (tos +))
   (paciente (insuf-resp +))
   (paciente (estertores-alveolares +))
   (paciente (condensacion +)))
=>
   (progn
   (printout t "La superclase es (paciente (neumonico +))" crlf)
   (assert (paciente (neumonico +)))))

(defrule regla029 
   (or (paciente (disnea +))
   (paciente (polipnea +))
   (paciente (tiros +))
   (paciente (cianosis +)))
=>
   (progn
   (printout t "La superclase es (paciente (insuf-resp +))" crlf)
   (assert (paciente (insuf-resp +)))))


(defrule regla030 
  (or (organismo (identidad meningococo))
  (paciente (alergico-penicilina +)))
=>
  (printout t "La superclase es el tratamiento: lincomicina 4 eritromicina 3" crlf))


(defrule regla031 
  (or (organismo (identidad meningococo))
  (paciente (alergico-penicilina -)))
=>
  (printout t "La superclase es el tratamiento: penicilicina-g 5 lincomicina 4 ampicilina 4" crlf))


(defrule regla032 
   (or (organismo (identidad shigella))
   (paciente (alergico-penicilina -)))
=>
  (printout t "La superclase es el tratamiento: ampicilina 5 tetraciclina 4 paramomicina 4" crlf))


(defrule regla033 
   (or (organismo (identidad shigella))
   (paciente (alergico-penicilina +)))
=>
  (printout t "La superclase es el tratamiento: tetraciclina 4 lincomicina 4 paramomicina 4" crlf))


(defrule regla034 
  (or (paciente (septicemico +))
  (organismo (identidad desconocido)))
=>
  (printout t "La superclase es el tratamiento: cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2" crlf))


(defrule regla035 
  (or (paciente (decaido +))
  (paciente (anorexico +))
  (paciente (anemico +))
  (paciente (con-facies-toxica +))
  (paciente (hipertermico inicial-excepto-rn-y-lactantes))
  (paciente (polipneico sin-relacion-con-la-hipertermia))
  (paciente (oligurico +)))
=>
  (progn
  (printout t "La superclase es (paciente (septicemico +))" crlf)
  (assert (paciente (septicemico +)))))


(defrule regla036 
  (or (paciente (hipertermico +))
  (paciente (cefalalgico +))
  (paciente (meningismo +)))
=>
  (progn
  (printout t "La superclase es (paciente (meningitico +))" crlf)
  (assert (paciente (meningitico +)))
  ))


(defrule regla037 
  (or (paciente (meningitico +))
  (organismo (identidad desconocido)))
=>
  (printout t "La superclase es el tratamiento: penicilina-g 3 lincomicina 2 tetraciclina 3 endovenosa" crlf))


(defrule regla038 
  (or (paciente (rigidez-nuca +))
  (paciente (kernig +))
  (paciente (brudzinski +)))
=>
  (progn
  (printout t "La superclase es (paciente (meningismo +))" crlf)
  (assert (paciente (meningismo +)))
  ))
  
(defrule regla048
  (or (paciente (septicemico +))
  (organismo (sitio sangre))
  (organismo (gramm -))
  (organismo (morfologia bastones))
  (paciente (quemado +)))
=>
  (progn
  (printout t "La superclase es (organismo (identidad pseudomonas))" crlf)
  (assert (organismo (identidad pseudomonas)))))
  
  
  
  
  
  
  
  
