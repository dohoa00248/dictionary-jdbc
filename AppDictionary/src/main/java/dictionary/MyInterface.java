package dictionary;
import java.rmi.Remote;
import java.rmi.RemoteException;


public interface MyInterface extends Remote  {
	
	boolean addDictionary(int id, String word, String mean, String type) throws RemoteException;
	public String searchDictionary(String word) throws RemoteException;
	boolean delDictionary(String word) throws RemoteException;
	
	
	//boolean updateDictionary(String word, String mean, String type) throws RemoteException;
	//boolean updateDictionary(int id, String word, String mean, String type) throws RemoteException;
	//boolean updateDictionary(String word, String mean) throws RemoteException;
	//boolean update(String word, String mean) throws RemoteException;
	boolean update(String word, String mean, String type) throws RemoteException;

}
