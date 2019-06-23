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
		defineObsProperty("objetivo", obtenerObjetivo());
		defineObsProperty("generaciones", obtenerGeneracion());
		inicio.setVisible(true);
	}

	@INTERNAL_OPERATION void iniciar(ActionEvent ev) {
		getObsProperty("ind").updateValue(obtenerInd());
		getObsProperty("objetivo").updateValue(inicio.obtenerObjetivo());
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
	
	private String obtenerObjetivo() {
		return inicio.obtenerObjetivo();
	}
	
	class Ventana extends JFrame {
		private static final long serialVersionUID = 1L;
		private JTextField noInd;
		private JTextField objetivo;
		private JTextField gen;
		private JLabel pInd;
		private JLabel lObjetivo;
		private JLabel lGen;
		private JButton botonInit; 
		
		public Ventana(){
			setTitle("Configuración");
			setSize(300,300);
			setResizable(false);
			JPanel panel = new JPanel();
			setContentPane(panel);
			botonInit = new JButton("Iniciar experimento");
			botonInit.setSize(100,50);
			pInd = new JLabel("Número de individuos:");
			lObjetivo = new JLabel("Función objetivo");
			lGen = new JLabel("Generaciones máximas:");
			noInd = new JTextField(10);
			noInd.setText("100");
			objetivo = new JTextField(10);
			objetivo.setText("");
			gen = new JTextField(10);
			gen.setText("100");
			panel.add(pInd);
			panel.add(noInd);
			panel.add(lGen);
			panel.add(gen);
			panel.add(lObjetivo);
			panel.add(objetivo);
			panel.add(botonInit);
		}
		
		public String obtenerInd() {
			return noInd.getText();
		}
		
		
		public String obtenerObjetivo() {
			return objetivo.getText();
		}
		
		public String obtenerGeneracion() {
			return gen.getText();
		}
		
	}
}

