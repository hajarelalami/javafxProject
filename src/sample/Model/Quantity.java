package sample.Model;

import java.time.LocalDate;

public class Quantity {
    String element;
    LocalDate date;
    int initial;
    int consumed;
    int ordered;
    int present;

    public Quantity(LocalDate datee, String elemnt, int initial, int consumed, int present, int ordered, int i) {
    }

    public Quantity(String element, LocalDate date, int initial, int consumed, int ordered, int present) {
        this.element = element;
        this.date = date;
        this.initial = initial;
        this.consumed = consumed;
        this.ordered = ordered;
        this.present = present;
    }

    public String getElement() {
        return element;
    }

    public void setElement(String element) {
        this.element = element;
    }

    public LocalDate getDate() {
        return date;
    }

    public void setDate(LocalDate date) {
        this.date = date;
    }

    public int getInitial() {
        return initial;
    }

    public void setInitial(int initial) {
        this.initial = initial;
    }

    public int getConsumed() {
        return consumed;
    }

    public void setConsumed(int consumed) {
        this.consumed = consumed;
    }

    public int getOrdered() {
        return ordered;
    }

    public void setOrdered(int ordered) {
        this.ordered = ordered;
    }

    public int getPresent() {
        return present;
    }

    public void setPresent(int present) {
        this.present = present;
    }
}

