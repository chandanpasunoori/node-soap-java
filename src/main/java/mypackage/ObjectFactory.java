
package mypackage;

import javax.xml.bind.annotation.XmlRegistry;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the mypackage package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {


    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: mypackage
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link DailyDilbertResponse }
     * 
     */
    public DailyDilbertResponse createDailyDilbertResponse() {
        return new DailyDilbertResponse();
    }

    /**
     * Create an instance of {@link TodaysDilbertResponse }
     * 
     */
    public TodaysDilbertResponse createTodaysDilbertResponse() {
        return new TodaysDilbertResponse();
    }

    /**
     * Create an instance of {@link TodaysDilbert }
     * 
     */
    public TodaysDilbert createTodaysDilbert() {
        return new TodaysDilbert();
    }

    /**
     * Create an instance of {@link DailyDilbert }
     * 
     */
    public DailyDilbert createDailyDilbert() {
        return new DailyDilbert();
    }

}
