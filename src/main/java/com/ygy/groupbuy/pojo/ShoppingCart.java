package com.ygy.groupbuy.pojo;

public class ShoppingCart {
    private Integer id;

    private String fname;

    private Double price;

    private Integer fnum;

    private String fpicture;

    private String ownname;

    private String buytime;

    private Integer buynum;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname == null ? null : fname.trim();
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getFnum() {
        return fnum;
    }

    public void setFnum(Integer fnum) {
        this.fnum = fnum;
    }

    public String getFpicture() {
        return fpicture;
    }

    public void setFpicture(String fpicture) {
        this.fpicture = fpicture == null ? null : fpicture.trim();
    }

    public String getOwnname() {
        return ownname;
    }

    public void setOwnname(String ownname) {
        this.ownname = ownname == null ? null : ownname.trim();
    }

    public String getBuytime() {
        return buytime;
    }

    public void setBuytime(String buytime) {
        this.buytime = buytime == null ? null : buytime.trim();
    }

    public Integer getBuynum() {
        return buynum;
    }

    public void setBuynum(Integer buynum) {
        this.buynum = buynum;
    }
}