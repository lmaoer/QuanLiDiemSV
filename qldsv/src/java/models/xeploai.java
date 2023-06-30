package models;



public class xeploai {

	private int maXL;
	private float canDuoi;
	private float canTren;
	private String tenXL;

    public xeploai() {
    }

    public xeploai(int maXL, float canDuoi, float canTren, String tenXL) {
        this.maXL = maXL;
        this.canDuoi = canDuoi;
        this.canTren = canTren;
        this.tenXL = tenXL;
    }

    public int getMaXL() {
        return maXL;
    }

    public void setMaXL(int maXL) {
        this.maXL = maXL;
    }

    public float getCanDuoi() {
        return canDuoi;
    }

    public void setCanDuoi(float canDuoi) {
        this.canDuoi = canDuoi;
    }

    public float getCanTren() {
        return canTren;
    }

    public void setCanTren(float canTren) {
        this.canTren = canTren;
    }

    public String getTenXL() {
        return tenXL;
    }

    public void setTenXL(String tenXL) {
        this.tenXL = tenXL;
    }
	
}
