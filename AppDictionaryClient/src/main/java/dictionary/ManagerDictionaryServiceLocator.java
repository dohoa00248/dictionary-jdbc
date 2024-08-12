/**
 * ManagerDictionaryServiceLocator.java
 *
 * This file was auto-generated from WSDL
 * by the Apache Axis 1.4 Apr 22, 2006 (06:55:48 PDT) WSDL2Java emitter.
 */

package dictionary;

public class ManagerDictionaryServiceLocator extends org.apache.axis.client.Service implements dictionary.ManagerDictionaryService {

    public ManagerDictionaryServiceLocator() {
    }


    public ManagerDictionaryServiceLocator(org.apache.axis.EngineConfiguration config) {
        super(config);
    }

    public ManagerDictionaryServiceLocator(java.lang.String wsdlLoc, javax.xml.namespace.QName sName) throws javax.xml.rpc.ServiceException {
        super(wsdlLoc, sName);
    }

    // Use to get a proxy class for ManagerDictionary
    private java.lang.String ManagerDictionary_address = "http://localhost:8080/AppDictionary/services/ManagerDictionary";

    public java.lang.String getManagerDictionaryAddress() {
        return ManagerDictionary_address;
    }

    // The WSDD service name defaults to the port name.
    private java.lang.String ManagerDictionaryWSDDServiceName = "ManagerDictionary";

    public java.lang.String getManagerDictionaryWSDDServiceName() {
        return ManagerDictionaryWSDDServiceName;
    }

    public void setManagerDictionaryWSDDServiceName(java.lang.String name) {
        ManagerDictionaryWSDDServiceName = name;
    }

    public dictionary.ManagerDictionary getManagerDictionary() throws javax.xml.rpc.ServiceException {
       java.net.URL endpoint;
        try {
            endpoint = new java.net.URL(ManagerDictionary_address);
        }
        catch (java.net.MalformedURLException e) {
            throw new javax.xml.rpc.ServiceException(e);
        }
        return getManagerDictionary(endpoint);
    }

    public dictionary.ManagerDictionary getManagerDictionary(java.net.URL portAddress) throws javax.xml.rpc.ServiceException {
        try {
            dictionary.ManagerDictionarySoapBindingStub _stub = new dictionary.ManagerDictionarySoapBindingStub(portAddress, this);
            _stub.setPortName(getManagerDictionaryWSDDServiceName());
            return _stub;
        }
        catch (org.apache.axis.AxisFault e) {
            return null;
        }
    }

    public void setManagerDictionaryEndpointAddress(java.lang.String address) {
        ManagerDictionary_address = address;
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        try {
            if (dictionary.ManagerDictionary.class.isAssignableFrom(serviceEndpointInterface)) {
                dictionary.ManagerDictionarySoapBindingStub _stub = new dictionary.ManagerDictionarySoapBindingStub(new java.net.URL(ManagerDictionary_address), this);
                _stub.setPortName(getManagerDictionaryWSDDServiceName());
                return _stub;
            }
        }
        catch (java.lang.Throwable t) {
            throw new javax.xml.rpc.ServiceException(t);
        }
        throw new javax.xml.rpc.ServiceException("There is no stub implementation for the interface:  " + (serviceEndpointInterface == null ? "null" : serviceEndpointInterface.getName()));
    }

    /**
     * For the given interface, get the stub implementation.
     * If this service has no port for the given interface,
     * then ServiceException is thrown.
     */
    public java.rmi.Remote getPort(javax.xml.namespace.QName portName, Class serviceEndpointInterface) throws javax.xml.rpc.ServiceException {
        if (portName == null) {
            return getPort(serviceEndpointInterface);
        }
        java.lang.String inputPortName = portName.getLocalPart();
        if ("ManagerDictionary".equals(inputPortName)) {
            return getManagerDictionary();
        }
        else  {
            java.rmi.Remote _stub = getPort(serviceEndpointInterface);
            ((org.apache.axis.client.Stub) _stub).setPortName(portName);
            return _stub;
        }
    }

    public javax.xml.namespace.QName getServiceName() {
        return new javax.xml.namespace.QName("http://dictionary", "ManagerDictionaryService");
    }

    private java.util.HashSet ports = null;

    public java.util.Iterator getPorts() {
        if (ports == null) {
            ports = new java.util.HashSet();
            ports.add(new javax.xml.namespace.QName("http://dictionary", "ManagerDictionary"));
        }
        return ports.iterator();
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(java.lang.String portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        
if ("ManagerDictionary".equals(portName)) {
            setManagerDictionaryEndpointAddress(address);
        }
        else 
{ // Unknown Port Name
            throw new javax.xml.rpc.ServiceException(" Cannot set Endpoint Address for Unknown Port" + portName);
        }
    }

    /**
    * Set the endpoint address for the specified port name.
    */
    public void setEndpointAddress(javax.xml.namespace.QName portName, java.lang.String address) throws javax.xml.rpc.ServiceException {
        setEndpointAddress(portName.getLocalPart(), address);
    }

}
