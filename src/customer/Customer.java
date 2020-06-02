package customer;

public class Customer {
    private String name;
    private String date;
    private String address;

    public Customer(String name, String date, String address) {
        this.name = name;
        this.date = date;
        this.address = address;
    }

    public String getName() {
        return name;
    }

    public Customer setName(String name) {
        this.name = name;
        return this;
    }

    public String getDate() {
        return date;
    }

    public Customer setDate(String date) {
        this.date = date;
        return this;
    }

    public String getAddress() {
        return address;
    }

    public Customer setAddress(String address) {
        this.address = address;
        return this;
    }
}
