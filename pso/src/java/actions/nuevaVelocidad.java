// Internal action code for project pso

package actions;

import jason.*;
import jason.asSemantics.*;
import jason.asSyntax.*;

public class nuevaVelocidad extends DefaultInternalAction {


	private static final long serialVersionUID = 1L;
	
	
	
	
	@Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) throws Exception {
        // execute the internal action
        try {
        	NumberTerm w = (NumberTerm) args[0];
        	NumberTerm c1 = (NumberTerm) args[1];
        	NumberTerm c2 = (NumberTerm) args[2];
        	NumberTerm i1 = (NumberTerm) args[3];
        	NumberTerm i2 = (NumberTerm) args[4];
        	NumberTerm pb1 = (NumberTerm) args[5];
        	NumberTerm pb2 = (NumberTerm) args[6];
        	NumberTerm gb1 = (NumberTerm) args[7];
        	NumberTerm gb2 = (NumberTerm) args[8];
        	NumberTerm v1 = (NumberTerm) args[9];
        	NumberTerm v2 = (NumberTerm) args[10];
        	double[] velocidad = new double[2];
        	double gen1 = Math.random();
        	double gen2 = Math.random();
        	velocidad[0] = w.solve() * v1.solve() + gen1 * c1.solve() * (pb1.solve() - i1.solve()) + gen2 * c2.solve() * (gb1.solve() - i1.solve());
        	velocidad[1] = w.solve() * v2.solve() + gen1 * c1.solve() * (pb2.solve() - i2.solve()) + gen2 * c2.solve() * (gb2.solve() - i2.solve());
        	ListTerm lista = new ListTermImpl();
        	ListTerm tail = lista;
        	for(int i = 0; i < velocidad.length; i++) {
        		NumberTerm t = new NumberTermImpl(velocidad[i]);
        		tail = tail.append(t);
        	}
        	return un.unifies(args[11], lista);
        } catch(ArrayIndexOutOfBoundsException e){
        	throw new JasonException("La acción interna 'nuevaVelocidad' no ha recibido argumentos.");        	
        } catch(Exception e) {
        	throw new JasonException("La acción interna 'nuevaVelocidad' ha fallado.");
        }
    }
}
