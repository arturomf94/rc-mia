// Agent admin in project pso

/* Initial beliefs and rules */

gbest([0, 0], 0).

/* Initial goals */

!start.

/* Plans */

@start[atomic]
+!start : true <- 
	makeArtifact("gui","tools.ArtefactoGUI",[],Id);
	focus(Id).

@crearPoblacion[atomic]	
+!crearPoblacion: ind(X)<-
	println("CREAR AGENTES");
	for ( .range(Y,0,X-1) ) {
				.concat(particula,Y,Nombre);
				.create_agent(Nombre, "particula.asl");
				.send(Nombre,achieve,iniciar)}.
				
@matarPoblacion[atomic]	
+!matarPoblacion: ind(X)  <-
	println("TERMINO");
	for ( .range(Y,0,X-1) ) {
				.concat(particula,Y,Nombre);
				.kill_agent(Nombre)}.

@calcularGbest[atomic]
+!calcularGbest: .findall(A,pbest(_,A),LA) & .min(LA,M) & pbest([I1,I2],M) <- 
	println("La mejor solución es [",I1,", ",I2,"] con aptitud ", M);
	-+gbest([I1, I2], M).
	
@reportarGbest[atomic]
+!reportarGbest : ind(X) & gbest([GB1, GB2], GB) <-
	for (.range(Y,0,X-1)) {
				.concat(particula,Y,Nombre);
				.send(Nombre, tell, gbest([GB1, GB2], GB))}.
	
@iniciarVuelo[atomic]
+!iniciarVuelo : ind(X) <-
	println("ACTUALIZAR POSICIONES");
	.abolish(pbest(_,_));
	for (.range(Y,0,X-1)) {
				.concat(particula,Y,Nombre);
				.send(Nombre, achieve, iniciarActualizacion)}.

+iniciar: ind(X) & generaciones(G) <-
	println("REALIZAR VUELO");
	!crearPoblacion;
	for ( .range(Y,1,G) ) {
		.wait(.count(pbest([_,_],_),X));
		!calcularGbest;
		.wait(.count(pbest([_,_],_),X));
		!reportarGbest;
		.wait(.count(pbest([_,_],_),X));
		!iniciarVuelo;
		};
	!matarPoblacion;
	terminar.
	
+cerrar: true <-
	.my_name(X);
	.kill_agent(X).
