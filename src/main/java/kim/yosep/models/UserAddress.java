package kim.yosep.models;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Embeddable;

@Embeddable
public class UserAddress implements Serializable {

    private static final long serialVersionUID = 1L;
    private String address1;
    private String address2;
    private String city;
    private String state;
    private String zip;
    private String country;
    @Column(name = "phone_home")
    private String phoneHome;
    @Column(name = "phone_work")
    private String phoneWork;
    @Column(name = "phone_cell")
    private String phoneCell;

    public UserAddress(){

    }



    public UserAddress(String address1, String address2, String city, String state, String zip, String country,
                       String phoneHome, String phoneWork, String phoneCell) {
        super();
        this.address1 = address1;
        this.address2 = address2;
        this.city = city;
        this.state = state;
        this.zip = zip;
        this.country = country;
        this.phoneHome = phoneHome;
        this.phoneWork = phoneWork;
        this.phoneCell = phoneCell;
    }

    public String getAddress1() {
        return address1;
    }
    public void setAddress1(String address1) {
        this.address1 = address1;
    }
    public String getAddress2() {
        return address2;
    }
    public void setAddress2(String address2) {
        this.address2 = address2;
    }
    public String getCity() {
        return city;
    }
    public void setCity(String city) {
        this.city = city;
    }
    public String getState() {
        return state;
    }
    public void setState(String state) {
        this.state = state;
    }
    public String getZip() {
        return zip;
    }
    public void setZip(String zip) {
        this.zip = zip;
    }
    public String getCountry() {
        return country;
    }
    public void setCountry(String country) {
        this.country = country;
    }
    public String getPhoneHome() {
        return phoneHome;
    }
    public void setPhoneHome(String phoneHome) {
        this.phoneHome = phoneHome;
    }
    public String getPhoneWork() {
        return phoneWork;
    }
    public void setPhoneWork(String phoneWork) {
        this.phoneWork = phoneWork;
    }
    public String getPhoneCell() {
        return phoneCell;
    }
    public void setPhoneCell(String phoneCell) {
        this.phoneCell = phoneCell;
    }

}
