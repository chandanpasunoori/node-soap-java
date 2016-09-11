package com.mydlabs;

import mypackage.*;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.*;

import javax.xml.datatype.DatatypeConfigurationException;
import java.io.IOException;

@RestController
@SpringBootApplication
public class SoapDemoApplication {
  private Dilbert dilbert = new Dilbert();
  private DilbertSoap dilbertSoap12 = dilbert.getDilbertSoap12();

  private ObjectFactory objectFactory = new ObjectFactory();

  @RequestMapping("/")
  String home() {
    return dilbertSoap12.todaysDilbert();
  }

  @RequestMapping(value = "/today", method = RequestMethod.GET, produces = MediaType.APPLICATION_JSON_VALUE)
  public
  @ResponseBody
  TodaysDilbertResponse today() throws DatatypeConfigurationException, IOException {
    TodaysDilbertResponse todaysDilbertResponse = objectFactory.createTodaysDilbertResponse();
    todaysDilbertResponse.setTodaysDilbertResult(dilbertSoap12.todaysDilbert());
    return todaysDilbertResponse;
  }


  @RequestMapping(value = "/daily", method = RequestMethod.POST, produces = MediaType.APPLICATION_JSON_VALUE)
  public
  @ResponseBody
  DailyDilbertResponse daily(@RequestBody DailyDilbert dd) throws DatatypeConfigurationException {
    System.out.println(dd.getADate());
    DailyDilbertResponse dailyDilbertResponse = objectFactory.createDailyDilbertResponse();
    dailyDilbertResponse.setDailyDilbertResult(dilbertSoap12.dailyDilbert(dd.getADate()));
    return dailyDilbertResponse;
  }

  public static void main(String[] args) {
    SpringApplication.run(SoapDemoApplication.class, args);
  }
}
