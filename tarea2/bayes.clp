
  (padre [organismo identidad estafilococo] [paciente rx08 penicilina-g 5])
  (padre [organismo sensible penicilina] [paciente rx08 penicilina-g 5])
  (padre [paciente alergico-penicilina -] [paciente rx08 penicilina-g 5])

  (padre [organismo identidad estafilococo] [paciente rx09 eritromicina])
  (padre [organismo sensible penicilina] [paciente rx09 eritromicina])
  (padre [paciente alergico-penicilina +] [paciente rx09 eritromicina])

  (padre [organismo identidad estafilococo] [paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina])
  (padre [organismo resistente penicilina] [paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina])

	(padre [organismo identidad estreptococo] [paciente rx11 eritromicina 4 lincomicina 4])
	(padre [paciente alergico-penicilina +] [paciente rx11 eritromicina 4 lincomicina 4])

	(padre [organismo identidad estreptococo] [paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4])
	(padre [paciente alergico-penicilina -] [paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4])

	(padre [organismo identidad neumococo] [paciente rx13 eritromicina 5 lincomicina 5])
  (padre [paciente alergico-penicilina +] [paciente rx13 eritromicina 5 lincomicina 5])

	(padre [organismo identidad neumococo] [paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5])
  (padre [paciente alergico-penicilina -] [paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5])

	(padre [organismo identidad salmonela] [paciente rx15 cloromicetina 5 ampicilina 5])

	(padre [organismo identidad klebsiella] [paciente rx16 cloranfenicol+estreptomicina 5 tetraciclina+sulfonamidas 4 kanamicina 3])

	(padre [organismo identidad e-coli-patogena] [paciente rx17 neomicina 5 ampicilina 4 tetraciclina 4])



	(padre [organismo identidad pseudomonas] [paciente rx18 polimixina 5 cefalotina cefaloridina 5 gentacina])



	(padre [organismo identidad proteus] [paciente rx19 cloranfenicol 5 kanamicina 5 tetraciclina 5])



	(padre [organismo identidad h-influenzae] [paciente rx20 ampicilina 5 cloranfenicol 4 tetraciclina 3])



	(padre [paciente infec-urinaria +] [paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3])
	(padre [organismo identidad ?] [paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3])

  (padre [paciente hipertermia prolongada] [paciente infec-urinaria +])
  (padre [paciente miccion alterada] [paciente infec-urinaria +])

  (padre [paciente faringitico/bronquitico/otitico +] [paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3])
	(padre [organismo identidad ?] [paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3])

  (padre [paciente diarr-bact +] [paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3])
	(padre [organismo identidad ?] [paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3])

  (padre [paciente septicemico +] [paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4])
	(padre [organismo identidad ?] [paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4])

  (padre [paciente hipertermico +] [paciente diarr-bact +])
  (padre [paciente diarreico +] [paciente diarr-bact +])

  (padre [paciente evac-abundantes +] [paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3])
  (padre [paciente evac-frecuentes +] [paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3])
  (padre [paciente pujo/tenesmo -] [paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3])

  (padre [paciente hipertermico +] [paciente neumonico +])
  (padre [paciente tos +] [paciente neumonico +])
  (padre [paciente insuf-resp +] [paciente neumonico +])
  (padre [paciente estertores-alveolares/condensacion +] [paciente neumonico +])

  (padre [paciente disnea/polipnea/tiros/cianosis +] [paciente insuf-res +])



	(padre [organismo identidad meningococo] [paciente rx30 lincomicina 4 eritromicina 3])
  (padre [paciente alergico-penicilina +] [paciente rx30 lincomicina 4 eritromicina 3])

	(padre [organismo identidad meningococo] [paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4])
  (padre [paciente alergico-penicilina -] [paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4])


	(padre [organismo identidad shigella] [paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4])
  (padre [paciente alergico-penicilina -] [paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4])

	(padre [organismo identidad shigella] [paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4])
  (padre [paciente alergico-penicilina +] [paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4])

  (padre [paciente septicemico +] [paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2])
  (padre [organismo identidad ?] [paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2])

  (padre [paciente decaido +] [paciente septicemico +])
  (padre [paciente hipertermico inicial excepto rn y lactantes] [paciente septicemico +])
  (padre [paciente polipneico sin relacion con la hipertermia] [paciente septicemico +])
  (padre [paciente oligurico +] [paciente septicemico +])

  (padre [paciente anorexico +] [paciente septicemico +])
  (padre [paciente hipertermico inicial excepto rn y lactantes] [paciente septicemico +])
  (padre [paciente polipneico sin relacion con la hipertermia] [paciente septicemico +])
  (padre [paciente oligurico +] [paciente septicemico +])

  (padre [paciente anemico +] [paciente septicemico +])
  (padre [paciente hipertermico inicial excepto rn y lactantes] [paciente septicemico +])
  (padre [paciente polipneico sin relacion con la hipertermia] [paciente septicemico +])
  (padre [paciente oligurico +] [paciente septicemico +])

  (padre [paciente con-facies-toxica +] [paciente septicemico +])
  (padre [paciente hipertermico inicial excepto rn y lactantes] [paciente septicemico +])
  (padre [paciente polipneico sin relacion con la hipertermia] [paciente septicemico +])
  (padre [paciente oligurico +] [paciente septicemico +])

  (padre [paciente hipertermico +] [paciente meningitico +])
  (padre [paciente cefalalgico +] [paciente meningitico +])
  (padre [paciente meningismo +] [paciente meningitico +])

  (padre [paciente meningitico +][paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa])
  (padre [organismo identidad ?] [paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa])

  (padre [paciente rigidez-nuca +] [paciente meningismo +])
  (padre [paciente kernig +] [paciente meningismo +])
  (padre [paciente brudzinski +] [paciente meningismo +])

  (padre [paciente septicemico] (organismo identidad pseudomonas])
  (padre [organismo sitio sangre] (organismo identidad pseudomonas])
  (padre [organismo gramm -] (organismo identidad pseudomonas])
  (padre [organismo morfologia bastones] (organismo identidad pseudomonas])
  (padre [paciente quemado +] (organismo identidad pseudomonas])
