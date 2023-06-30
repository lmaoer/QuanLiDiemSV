<%@page import="models.diem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/templates/admin/inc/header.jsp" %>
<%@page import="models.theloai"%>
<%@page import="models.tinchi"%>
<%@page import="models.giangvien"%>
<%@page import="models.namhoc"%>
<%@page import="models.hocky"%>
<%@page import="models.monhoc"%>
<%@page import="daos.ThongKeDAO"%>
<%@page import="java.util.List"%>
<!-- Main Sidebar Container -->
<%@include file="/templates/admin/inc/menu.jsp" %>
<%@page import="daos.ThongKeDAO"%>

<head>
</head>
<body>
    <% ThongKeDAO thongke = new ThongKeDAO();%>
    <h1 style="margin-left: 1000px">${maMonHoc}</h1>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {packages: ["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Loại điểm', 'Phần trăm'],
                ['A: >= 8,5đ', <%=thongke.findAByMon("CN1")%>],
                ['B: >= 7đ', <%=thongke.findBByMon("CN1")%>],
                ['C: >= 5.5đ', <%=thongke.findCByMon("CN1")%>],
                ['D: >= 4đ', <%=thongke.findDByMon("CN1")%>],
                ['F: < 4đ', <%=thongke.findFByMon("CN1")%>]
            ]);

            var options = {
                title: "lẬP TRÌNH HƯỚNG ĐỐI TƯỢNG",
                pieHole: 0.4,
            };

            var chart = new google.visualization.PieChart(document.getElementById('donutchart1'));
            chart.draw(data, options);
        }
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <div id="donutchart1" style="width: 900px; height: 500px; margin-left: 400px"></div>
    
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {packages: ["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Loại điểm', 'Phần trăm'],
                ['A: >= 8,5đ', <%=thongke.findAByMon("CN2")%>],
                ['B: >= 7đ', <%=thongke.findBByMon("CN2")%>],
                ['C: >= 5.5đ', <%=thongke.findCByMon("CN2")%>],
                ['D: >= 4đ', <%=thongke.findDByMon("CN2")%>],
                ['F: < 4đ', <%=thongke.findFByMon("CN2")%>]
            ]);

            var options = {
                title: "CẤU TRÚC DỮ LIỆU VÀ GIẢI THUẬT",
                pieHole: 0.4,
            };

            var chart = new google.visualization.PieChart(document.getElementById('donutchart2'));
            chart.draw(data, options);
        }
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <div id="donutchart2" style="width: 900px; height: 500px; margin-left: 400px"></div>
    
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load("current", {packages: ["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Loại điểm', 'Phần trăm'],
                ['A: >= 8,5đ', <%=thongke.findAByMon("CN3")%>],
                ['B: >= 7đ', <%=thongke.findBByMon("CN3")%>],
                ['C: >= 5.5đ', <%=thongke.findCByMon("CN3")%>],
                ['D: >= 4đ', <%=thongke.findDByMon("CN3")%>],
                ['F: < 4đ', <%=thongke.findFByMon("CN3")%>]
            ]);

            var options = {
                title: "LẬP TRÌNH WEB",
                pieHole: 0.4,
            };

            var chart = new google.visualization.PieChart(document.getElementById('donutchart3'));
            chart.draw(data, options);
        }
    </script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <div id="donutchart3" style="width: 900px; height: 500px; margin-left: 400px"></div>
</body>

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