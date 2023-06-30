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
                ['A: >= 8,5đ', <%=thongke.findAByMon("TOAN1")%>],
                ['B: >= 7đ', <%=thongke.findBByMon("TOAN1")%>],
                ['C: >= 5.5đ', <%=thongke.findCByMon("TOAN1")%>],
                ['D: >= 4đ', <%=thongke.findDByMon("TOAN1")%>],
                ['F: < 4đ', <%=thongke.findFByMon("TOAN1")%>]
            ]);

            var options = {
                title: "GIẢI TÍCH",
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
                ['A: >= 8,5đ', <%=thongke.findAByMon("TOAN2")%>],
                ['B: >= 7đ', <%=thongke.findBByMon("TOAN2")%>],
                ['C: >= 5.5đ', <%=thongke.findCByMon("TOAN2")%>],
                ['D: >= 4đ', <%=thongke.findDByMon("TOAN2")%>],
                ['F: < 4đ', <%=thongke.findFByMon("TOAN2")%>]
            ]);

            var options = {
                title: "ĐẠI SỐ",
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
                ['A: >= 8,5đ', <%=thongke.findAByMon("TOAN3")%>],
                ['B: >= 7đ', <%=thongke.findBByMon("TOAN3")%>],
                ['C: >= 5.5đ', <%=thongke.findCByMon("TOAN3")%>],
                ['D: >= 4đ', <%=thongke.findDByMon("TOAN3")%>],
                ['F: < 4đ', <%=thongke.findFByMon("TOAN3")%>]
            ]);

            var options = {
                title: "TOÁN CAO CẤP",
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