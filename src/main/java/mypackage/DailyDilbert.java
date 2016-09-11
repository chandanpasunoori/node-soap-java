
package mypackage;

import javax.xml.bind.annotation.*;
import javax.xml.datatype.XMLGregorianCalendar;


/**
 * <p>Java class for anonymous complex type.
 * <p>
 * <p>The following schema fragment specifies the expected content contained within this class.
 * <p>
 * <pre>
 * &lt;complexType>
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="ADate" type="{http://www.w3.org/2001/XMLSchema}dateTime"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "", propOrder = {
  "aDate"
})
@XmlRootElement(name = "DailyDilbert")
public class DailyDilbert {

  @XmlElement(name = "ADate", required = true)
  @XmlSchemaType(name = "dateTime")
  protected XMLGregorianCalendar aDate;

  /**
   * Gets the value of the aDate property.
   *
   * @return possible object is
   * {@link XMLGregorianCalendar }
   */
  public XMLGregorianCalendar getADate() {
    return aDate;
  }

  /**
   * Sets the value of the aDate property.
   *
   * @param value allowed object is
   *              {@link XMLGregorianCalendar }
   */
  public void setADate(XMLGregorianCalendar value) {
    this.aDate = value;
  }

}
