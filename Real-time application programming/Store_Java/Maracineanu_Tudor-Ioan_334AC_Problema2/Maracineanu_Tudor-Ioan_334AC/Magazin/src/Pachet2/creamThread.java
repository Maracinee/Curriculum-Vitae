package Pachet2;

public class creamThread extends Thread{
	
	
	private Tranzactii accountHolder;
	private String passengerName;
	private int noOfSeatsToBook;
	
	public creamThread(Tranzactii accountHolder,String passengerName, int noOfSeatsToBook) {
		this.accountHolder = accountHolder;
		this.setPassengerName(passengerName);
		this.noOfSeatsToBook = noOfSeatsToBook;
	}
	
	public void run() {
		accountHolder.makeWithdrawal(getPassengerName(), noOfSeatsToBook);
	}

	public String getPassengerName() {
		return passengerName;
	}

	public void setPassengerName(String passengerName) {
		this.passengerName = passengerName;
	}
}
