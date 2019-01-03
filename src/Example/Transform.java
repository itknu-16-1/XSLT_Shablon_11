package Example;
import javax.xml.transform.*;
import javax.xml.transform.stream.StreamResult;
import javax.xml.transform.stream.StreamSource;

import java.io.*;

public class Transform { 
public static void main(String[] args) throws TransformerConfigurationException, TransformerException, TransformerFactoryConfigurationError{
  try {
 TransformerFactory.newInstance().newTransformer(new StreamSource(new File("Book.xsl"))).transform(
		 new StreamSource (new File("Book.xml")),new StreamResult(new File("out.html")));

       }
  catch (Exception e) {
    e.printStackTrace( );
    }
  }
}