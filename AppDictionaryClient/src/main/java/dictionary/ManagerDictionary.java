/**
 * ManagerDictionary.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package dictionary;

public interface ManagerDictionary extends java.rmi.Remote {
    public boolean update(java.lang.String word, java.lang.String mean, java.lang.String type) throws java.rmi.RemoteException;
    public java.lang.String searchDictionary(java.lang.String word) throws java.rmi.RemoteException;
    public boolean delDictionary(java.lang.String word) throws java.rmi.RemoteException;
    public boolean addDictionary(int id, java.lang.String word, java.lang.String mean, java.lang.String type) throws java.rmi.RemoteException;
}
