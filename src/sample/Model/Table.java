package sample.Model;
public class Table {
    String fullname,Etatpatient,breakfast,lunch,dinner,Regime;
    int idpatientstable;

    public Table(int patientid, String fullname, String etatpatient, String breakfast, String lunch, String dinner, String regime) {
    }

    public Table(String fullname, String etatpatient, String breakfast, String lunch, String dinner, String regime, int idpatientstable) {
        this.fullname = fullname;
        Etatpatient = etatpatient;
        this.breakfast = breakfast;
        this.lunch = lunch;
        this.dinner = dinner;
        Regime = regime;
        this.idpatientstable = idpatientstable;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getEtatpatient() {
        return Etatpatient;
    }

    public void setEtatpatient(String etatpatient) {
        Etatpatient = etatpatient;
    }

    public String getBreakfast() {
        return breakfast;
    }

    public void setBreakfast(String breakfast) {
        this.breakfast = breakfast;
    }

    public String getLunch() {
        return lunch;
    }

    public void setLunch(String lunch) {
        this.lunch = lunch;
    }

    public String getDinner() {
        return dinner;
    }

    public void setDinner(String dinner) {
        this.dinner = dinner;
    }

    public String getRegime() {
        return Regime;
    }

    public void setRegime(String regime) {
        Regime = regime;
    }

    public int getIdpatientstable() {
        return idpatientstable;
    }

    public void setIdpatientstable(int idpatientstable) {
        this.idpatientstable = idpatientstable;
    }
}
