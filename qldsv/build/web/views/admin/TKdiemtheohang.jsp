<%@page import="models.diem"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" trimDirectiveWhitespaces="true"%>
<%@include file="/templates/admin/inc/header.jsp" %>

<!-- Main Sidebar Container -->
<%@include file="/templates/admin/inc/menu.jsp" %>
<%@page import="daos.ThongKeDAO"%>

<head>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        <% ThongKeDAO thongke = new ThongKeDAO();%>
        google.charts.load("current", {packages: ["corechart"]});
        google.charts.setOnLoadCallback(drawChart);
        function drawChart() {
            var data = google.visualization.arrayToDataTable([
                ['Loại điểm', 'Phần trăm'],
                ['A: >= 8,5đ', <%=thongke.findA()%>],
                ['B: >= 7đ', <%=thongke.findB()%>],
                ['C: >= 5.5đ', <%=thongke.findC()%>],
                ['D: >= 4đ', <%=thongke.findD()%>],
                ['F: < 4đ', <%=thongke.findF()%>]
            ]);

            var options = {
                title: 'BIỂU ĐỒ TRÒN THỐNG KÊ ĐIỂM THEO CÁC LOẠI ĐIỂM',
                is3D: true,
            };

            var chart = new google.visualization.PieChart(document.getElementById('piechart_3d'));
            chart.draw(data, options);
        }
    </script>

    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
    <script type="text/javascript">
        google.charts.load('current', {'packages': ['bar']});
        google.charts.setOnLoadCallback(drawStuff);

        function drawStuff() {
            var data = new google.visualization.arrayToDataTable([
                ['LOẠI ĐIỂM', 'PHẦM TRĂM'],
                ['A: >= 8,5đ', <%=thongke.findA()%>],
                ['B: >= 7đ', <%=thongke.findB()%>],
                ['C: >= 5.5đ', <%=thongke.findC()%>],
                ['D: >= 4đ', <%=thongke.findD()%>],
                ['F: < 4đ', <%=thongke.findF()%>]
            ]);

            var options = {
                width: 800,
                legend: {position: 'none'},
                chart: {
                    title: 'BIỂU ĐỒ CỘT THỐNG KÊ ĐIỂM THEO LOẠI ĐIỂM',
                    },
                axes: {
                    x: {
                        0: {side: 'top'} // Top x-axis.
                    }
                },
                bar: {groupWidth: "90%"}
            };

            var chart = new google.charts.Bar(document.getElementById('top_x_div'));
            // Convert the Classic options to Material options.
            chart.draw(data, google.charts.Bar.convertOptions(options));
        }
        ;
    </script>
</head>
<body>
    <div id="piechart_3d" style="width: 900px; height: 500px; margin-left: 400px"></div>
    <div id="top_x_div" style="width: 600px; height: 400px; margin-left: 400px"></div>
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