package com.sut.model;

import lombok.Data;

@Data
public class User {
    private int ID;
    private String username;
    private String password;
    private String name;
    private String avator;
    private String phone;
    private String address;
    private String vip_date;
    private int permission;
}
