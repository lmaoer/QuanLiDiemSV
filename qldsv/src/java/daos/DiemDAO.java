package daos;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import models.diem;
import models.giangvien;
import models.hocky;
import models.monhoc;
import models.namhoc;
import models.sinhvien;
import models.theloai;
import models.tinchi;
import utils.DBConnectionUtils;

public class DiemDAO extends AbstractDAO {

    public int nhapdiem(diem objDiem) {
        int result = 0;
        con = DBConnectionUtils.getConnection();
        String sql = "INSERT INTO diem(heso1,heso3,heso6,tongDiem,maGV,maSV,maMH,maTC,maTL,maHK,maNH)"
                + " VALUE(?,?,?,?,?,?,?,?,?,?,?)";
        try {
            pst = con.prepareStatement(sql);
            pst.setFloat(1, objDiem.getHeso1());
            pst.setFloat(2, objDiem.getHeso3());
            pst.setFloat(3, objDiem.getHeso6());
            pst.setFloat(4, objDiem.getTongDiem());
            pst.setString(5, objDiem.getGiangvien().getMaGV());
            pst.setInt(6, objDiem.getSinhvien().getMaSV());
            pst.setString(7, objDiem.getMonhoc().getMaMH());
            pst.setString(8, objDiem.getTinchi().getMaTC());
            pst.setString(9, objDiem.getTheloai().getMaTL());
            pst.setString(10, objDiem.getHocky().getMaHK());
            pst.setString(11, objDiem.getNamhoc().getMaNH());
            result = 3;
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

    public List<diem> findAll() {
        con = DBConnectionUtils.getConnection();
        List<diem> diemList = new ArrayList<diem>();
        String sql = "SELECT * FROM qldsv.diem";
        SinhVienDAO svDAO = new SinhVienDAO();
        try {
            st = con.createStatement();
            rs = st.executeQuery(sql);
            while (rs.next()) {
                diem diem = new diem(rs.getInt("maBD"),
                        rs.getFloat("heso1"),
                        rs.getFloat("heso3"),
                        rs.getFloat("heso6"),
                        rs.getFloat("tongDiem"),
                        new giangvien(rs.getString("maGV")),
                        new sinhvien(rs.getInt("maSV"), svDAO.findTenById(rs.getInt("maSV"))),
                        new monhoc(rs.getString("maMH")),
                        new tinchi(rs.getString("maTC")),
                        new theloai(rs.getString("maTL")),
                        new hocky(rs.getString("maHK")),
                        new namhoc(rs.getString("maNH"))
                );
                diemList.add(diem);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return diemList;
    }

}
