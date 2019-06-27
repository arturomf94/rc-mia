// Agent worker in project pso

/* Initial beliefs and rules */

{include("parameters.asl")}

/* Initial goals */

/* Plans */

@inicar[atomic]
+!iniciar : true <-
	actions.individuoAleatorio([I1,I2]);
	actions.velocidadAleatoria([V1, V2]);
	functions.sphere(I1,I2,A);
	+pbest([I1, I2], A);
	+position([I1,I2]);
	+velocidad([V1, V2]);
	!reportarPbest.
	
	
@reportarPbest[atomic]
+!reportarPbest : pbest([I1, I2], A) <-
	.send(central, tell, pbest([I1, I2], A)).

@iniciarActualizacion[atomic]	
+!iniciarActualizacion : pbest([PB1, PB2],P1) & position([I1, I2]) & 
		gbest([GB1, GB2], _) & velocidad([V1, V2]) & 
		w(W) & c1(C1) & c2(C2) <-
	actions.nuevaVelocidad(W, C1, C2, I1, I2, PB1, PB2, GB1, GB2, V1, V2, [NV1, NV2]);
	actions.nuevaPosicion(I1, I2, NV1, NV2, [NP1, NP2]);
	functions.sphere(NP1, NP2, P2);
	-+position([NP1, NP2]);
	-+velocidad([NV1, NV2]);
	if (P2 < P1){
		-+pbest([NP1, NP2],P2);
	};
	.abolish(gbest(_,_));
	!reportarPbest.
