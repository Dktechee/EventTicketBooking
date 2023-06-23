
package Database;

import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.transaction.annotation.Transactional;


public class DAO {
     private HibernateTemplate template; 

    public void setTemplate(HibernateTemplate template)
    {
        this.template = template;
    }
    @Transactional(readOnly=false)
    public void storeData(Object obj)
    {
    template.save(obj);
   
   }
    @Transactional(readOnly=false)
   public void updateData(Object obj)
   {
    template.update(obj);
   }
    
   @Transactional(readOnly=false)
   public void updateSpecificData(String hql_query)
   {
    SessionFactory Factory = template.getSessionFactory();
    Session session = Factory.openSession();
    Transaction trans =session.beginTransaction();
    Query query=session.createQuery(hql_query);
    query.executeUpdate();
    trans.commit();
    session.close();
    Factory.close();
   }
    @Transactional(readOnly=false)
   public void deleteData(Object obj)
   {
     template.delete(obj);
   }
    
   @Transactional(readOnly=false)
   public List retrieveData(String hql_query)
   {
   List data=null;
     SessionFactory Factory = template.getSessionFactory();
    Session session = Factory.openSession();
    Transaction trans =session.beginTransaction();
    Query query=session.createQuery(hql_query);
    data = query.list();
    return data;
   }

    
}


