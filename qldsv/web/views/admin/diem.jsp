<%@page import="models.diem"%>
<%@page import="models.Lop"%>
<%@page import="models.sinhvien"%>
<%@page import="models.theloai"%>
<%@page import="models.tinchi"%>
<%@page import="models.giangvien"%>
<%@page import="models.namhoc"%>
<%@page import="models.hocky"%>
<%@page import="models.monhoc"%>
<%@page import="java.util.List"%>
<%@page import="daos.SinhVienDAO"%>
<%@page import="daos.MonHocDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/templates/admin/inc/header.jsp" %>

<!-- Main Sidebar Container -->
<%@include file="/templates/admin/inc/menu.jsp" %>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1 class="m-0">Danh sách điểm</h1>
                </div><!-- /.col -->
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                        <li class="breadcrumb-item active">Danh sách điểm</li>
                    </ol>
                </div><!-- /.col -->
            </div><!-- /.row -->
        </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
        <div class="container-fluid">
            <table class="table table-bordered" id="datatable">
                <thead class="thead-CCFFFF">
                    <tr class="list-header">
                        <!--<th scope="col">#</th>-->
                        <th scope="col">Mã Sinh viên</th>
                        <th scope="col">Tên Sinh viên</th>
                        <th scope="col">Tên Môn học</th>
                        <th scope="col">Hệ số 1</th>
                        <th scope="col">Hệ số 3</th>
                        <th scope="col">Hệ số 6</th>
                        <th scope="col">Tổng điểm</th>
                        <th scope="col">Điểm chữ</th>
                        
<!--                        <th scope="col">Tín chỉ</th>
                        <th scope="col">Thể loại</th>
                        <th scope="col">Học kỳ</th>
                        <th scope="col">Năm học</th>-->
                    </tr>
                </thead>
                <tbody>
                    <%  SinhVienDAO svDAO = new SinhVienDAO();
                        MonHocDAO mhDAO = new MonHocDAO();
                        if (request.getAttribute("diemList") != null) {
                            List<diem> diemList = (List<diem>) request.getAttribute("diemList");
                            if (diemList.size() > 0) {
                                for (diem diem : diemList) {
                    %>
                    <tr class="tr-hover">
                        <!--<th scope="row"><input type="checkbox" name="vehicle1" value="Bike"></th>-->
                        <td><%=diem.getSinhvien().getMaSV()%></td>
                        <td><%=svDAO.findTenById(diem.getSinhvien().getMaSV())%></td>
                        <td><%=mhDAO.findTenById(diem.getMonhoc().getMaMH())%></td>
                        <td><%=diem.getHeso1()%></td>
                        <td><%=diem.getHeso3()%></td>
                        <td><%=diem.getHeso6()%></td>
                        <td><%=diem.getTongDiem()%></td>
                        <%
                            if (diem.getTongDiem()>=8.5){
                        %>
                                <td>A</td>
                                <% }else if(diem.getTongDiem()>=7){
                                %>
                                    <td>B</td>
                                    <% }else if(diem.getTongDiem()>=5.5){
                                    %>
                                        <td>C</td><!-- comment -->
                                        <% }else if(diem.getTongDiem()>=4){
                                        %>
                                            <td>D</td><!-- comment -->
                                            <% }else{
                                            %>
                                                <td>F</td>
                    </tr>
                    <%              }
                                }
                            }
                        }
                    %>
                </tbody>
            </table>


        </div><!-- /.container-fluid -->
    </section>
</div>
<script type="text/javascript">
    $(document).ready(function(){
    $("form").submit(function(event){
    event.preventDefault();
            var formData = new FormData(this);
            $.ajax({
            url:"input",
                    type: "post",
                    data: formData,
                    success: function(data){
                    var row = data;
                            for (i = 0; i < row.length; i++){
                    var column = row[i];
                            var eachrow = "<tr>";
                            for (j = 0; j < column.lenght; j++){
                    eachrow = eachrow + "<td>" + column[j] + "</td>";
                    }
                    eachrow = eachrow + "</td>";
                            $('#tbody').append(eachrow);
                    }
                    },
                    cache:false,
                    contentType: false,
                    processData: false
            })
    })
    }
</script>
<!-- /.content-wrapper -->
<%@include file="/templates/admin/inc/footer.jsp" %>