package com.store.entity;

public class Store {
    private Integer id;

    private Integer userid;

    private String storetype;

    private String description;

    private String name;

    private int status;

    private String image;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserid() {
        return userid;
    }

    public void setUserid(Integer userid) {
        this.userid = userid;
    }

    public String getStoretype() {
        return storetype;
    }

    public void setStoretype(String storetype) {
        this.storetype = storetype == null ? null : storetype.trim();
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description == null ? null : description.trim();
    }

    public String toString(){
        return "id is " + id + "\n" +
                "userId is " + userid + "\n" +
                "storetype is " + storetype + "\n" +
                "description is " + description + "\n" +
                "name is " + name + "\n" +
                "status is " + status + "\n" +
                "image is " + image;
    }
}