; load with (batch /home/arturo/GitHub/rc-mia/tarea2/bayes.clp)
(assert (padre [organismo identidad estafilococo] [paciente rx08 penicilina-g 5]))
(assert (padre [organismo sensible penicilina] [paciente rx08 penicilina-g 5]))
(assert (padre [paciente alergico-penicilina -] [paciente rx08 penicilina-g 5]))
(assert (padre [organismo identidad estafilococo] [paciente rx09 eritromicina]))
(assert (padre [organismo sensible penicilina] [paciente rx09 eritromicina]))
(assert (padre [paciente alergico-penicilina +] [paciente rx09 eritromicina]))
(assert (padre [organismo identidad estafilococo] [paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina]))
(assert (padre [organismo resistente penicilina] [paciente rx10 cefalotina cefaloridina 5 cloxacilina dicloxacilina meticilina naficilina oxacilina 5 eritromicina]))
(assert (padre [organismo identidad estreptococo] [paciente rx11 eritromicina 4 lincomicina 4]))
(assert (padre [paciente alergico-penicilina +] [paciente rx11 eritromicina 4 lincomicina 4]))
(assert (padre [organismo identidad estreptococo] [paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4]))
(assert (padre [paciente alergico-penicilina -] [paciente rx12 penicilina-g 5 eritromicina 4 lincomicina 4]))
(assert (padre [organismo identidad neumococo] [paciente rx13 eritromicina 5 lincomicina 5]))
(assert (padre [paciente alergico-penicilina +] [paciente rx13 eritromicina 5 lincomicina 5]))
(assert (padre [organismo identidad neumococo] [paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5]))
(assert (padre [paciente alergico-penicilina -] [paciente rx14 penicilina-g 5 eritromicina 5 lincomicina 5]))
(assert (padre [organismo identidad salmonela] [paciente rx15 cloromicetina 5 ampicilina 5]))
(assert (padre [organismo identidad klebsiella] [paciente rx16 cloranfenicol+estreptomicina 5 tetraciclina+sulfonamidas 4 kanamicina 3]))
(assert (padre [organismo identidad e-coli-patogena] [paciente rx17 neomicina 5 ampicilina 4 tetraciclina 4]))
(assert (padre [organismo identidad pseudomonas] [paciente rx18 polimixina 5 cefalotina cefaloridina 5 gentacina]))
(assert (padre [organismo identidad proteus] [paciente rx19 cloranfenicol 5 kanamicina 5 tetraciclina 5]))
(assert (padre [organismo identidad h-influenzae] [paciente rx20 ampicilina 5 cloranfenicol 4 tetraciclina 3]))
(assert (padre [paciente infec-urinaria +] [paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3]))
(assert (padre [organismo identidad unknown] [paciente rx21 tetraciclina 3 kanamicina 3 lincomicina 3]))
(assert (padre [paciente hipertermia prolongada] [paciente infec-urinaria +]))
(assert (padre [paciente miccion alterada] [paciente infec-urinaria +]))
(assert (padre [paciente faringitico/bronquitico/otitico +] [paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3]))
(assert (padre [organismo identidad unknown] [paciente rx23 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3]))
(assert (padre [paciente diarr-bact +] [paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3]))
(assert (padre [organismo identidad unknown] [paciente rx24 ampicilina 4 lincomicina 3 tetraciclina 3]))
(assert (padre [paciente septicemico +] [paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4]))
(assert (padre [organismo identidad unknown] [paciente rx25 cefalotina cefaloridina 4 cloxa dicloxa metil nafi oxa cilinas 4 eritromicina 4]))
(assert (padre [paciente hipertermico +] [paciente diarr-bact +]))
(assert (padre [paciente diarreico +] [paciente diarr-bact +]))
(assert (padre [paciente evac-abundantes +] [paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3]))
(assert (padre [paciente evac-frecuentes +] [paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3]))
(assert (padre [paciente pujo/tenesmo -] [paciente rx27 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 lincomicina 3]))
(assert (padre [paciente hipertermico +] [paciente neumonico +]))
(assert (padre [paciente tos +] [paciente neumonico +]))
(assert (padre [paciente insuf-resp +] [paciente neumonico +]))
(assert (padre [paciente estertores-alveolares/condensacion +] [paciente neumonico +]))
(assert (padre [paciente disnea/polipnea/tiros/cianosis +] [paciente insuf-res +]))
(assert (padre [organismo identidad meningococo] [paciente rx30 lincomicina 4 eritromicina 3]))
(assert (padre [paciente alergico-penicilina +] [paciente rx30 lincomicina 4 eritromicina 3]))
(assert (padre [organismo identidad meningococo] [paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4]))
(assert (padre [paciente alergico-penicilina -] [paciente rx31 penicilicina-g 5 lincomicina 4 ampicilina 4]))
(assert (padre [organismo identidad shigella] [paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4]))
(assert (padre [paciente alergico-penicilina -] [paciente rx32 ampicilina 5 tetraciclina 4 paramomicina 4]))
(assert (padre [organismo identidad shigella] [paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4]))
(assert (padre [paciente alergico-penicilina +] [paciente rx33 tetraciclina 4 lincomicina 4 paramomicina 4]))
(assert (padre [paciente septicemico +] [paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2]))
(assert (padre [organismo identidad unknown] [paciente rx34 cefalotina cefaloridina 3 cloxa dicloxa metil nafi oxa cilinas 3 eritromicina 3 kanamicina 2]))
(assert (padre [paciente decaido +] [paciente septicemico +]))
(assert (padre [paciente hipertermico inicial excepto rn y lactantes] [paciente septicemico +]))
(assert (padre [paciente polipneico sin relacion con la hipertermia] [paciente septicemico +]))
(assert (padre [paciente oligurico +] [paciente septicemico +]))
(assert (padre [paciente anorexico +] [paciente septicemico +]))
(assert (padre [paciente anemico +] [paciente septicemico +]))
(assert (padre [paciente con-facies-toxica +] [paciente septicemico +]))
(assert (padre [paciente hipertermico +] [paciente meningitico +]))
(assert (padre [paciente cefalalgico +] [paciente meningitico +]))
(assert (padre [paciente meningismo +] [paciente meningitico +]))
(assert (padre [paciente meningitico +][paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa]))
(assert (padre [organismo identidad unknown] [paciente rx37 penicilina-g 3 lincomicina 2 tetraciclina 3 paciente grave endovenosa]))
(assert (padre [paciente rigidez-nuca +] [paciente meningismo +]))
(assert (padre [paciente kernig +] [paciente meningismo +]))
(assert (padre [paciente brudzinski +] [paciente meningismo +]))
(assert (padre [paciente septicemico] [organismo identidad pseudomonas]))
(assert (padre [organismo sitio sangre] [organismo identidad pseudomonas]))
(assert (padre [organismo gramm -] [organismo identidad pseudomonas]))
(assert (padre [organismo morfologia bastones] [organismo identidad pseudomonas]))
(assert (padre [paciente quemado +] [organismo identidad pseudomonas]))

