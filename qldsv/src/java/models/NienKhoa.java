package models;



public class NienKhoa {
	
	private String maNK;
	private String tenNK;

    public NienKhoa() {
    }

    public NienKhoa(String maNK, String tenNK) {
        this.maNK = maNK;
        this.tenNK = tenNK;
    }

    public String getMaNK() {
        return maNK;
    }

    public void setMaNK(String maNK) {
        this.maNK = maNK;
    }

    public String getTenNK() {
        return tenNK;
    }

    public void setTenNK(String tenNK) {
        this.tenNK = tenNK;
    }
	
        
}
