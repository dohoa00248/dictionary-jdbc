package dictionary;

public class ManagerDictionaryProxy implements dictionary.ManagerDictionary {
  private String _endpoint = null;
  private dictionary.ManagerDictionary managerDictionary = null;
  
  public ManagerDictionaryProxy() {
    _initManagerDictionaryProxy();
  }
  
  public ManagerDictionaryProxy(String endpoint) {
    _endpoint = endpoint;
    _initManagerDictionaryProxy();
  }
  
  private void _initManagerDictionaryProxy() {
    try {
      managerDictionary = (new dictionary.ManagerDictionaryServiceLocator()).getManagerDictionary();
      if (managerDictionary != null) {
        if (_endpoint != null)
          ((javax.xml.rpc.Stub)managerDictionary)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
        else
          _endpoint = (String)((javax.xml.rpc.Stub)managerDictionary)._getProperty("javax.xml.rpc.service.endpoint.address");
      }
      
    }
    catch (javax.xml.rpc.ServiceException serviceException) {}
  }
  
  public String getEndpoint() {
    return _endpoint;
  }
  
  public void setEndpoint(String endpoint) {
    _endpoint = endpoint;
    if (managerDictionary != null)
      ((javax.xml.rpc.Stub)managerDictionary)._setProperty("javax.xml.rpc.service.endpoint.address", _endpoint);
    
  }
  
  public dictionary.ManagerDictionary getManagerDictionary() {
    if (managerDictionary == null)
      _initManagerDictionaryProxy();
    return managerDictionary;
  }
  
  public boolean update(java.lang.String word, java.lang.String mean, java.lang.String type) throws java.rmi.RemoteException{
    if (managerDictionary == null)
      _initManagerDictionaryProxy();
    return managerDictionary.update(word, mean, type);
  }
  
  public java.lang.String searchDictionary(java.lang.String word) throws java.rmi.RemoteException{
    if (managerDictionary == null)
      _initManagerDictionaryProxy();
    return managerDictionary.searchDictionary(word);
  }
  
  public boolean delDictionary(java.lang.String word) throws java.rmi.RemoteException{
    if (managerDictionary == null)
      _initManagerDictionaryProxy();
    return managerDictionary.delDictionary(word);
  }
  
  public boolean addDictionary(int id, java.lang.String word, java.lang.String mean, java.lang.String type) throws java.rmi.RemoteException{
    if (managerDictionary == null)
      _initManagerDictionaryProxy();
    return managerDictionary.addDictionary(id, word, mean, type);
  }
  
  
}