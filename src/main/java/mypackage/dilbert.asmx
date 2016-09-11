<?xml version="1.0" encoding="utf-8"?>
<wsdl:definitions xmlns:tm="http://microsoft.com/wsdl/mime/textMatching/" xmlns:soapenc="http://schemas.xmlsoap.org/soap/encoding/" xmlns:mime="http://schemas.xmlsoap.org/wsdl/mime/" xmlns:tns="http://gcomputer.net/webservices/" xmlns:soap="http://schemas.xmlsoap.org/wsdl/soap/" xmlns:s="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://schemas.xmlsoap.org/wsdl/soap12/" xmlns:http="http://schemas.xmlsoap.org/wsdl/http/" targetNamespace="http://gcomputer.net/webservices/" xmlns:wsdl="http://schemas.xmlsoap.org/wsdl/">
  <wsdl:types>
    <s:schema elementFormDefault="qualified" targetNamespace="http://gcomputer.net/webservices/">
      <s:element name="TodaysDilbert">
        <s:complexType />
      </s:element>
      <s:element name="TodaysDilbertResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="TodaysDilbertResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DailyDilbert">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="1" maxOccurs="1" name="ADate" type="s:dateTime" />
          </s:sequence>
        </s:complexType>
      </s:element>
      <s:element name="DailyDilbertResponse">
        <s:complexType>
          <s:sequence>
            <s:element minOccurs="0" maxOccurs="1" name="DailyDilbertResult" type="s:string" />
          </s:sequence>
        </s:complexType>
      </s:element>
    </s:schema>
  </wsdl:types>
  <wsdl:message name="TodaysDilbertSoapIn">
    <wsdl:part name="parameters" element="tns:TodaysDilbert" />
  </wsdl:message>
  <wsdl:message name="TodaysDilbertSoapOut">
    <wsdl:part name="parameters" element="tns:TodaysDilbertResponse" />
  </wsdl:message>
  <wsdl:message name="DailyDilbertSoapIn">
    <wsdl:part name="parameters" element="tns:DailyDilbert" />
  </wsdl:message>
  <wsdl:message name="DailyDilbertSoapOut">
    <wsdl:part name="parameters" element="tns:DailyDilbertResponse" />
  </wsdl:message>
  <wsdl:portType name="DilbertSoap">
    <wsdl:operation name="TodaysDilbert">
      <wsdl:input message="tns:TodaysDilbertSoapIn" />
      <wsdl:output message="tns:TodaysDilbertSoapOut" />
    </wsdl:operation>
    <wsdl:operation name="DailyDilbert">
      <wsdl:input message="tns:DailyDilbertSoapIn" />
      <wsdl:output message="tns:DailyDilbertSoapOut" />
    </wsdl:operation>
  </wsdl:portType>
  <wsdl:binding name="DilbertSoap" type="tns:DilbertSoap">
    <soap:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="TodaysDilbert">
      <soap:operation soapAction="http://gcomputer.net/webservices/TodaysDilbert" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DailyDilbert">
      <soap:operation soapAction="http://gcomputer.net/webservices/DailyDilbert" style="document" />
      <wsdl:input>
        <soap:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:binding name="DilbertSoap12" type="tns:DilbertSoap">
    <soap12:binding transport="http://schemas.xmlsoap.org/soap/http" />
    <wsdl:operation name="TodaysDilbert">
      <soap12:operation soapAction="http://gcomputer.net/webservices/TodaysDilbert" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
    <wsdl:operation name="DailyDilbert">
      <soap12:operation soapAction="http://gcomputer.net/webservices/DailyDilbert" style="document" />
      <wsdl:input>
        <soap12:body use="literal" />
      </wsdl:input>
      <wsdl:output>
        <soap12:body use="literal" />
      </wsdl:output>
    </wsdl:operation>
  </wsdl:binding>
  <wsdl:service name="Dilbert">
    <wsdl:port name="DilbertSoap" binding="tns:DilbertSoap">
      <soap:address location="http://www.gcomputer.net/webservices/dilbert.asmx" />
    </wsdl:port>
    <wsdl:port name="DilbertSoap12" binding="tns:DilbertSoap12">
      <soap12:address location="http://www.gcomputer.net/webservices/dilbert.asmx" />
    </wsdl:port>
  </wsdl:service>
</wsdl:definitions>