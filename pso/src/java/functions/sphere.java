// Internal action code for project pso

package functions;

import jason.*;
import jason.asSemantics.*;
import jason.asSyntax.*;


public class sphere extends DefaultInternalAction {

	private static final long serialVersionUID = 1L;

	@Override
    public Object execute(TransitionSystem ts, Unifier un, Term[] args) 
		throws Exception {
        //ts.getAg().getLogger().info("executing internal action 'distancia'");
        try{
        	NumberTerm x1 = (NumberTerm) args[0];
        	NumberTerm x2 = (NumberTerm) args[1];

        	double z = Math.pow(x1.solve(), 2) + Math.pow(x2.solve(), 2);

        	NumberTerm result = new NumberTermImpl(z);
        	return un.unifies(result,args[2]);
        } catch (ArrayIndexOutOfBoundsException e) {
        	throw new JasonException("La acción interna 'sphere'"+
        			"no ha recibido tres argumentos!");
        	} catch (ClassCastException e) {
        		throw new JasonException("La acción interna 'sphere'"+
        				"ha recibido argumentos no numéricos!");
        		} catch (Exception e) {
        			throw new JasonException("Error en 'sphere'");
        		}
	}
}
