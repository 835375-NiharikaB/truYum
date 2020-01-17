package com.cognizant.truyum.model;

import java.text.SimpleDateFormat;
import java.util.Date;

public class MenuItem {
    private long id;
    private String name;
    private float price;
    private boolean active;
    private Date dateOfLaunch;
    private String category;
    private boolean freeDelivery;

    public MenuItem() {

    }

    public MenuItem(long id, String name, float price, boolean active, Date dateOfLaunch,
            String category, boolean freedelivery) {
        super();
        this.id = id;
        this.name = name;
        this.price = price;
        this.active = active;
        this.dateOfLaunch = dateOfLaunch;
        this.category = category;
        this.freeDelivery = freedelivery;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public boolean isActive() {
        return active;
    }

    public void setActive(boolean active) {
        this.active = active;
    }

    public Date getDateOfLaunch() {
        return dateOfLaunch;
    }

    public void setDateOfLaunch(Date dateOfLaunch) {
        this.dateOfLaunch = dateOfLaunch;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public boolean isFreedelivery() {
        return freeDelivery;
    }

    public void setFreedelivery(boolean freedelivery) {
        this.freeDelivery = freedelivery;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + (active ? 1231 : 1237);
        result = prime * result + ((category == null) ? 0 : category.hashCode());
        result = prime * result + ((dateOfLaunch == null) ? 0 : dateOfLaunch.hashCode());
        result = prime * result + (freeDelivery ? 1231 : 1237);
        result = prime * result + (int) (id ^ (id >>> 32));
        result = prime * result + ((name == null) ? 0 : name.hashCode());
        result = prime * result + Float.floatToIntBits(price);
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        MenuItem other = (MenuItem) obj;
        if (active != other.active)
            return false;
        if (category == null) {
            if (other.category != null)
                return false;
        } else if (!category.equals(other.category))
            return false;
        if (dateOfLaunch == null) {
            if (other.dateOfLaunch != null)
                return false;
        } else if (!dateOfLaunch.equals(other.dateOfLaunch))
            return false;
        if (freeDelivery != other.freeDelivery)
            return false;
        if (id != other.id)
            return false;
        if (name == null) {
            if (other.name != null)
                return false;
        } else if (!name.equals(other.name))
            return false;
        if (Float.floatToIntBits(price) != Float.floatToIntBits(other.price))
            return false;
        return true;
    }

    @Override
    public String toString() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");

        return String.format("%-10s%-20s%-15s%-10s%-18s%-25s%-15s\n", id, name, price,
                active == true ? "Yes" : "No", sdf.format(dateOfLaunch), category,
                freeDelivery == true ? "Yes" : "No");

    }
}
