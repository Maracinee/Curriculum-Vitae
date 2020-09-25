package Pachet1;

public class Cont {
	private int numarMerePeTaraba = 60;

	//Cate mere sunt
	public int getBalance() {
		return  numarMerePeTaraba;
	}
	
	//Aprovizioneaza magazinu
	public void depozitare(int cantitate) {
		numarMerePeTaraba=numarMerePeTaraba + cantitate;
	}
	
	//Retragere mere
	public void taieDinMere(int cantitate) {
		if(cantitate<= numarMerePeTaraba) {
		numarMerePeTaraba=numarMerePeTaraba - cantitate;
		}
		else {
			System.err.println("Nu mai avem mere pe stoc.");
		}
	}
}