(assert (p [organismo identidad estafilococo] 0.1))
(assert (p [organismo sensible penicilina] 0.1))
(assert (p [paciente alergico-penicilina -] 0.1))
(assert (p [paciente alergico-penicilina +] 0.1))
(assert (p [organismo resistente penicilina] 0.1))
(assert (p [organismo identidad estreptococo] 0.1))
(assert (p [organismo identidad neumococo] 0.1))
(assert (p [organismo identidad salmonela] 0.1))
(assert (p [organismo identidad klebsiella] 0.1))
(assert (p [organismo identidad e-coli-patogena] 0.1))
(assert (p [organismo identidad proteus] 0.1))
(assert (p [organismo identidad h-influenzae] 0.1))
(assert (p [organismo identidad unknown] 0.1))
(assert (p [paciente hipertermia prolongada] 0.1))
(assert (p [paciente miccion alterada] 0.1))
(assert (p [paciente faringitico/bronquitico/otitico +] 0.1))
(assert (p [paciente hipertermico +] 0.1))
(assert (p [paciente diarreico +] 0.1))
(assert (p [paciente evac-abundantes +] 0.1))
(assert (p [paciente evac-frecuentes +] 0.1))
(assert (p [paciente pujo/tenesmo -] 0.1))
(assert (p [paciente tos +] 0.1))
(assert (p [paciente insuf-resp +] 0.1))
(assert (p [paciente estertores-alveolares/condensacion +] 0.1))
(assert (p [paciente disnea/polipnea/tiros/cianosis +] 0.1))
(assert (p [organismo identidad meningococo] 0.1))
(assert (p [paciente alergico-penicilina +] 0.1))
(assert (p [paciente alergico-penicilina -] 0.1))
(assert (p [organismo identidad shigella] 0.1))
(assert (p [paciente decaido +] 0.1))
(assert (p [paciente hipertermico inicial excepto rn y lactantes] 0.1))
(assert (p [paciente polipneico sin relacion con la hipertermia] 0.1))
(assert (p [paciente oligurico +] 0.1))
(assert (p [paciente anorexico +] 0.1))
(assert (p [paciente cefalalgico +] 0.1))
(assert (p [paciente rigidez-nuca +] 0.1))
(assert (p [paciente kernig +] 0.1))
(assert (p [paciente brudzinski +] 0.1))
(assert (p [paciente septicemico] 0.1))
(assert (p [organismo sitio sangre] 0.1))
(assert (p [organismo gramm -] 0.1))
(assert (p [organismo morfologia bastones] 0.1))
(assert (p [paciente quemado +] 0.1))
