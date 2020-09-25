package Pachet3;

import java.util.Scanner;

import Pachet1.Cont;
import Pachet2.Tranzactii;


public class ProgramPrincipal {

	public static void main(String[] args) {
		
		Cont cont = new Cont();
		Tranzactii accountHolder = new Tranzactii(cont);
		Thread t1 = new Thread(accountHolder, "Bogdan");
		//creamThread t2 = new creamThread(accountHolder, "Ioana", 1000);
		
		t1.start();
		//t2.start();
	}
}
