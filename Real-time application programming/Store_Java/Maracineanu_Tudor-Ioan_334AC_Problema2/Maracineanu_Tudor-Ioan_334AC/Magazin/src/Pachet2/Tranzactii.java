package Pachet2;
import Pachet1.Cont;
import Pachet2.creamThread;

import java.util.Scanner;
import java.util.concurrent.TimeUnit;

public class Tranzactii implements Runnable {
	private Cont cont;
	private volatile boolean exit = false;
	int depunere_boolean=1;
	
	/*public class creamThread{
	creamThread myClass = new creamThread();
	String numeOm = this.passengerName;
	}*/
	
	public Tranzactii(Cont account) {
		this.cont = account;
	}
	

	int numarMereCumparate;
	public void run() { 
		while(!exit) { //variabila care determina daca programul continua rularea sau nu
			while(!exit) {
				int numar_mere_1;
				//int numar_mere_2;
				System.out.println("Ziua buna! Cate mere ati dori sa cumparati de la noi?");
				Scanner scanner = new Scanner(System.in);
				numar_mere_1 = scanner.nextInt();
			cumparaMere(numar_mere_1);
			//Scanner scanner_2 = new Scanner(System.in);
			//numar_mere_2 = scanner_2.nextInt();
		cumparaMere(numar_mere_1);
			if (cont.getBalance() < 0) {
				System.out.println("Momentan am ramas fara mere pe taraba!");
			}
		}
		}
	}

	private synchronized void cumparaMere(int numarMereCumparate) {
		int i=0;
		int depunere_mere;
		while(!exit) {
		//Verificarea balance-ului produselor, daca indeplineste sau nu conditia
		if (cont.getBalance() >= numarMereCumparate /*|| cont.getBalance() >= numarMereCumparate_2*/) {
			System.out.println(Thread.currentThread().getName()+i	+ ": As vrea si eu "+numarMereCumparate + " mere, va rog!");
			try {
				Thread.sleep(3000);
			} catch (InterruptedException ex) {
			}
			cont.taieDinMere(numarMereCumparate);
			System.out.println("Vanzator: Poftiti "+numarMereCumparate+ " mere. O zi buna!");				
			if(i==1) {
				i--;
			} else i++;			
		} else {
			System.out.println("Ne pare rau,  "	+ Thread.currentThread().getName()+i + ", nu avem suficiente mere. Pe taraba mai sunt doar: "
					+ cont.getBalance()+" mere...");			
			
			//In cazul in care nu se indeplineste conditia aprovizionam cu produse noi
			
			// Adaugam mere
			System.out.println("A ajuns aprovizionatorul. Vreti sa ne aprovizionati cu mere? DA = 1/NU = 0");
			Scanner scanner = new Scanner(System.in);
			depunere_boolean = scanner.nextInt();
			
			
			
			if(depunere_boolean == 1) { //variabila care determina daca userul mai vrea sa depoziteze mereu sau nu
			    //Cu cate mere aprovizionam magazinul
				System.out.println("Multumim! Cate mere vreti sa ne donati?");
				Scanner scanner1 = new Scanner(System.in);		
				depunere_mere = scanner1.nextInt();   //numarul de mere depozitate
				
			    cont.depozitare(depunere_mere);
			    System.out.println("Mai avem " + cont.getBalance()+ " mere!");
			    run();
			}
			else if( depunere_boolean == 0) {
				System.out.println("Multumesc ca ati cumparat de la noi! ");
				exit = true; //variabila care determina daca programul continua rularea sau nu
			}}
	}
	}
}