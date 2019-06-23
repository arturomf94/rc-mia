// Internal action code for project pso

package actions;

import jason.*;
import jason.asSemantics.*;
import jason.asSyntax.*;

public class velocidadAleatoria extends DefaultInternalAction {


	private static final long serialVersionUID = 1L;
	
	
	
	
	@Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {
        // execute the internal action
        final double[] limSuperior = {1, 1};
        final double[] limInferior = {0, 0};
        try {
        	double[] velocidad = new double[2];
        	for(int i = 0; i < 2; i ++) {
        		double gen = limInferior[i]+Math.random()*(limSuperior[i]-limInferior[i]);
        		velocidad[i] =  (double)((int)(gen*1000))/1000;
        	}
        	ListTerm velocidades = new ListTermImpl();
        	ListTerm tail = velocidades;
        	for(int i = 0; i < velocidad.length; i++) {
        		NumberTerm t = new NumberTermImpl(velocidad[i]);
        		tail = tail.append(t);
        	}
        	return un.unifies(args[0], velocidades);
        } catch(ArrayIndexOutOfBoundsException e){
        	throw new JasonException("La acción interna 'velocidadAleatoria' no ha recibido argumentos.");        	
        } catch(Exception e) {
        	throw new JasonException("La acción interna 'velocidadAleatoria' ha fallado.");
        }
    }
}
