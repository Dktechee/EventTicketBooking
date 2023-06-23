package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import Model.RegisterData;
import Database.DAO;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

@Controller
public class MainController {

    @RequestMapping("/Login")

    public ModelAndView movetologin() {
        return new ModelAndView("login");
    }

    @RequestMapping("/Registertion form")

    public ModelAndView movetoregister() {
        return new ModelAndView("Register");
    }

    @RequestMapping("/requestandresponse")

    public ModelAndView registerpage(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String fullname = request.getParameter("Fullname");
        String username = request.getParameter("Username");
        String email = request.getParameter("Email");
        String Phonenumber = request.getParameter("phonenumber");
        String password = request.getParameter("Password");
        String Confirmpassworde = request.getParameter("confirmpassworde");
        String Gender1 = request.getParameter("gender1");

        RegisterData reg = new RegisterData();
        reg.setConfirmpassworde(Confirmpassworde);
        reg.setEmail(email);
        reg.setFullname(fullname);
        reg.setGender1(Gender1);
        reg.setPassword(password);
        reg.setPhonenumber(Phonenumber);
        reg.setUsername(username);

        DAO nd = Database.Main.getContext();
        nd.storeData(reg);

        session.setAttribute("Fullname", fullname);
        session.setAttribute("Username", username);
        session.setAttribute("Email", email);
        session.setAttribute("phonenumber", Phonenumber);
        session.setAttribute("Password", password);
        session.setAttribute("confirmpassworde", Confirmpassworde);
        session.setAttribute("gender1", Gender1);

        return new ModelAndView("RegisterData");
    }

    @RequestMapping("/home")

    public ModelAndView movetohome(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        String username = request.getParameter("txtuser");
        String password = request.getParameter("txtpass");
        DAO nd = Database.Main.getContext();
        List Data = nd.retrieveData("from RegisterData where Username='" + username + "'");
        Iterator ite = Data.iterator();
        String username_db = "", Password_db = "", Fullname_db = "", Ph_db = "", Email_db = "", gender_db = "";

        while (ite.hasNext()) {
            RegisterData r1 = (RegisterData) ite.next();
            username_db = r1.getUsername();
            Password_db = r1.getPassword();
            Fullname_db = r1.getFullname();
            Ph_db = r1.getPhonenumber();
            Email_db = r1.getEmail();
            gender_db = r1.getGender1();

        }
        RegisterData r = new RegisterData();
        r.setUsername(username_db);
        r.setFullname(Fullname_db);
        r.setPhonenumber(Ph_db);
        r.setEmail(Email_db);
        r.setGender1(gender_db);

        session.setAttribute("user", username_db);
        session.setAttribute("fullname", Fullname_db);
        session.setAttribute("ph", Ph_db);
        session.setAttribute("email", Email_db);
        session.setAttribute("gender", gender_db);

        if ((password.equals(Password_db)) && (username.equals(username_db))) {

            return new ModelAndView("Home");
        } else {
            return new ModelAndView("login");
        }

    }

    @RequestMapping("/logout")

    public ModelAndView movetomain(HttpServletRequest request, HttpServletResponse response, HttpSession session) {

        response.setHeader("cache-controller", "no-cache ,no-store,must-revalidate");
        session.invalidate();
        return new ModelAndView("MainHome");
    }

    @RequestMapping("/Booking")
    public ModelAndView movetobooking() {

        return new ModelAndView("Booking");
    }

    @RequestMapping("/delete")
    public ModelAndView del(HttpServletRequest request, HttpServletResponse response) {
        String user1 = request.getParameter("user");
        System.out.println(user1);
        DAO d = Database.Main.getContext();
        List Data = d.retrieveData("from RegisterData where username ='" + user1 + "'");
        int id = 1;
        Iterator ite = Data.iterator();
        while (ite.hasNext()) {

            RegisterData r = (RegisterData) ite.next();
            id = r.getId();
        }
        RegisterData c = new RegisterData();
        c.setId(id);
        d.deleteData(c);

        return new ModelAndView("login");
    }

    @RequestMapping("/Update")
    public ModelAndView update() {
        

        return new ModelAndView("Update");
    }
    @RequestMapping("/Updatedata")
    public ModelAndView update1(HttpServletRequest request,HttpServletResponse response){
        String fullname= request.getParameter("Fullname");
        String username = request.getParameter("Username");
        String email = request.getParameter("Email");
        String Phonenumber = request.getParameter("phonenumber");
        String password = request.getParameter("Password");
        String Confirmpassworde =request.getParameter("confirmpassworde");
        String Gender1 = request.getParameter("gender1");
        DAO nd=Database.Main.getContext();
        List Data =nd.retrieveData("from RegisterData where Username='"+username+"'");
        Iterator ite = Data.iterator();
        int id_db=0;
      while(ite.hasNext())
      {
       RegisterData r1 = (RegisterData)ite.next();
       id_db= r1.getId();
       
      }
         RegisterData reg = new RegisterData();
        reg.setConfirmpassworde(Confirmpassworde);
        reg.setEmail(email);
        reg.setFullname(fullname);
        reg.setGender1(Gender1);
        reg.setPassword(password);
        reg.setPhonenumber(Phonenumber);
        reg.setUsername(username);
        reg.setId(id_db);
       nd.updateData(reg);
       return new ModelAndView("login");
    }
    @RequestMapping("/done")
    public ModelAndView done(HttpServletRequest request, HttpServletResponse response) throws FileNotFoundException, IOException {
        try (PrintWriter out = response.getWriter()) {
            response.setContentType("text/html;charset=UTF-8");
            String filename = "Ticket.jpg";
            String filepath = "E:/ticket";
            response.setContentType("APPLICATION/OCTET-STREAM");
            response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
            try (FileInputStream fin = new FileInputStream(filepath)) {
                int x = 0;
                while ((x = fin.read()) != -1) {
                    out.write(x);

                }
                fin.close();
                out.close();
            }

        }
        return new ModelAndView("Home");
    }

}
