package models;



public class tinchi {
	
	private String maTC;
	private int soTC;

    public tinchi() {
    }

    public tinchi(String maTC, int soTC) {
        this.maTC = maTC;
        this.soTC = soTC;
    }

    public tinchi(String maTC) {
        this.maTC = maTC;
    }
    
    public String getMaTC() {
        return maTC;
    }

    public void setMaTC(String maTC) {
        this.maTC = maTC;
    }

    public int getSoTC() {
        return soTC;
    }

    public void setSoTC(int soTC) {
        this.soTC = soTC;
    }
	
}
