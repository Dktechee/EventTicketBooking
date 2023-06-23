
package Model;

import javax.persistence.Entity;


public class RegisterData {
    private int id;
    private String fullname , username, email, Phonenumber,  password, Confirmpassworde, Gender1;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhonenumber() {
        return Phonenumber;
    }

    public void setPhonenumber(String Phonenumber) {
        this.Phonenumber = Phonenumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmpassworde() {
        return Confirmpassworde;
    }

    public void setConfirmpassworde(String Confirmpassworde) {
        this.Confirmpassworde = Confirmpassworde;
    }

    public String getGender1() {
        return Gender1;
    }

    public void setGender1(String Gender1) {
        this.Gender1 = Gender1;
    }

    public void setId(String id_db) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

   


}
