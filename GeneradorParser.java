package ar.edu.ub.dc.compilador_micro;

public class GeneradorParser {

	public static void main(String[] args) throws Exception {
		String opciones[] = new String[] {"-destdir", "src/ar/edu/ub/dc/compilador_micro" , "-parser", 
				"Parser", "src/ar/edu/ub/dc/compilador_micro/Micro.cup"};
		java_cup.Main.main(opciones);
	}

}