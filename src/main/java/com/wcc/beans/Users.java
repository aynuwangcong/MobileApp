package com.wcc.beans;

public class Users {
    private Integer id;
    private String user_id;
    private String user_name;
    private String user_sex;
    private Integer user_age;
    private String department;
    private String duty;
    private String mail;
    private String mobil_phone;
    private String family_phone;
    private String office_phone;
    private String birthday;
    private String MSN;
    private String address;
    private String remark;
    public Users(){}
    public Users(String user_id, String user_name, String user_sex, Integer user_age, String department, String duty, String mail, String mobil_phone, String family_phone, String office_phone, String birthday, String MSN, String address, String remark) {
        this.user_id = user_id;
        this.user_name = user_name;
        this.user_sex = user_sex;
        this.user_age = user_age;
        this.department = department;
        this.duty = duty;
        this.mail = mail;
        this.mobil_phone = mobil_phone;
        this.family_phone = family_phone;
        this.office_phone = office_phone;
        this.birthday = birthday;
        this.MSN = MSN;
        this.address = address;
        this.remark = remark;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getUser_sex() {
        return user_sex;
    }

    public void setUser_sex(String user_sex) {
        this.user_sex = user_sex;
    }

    public Integer getUser_age() {
        return user_age;
    }

    public void setUser_age(Integer user_age) {
        this.user_age = user_age;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department;
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getMobil_phone() {
        return mobil_phone;
    }

    public void setMobil_phone(String mobil_phone) {
        this.mobil_phone = mobil_phone;
    }

    public String getFamily_phone() {
        return family_phone;
    }

    public void setFamily_phone(String family_phone) {
        this.family_phone = family_phone;
    }

    public String getOffice_phone() {
        return office_phone;
    }

    public void setOffice_phone(String office_phone) {
        this.office_phone = office_phone;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }

    public String getMSN() {
        return MSN;
    }

    public void setMSN(String MSN) {
        this.MSN = MSN;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark;
    }

    @Override
    public String toString() {
        return "Users{" +
                "id=" + id +
                ", user_id='" + user_id + '\'' +
                ", user_name='" + user_name + '\'' +
                ", user_sex='" + user_sex + '\'' +
                ", user_age=" + user_age +
                ", department='" + department + '\'' +
                ", duty='" + duty + '\'' +
                ", mail='" + mail + '\'' +
                ", mobil_phone='" + mobil_phone + '\'' +
                ", family_phone='" + family_phone + '\'' +
                ", office_phone='" + office_phone + '\'' +
                ", birthday='" + birthday + '\'' +
                ", MSN='" + MSN + '\'' +
                ", address='" + address + '\'' +
                ", remark='" + remark + '\'' +
                '}';
    }
}
