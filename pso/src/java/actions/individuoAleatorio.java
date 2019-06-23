// Internal action code for project pso

package actions;

import jason.*;
import jason.asSemantics.*;
import jason.asSyntax.*;

public class individuoAleatorio extends DefaultInternalAction {


	private static final long serialVersionUID = 1L;
	
	
	
	
	@Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {
        // execute the internal action
        final double[] limSuperior = {1, 1};
        final double[] limInferior = {0, 0};
        try {
        	double[] individuo = new double[2];
        	for(int i = 0; i < 2; i ++) {
        		double gen = limInferior[i]+Math.random()*(limSuperior[i]-limInferior[i]);
        		individuo[i] =  (double)((int)(gen*1000))/1000;
        	}
        	ListTerm cromosoma = new ListTermImpl();
        	ListTerm tail = cromosoma;
        	for(int i = 0; i < individuo.length; i++) {
        		NumberTerm t = new NumberTermImpl(individuo[i]);
        		tail = tail.append(t);
        	}
        	// System.out.println(cromosoma);
        	return un.unifies(args[0], cromosoma);
        } catch(ArrayIndexOutOfBoundsException e){
        	throw new JasonException("La acción interna 'IndividuoAleatorio' no ha recibido argumentos.");        	
        } catch(Exception e) {
        	throw new JasonException("La acción interna 'IndividuoAleatorio' ha fallado.");
        }
    }
}
