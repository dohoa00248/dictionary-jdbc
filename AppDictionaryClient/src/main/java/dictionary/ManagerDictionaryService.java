/**
 * ManagerDictionaryService.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package dictionary;

public interface ManagerDictionaryService extends javax.xml.rpc.Service {
    public java.lang.String getManagerDictionaryAddress();

    public dictionary.ManagerDictionary getManagerDictionary() throws javax.xml.rpc.ServiceException;

    public dictionary.ManagerDictionary getManagerDictionary(java.net.URL portAddress) throws javax.xml.rpc.ServiceException;
}
