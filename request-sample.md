=====================================================
### Endpoint Today Request
```
GET /today HTTP/1.1
Host: localhost:8080
Cache-Control: no-cache
```
### RESPONSE
```json
{
    "todaysDilbertResult": "http://www.comics.com\n\nWebException is thrown. Message is :  The remote server returned an error: (404) Not Found.\nStatus Code:  NotFoundStatus Description:  Not FoundServer:  Apache"
}
```
=====================================================
### Endpoint Daily Request
```
POST /daily HTTP/1.1
Host: localhost:8080
Content-Type: application/json
Cache-Control: no-cache

{"adate":1473631656137}
```
### RESPONSE
```json
{
    "dailyDilbertResult": "http://www.comics.com\n\nWebException is thrown. Message is :  The remote server returned an error: (404) Not Found.\nStatus Code:  NotFoundStatus Description:  Not FoundServer:  Apache"
}
```
=====================================================
### Endpoint Dailt Request
```xml
POST /webservices/dilbert.asmx HTTP/1.1
Host: www.gcomputer.net
Content-Type: text/xml
Cache-Control: no-cache
Postman-Token: 20fd8670-b526-1fe8-96a2-a826bc7399d3

<?xml version="1.0" encoding="utf-8"?>
<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">
  <soap12:Body>
    <DailyDilbert xmlns="http://gcomputer.net/webservices/">
      <ADate>2015-04-06-04:00</ADate>
    </DailyDilbert>
  </soap12:Body>
</soap12:Envelope>
```

### RESPONSE
```xml
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <soap:Body>
        <DailyDilbertResponse xmlns="http://gcomputer.net/webservices/">
            <DailyDilbertResult>http://www.comics.com

WebException is thrown. Message is :  The remote server returned an error: (404) Not Found.
Status Code:  NotFoundStatus Description:  Not FoundServer:  Apache</DailyDilbertResult>
        </DailyDilbertResponse>
    </soap:Body>
</soap:Envelope>
```
=====================================================
### Endpoint Today Request
```xml
POST /webservices/dilbert.asmx HTTP/1.1
Host: www.gcomputer.net
Content-Type: text/xml
Cache-Control: no-cache
Postman-Token: 11f7a89d-cebd-a34d-e7de-498d65d20deb

<?xml version="1.0" encoding="utf-8"?>
<soap12:Envelope xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" xmlns:soap12="http://www.w3.org/2003/05/soap-envelope">
  <soap12:Body>
    <TodaysDilbert xmlns="http://gcomputer.net/webservices/" />
  </soap12:Body>
</soap12:Envelope>
```
### RESPONSE

```xml
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://www.w3.org/2003/05/soap-envelope" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <soap:Body>
        <TodaysDilbertResponse xmlns="http://gcomputer.net/webservices/">
            <TodaysDilbertResult>http://www.comics.com

WebException is thrown. Message is :  The remote server returned an error: (404) Not Found.
Status Code:  NotFoundStatus Description:  Not FoundServer:  Apache</TodaysDilbertResult>
        </TodaysDilbertResponse>
    </soap:Body>
</soap:Envelope>
```
=====================================================
