package models;



public class monhoc {

	private String maMH;
	private String tenMH;
	tinchi tinchi;
	theloai theloai;

    public monhoc() {
    }

    public monhoc(String maMH, String tenMH, tinchi tinchi, theloai theloai) {
        this.maMH = maMH;
        this.tenMH = tenMH;
        this.tinchi = tinchi;
        this.theloai = theloai;
    }
    
    public monhoc(String maMH, String tenMH) {
        this.maMH = maMH;
        this.tenMH = tenMH;
    }

    public monhoc(String maMH) {
        this.maMH = maMH;
    }
    
    public String getMaMH() {
        return maMH;
    }

    public void setMaMH(String maMH) {
        this.maMH = maMH;
    }

    public String getTenMH() {
        return tenMH;
    }

    public void setTenMH(String tenMH) {
        this.tenMH = tenMH;
    }

    public tinchi getTinchi() {
        return tinchi;
    }

    public void setTinchi(tinchi tinchi) {
        this.tinchi = tinchi;
    }

    public theloai getTheloai() {
        return theloai;
    }

    public void setTheloai(theloai theloai) {
        this.theloai = theloai;
    }
	
}
