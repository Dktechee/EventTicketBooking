
package Database;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class Main {
    
    public static DAO getContext(){
    ApplicationContext ac = new ClassPathXmlApplicationContext("Database/SpringConfig.xml");
        return (DAO) ac.getBean("bean5");
         
      // cd.updateData(); 
    }
}
