// CArtAgO artifact code for project pso

package tools;

import java.awt.event.*;

import javax.swing.*;

import cartago.*;
import cartago.tools.*;

public class ArtefactoGUI extends GUIArtifact {
	private Ventana inicio;
	
	public void setup() {
		inicio = new Ventana();
		linkWindowClosingEventToOp(inicio,"cerrar");
		linkActionEventToOp(inicio.botonInit,"iniciar");
		defineObsProperty("ind", obtenerInd());
		defineObsProperty("generaciones", obtenerGeneracion());
		inicio.setVisible(true);
	}

	@INTERNAL_OPERATION void iniciar(ActionEvent ev) {
		getObsProperty("ind").updateValue(obtenerInd());
		getObsProperty("generaciones").updateValue(obtenerGeneracion());
		signal("iniciar");
		inicio.botonInit.setEnabled(false);
	}
	
	@INTERNAL_OPERATION void cerrar(WindowEvent ev) {
		signal("cerrar");
	}
	
	@OPERATION void terminar() {
		inicio.botonInit.setEnabled(true);
	}
	
	private double obtenerInd() {
		return Double.parseDouble(inicio.obtenerInd());
	}

	private double obtenerGeneracion() {
		return Double.parseDouble(inicio.obtenerGeneracion());
	}
	
	
	class Ventana extends JFrame {
		private static final long serialVersionUID = 1L;
		private JTextField noInd;
		private JTextField gen;
		private JLabel pInd;
		private JLabel lGen;
		private JButton botonInit; 
		
		public Ventana(){
			setTitle("Parámetros");
			setSize(300,300);
			setResizable(false);
			JPanel panel = new JPanel();
			setContentPane(panel);
			botonInit = new JButton("Iniciar experimento");
			botonInit.setSize(100,50);
			pInd = new JLabel("Número de partículas:");
			lGen = new JLabel("Generaciones máximas:");
			noInd = new JTextField(10);
			noInd.setText("100");
			gen = new JTextField(10);
			gen.setText("100");
			panel.add(pInd);
			panel.add(noInd);
			panel.add(lGen);
			panel.add(gen);
			panel.add(botonInit);
		}
		
		public String obtenerInd() {
			return noInd.getText();
		}
		
		
		public String obtenerGeneracion() {
			return gen.getText();
		}
		
	}
}

