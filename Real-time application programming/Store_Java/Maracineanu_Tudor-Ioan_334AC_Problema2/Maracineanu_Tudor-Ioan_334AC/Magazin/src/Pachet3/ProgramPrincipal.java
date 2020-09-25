package Pachet3;

import java.util.Scanner;

import Pachet1.Cont;
import Pachet2.Tranzactii;


public class ProgramPrincipal {

	public static void main(String[] args) {
		
		//Realizarea threadurilor
		Cont cont = new Cont(); //Constructor
		Tranzactii mentenanta = new Tranzactii(cont);
		Thread t1 = new Thread(mentenanta, "Cumparator0");
		Thread t2 = new Thread(mentenanta, "Cumparator1");

		
		
		
		
		t1.start();
		t2.start();
	}
}
