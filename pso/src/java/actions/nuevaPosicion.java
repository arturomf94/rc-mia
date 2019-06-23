// Internal action code for project pso

package actions;

import jason.*;
import jason.asSemantics.*;
import jason.asSyntax.*;

public class nuevaPosicion extends DefaultInternalAction {


	private static final long serialVersionUID = 1L;
	
	
	
	
	@Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {
        // execute the internal action
        try {
        	NumberTerm i1 = (NumberTerm) args[0];
        	NumberTerm i2 = (NumberTerm) args[1];
        	NumberTerm v1 = (NumberTerm) args[2];
        	NumberTerm v2 = (NumberTerm) args[3];
        	double[] posicion = new double[2];
        	posicion[0] = (double)(i1.solve() + v1.solve());
        	posicion[1] = (double)(i2.solve() + v2.solve());
        	ListTerm lista = new ListTermImpl();
        	ListTerm tail = lista;
        	for(int i = 0; i < posicion.length; i++) {
        		NumberTerm t = new NumberTermImpl(posicion[i]);
        		tail = tail.append(t);
        	}
        	return un.unifies(args[4], lista);
        } catch(ArrayIndexOutOfBoundsException e){
        	throw new JasonException("La acción interna 'nuevaPosicion' no ha recibido argumentos.");        	
        } catch(Exception e) {
        	throw new JasonException("La acción interna 'nuevaPosicion' ha fallado.");
        }
    }
}
