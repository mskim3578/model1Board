<%@page import="ch01.JSONObject"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!doctype html>
<html>
<%
JSONObject json = new JSONObject();
json.setName("sample");
json.putKey("January","February","March","April","May","June","July", "August", "September", "October", "November", "December");
Integer[] num1 = {20,34,56,12,14,56,22,11,23,33,12,33};
String[] num2 = {"12","34","56","12","14","56","22"
		,"11","23","33","12","33"};
Integer[] num3 = {15,24,36,62,74,16,62,31,53,63,72,63};

json.putValue(num1);
json.putValue(num3);

%>
<head>
    <title>Bar Chart Multi Axis</title>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="./dist/Chart.bundle.js"></script>
    <style>
    canvas {
        -moz-user-select: none;
        -webkit-user-select: none;
        -ms-user-select: none;
    }
    </style>
</head>

<body>
    <div style="width: 75%">
        <canvas id="canvas"></canvas>
    </div>
    <button id="randomizeData">Randomize Data</button>
    <script>
    var data = <%=json%>
    var randomScalingFactor = function() {
        return (Math.random() > 0.5 ? 1.0 : -1.0) * Math.round(Math.random() * 100);
    };
    var randomColorFactor = function() {
        return Math.round(Math.random() * 255);
    };
    var randomColor = function() {
        return 'rgba(' + randomColorFactor() + ',' + randomColorFactor() + ',' + randomColorFactor() + ',.7)';
    };

    var barChartData = {
        labels: ["January", "February", "March", "April", "May", "June", "July"],
        datasets: [{
            label: 'Dataset 1',
            backgroundColor: "rgba(220,220,220,0.5)",
            yAxisID: "y-axis-1",
            data : [data.sample[0].January,
			        data.sample[0].February,
			        data.sample[0].March,
			        data.sample[0].April,
			        data.sample[0].May,
			        data.sample[0].June,
			        data.sample[0].July]
        }, {
            label: 'Dataset 2',
            backgroundColor: "rgba(151,187,205,0.5)",
            yAxisID: "y-axis-2",
            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
        }, {
            label: 'Dataset 3',
            backgroundColor: [randomColor(), randomColor(), randomColor(), randomColor(), randomColor(), randomColor(), randomColor()],
            yAxisID: "y-axis-1",
            data: [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()]
        }]

    };
    window.onload = function() {
        var ctx = document.getElementById("canvas").getContext("2d");
        window.myBar = Chart.Bar(ctx, {
            data: barChartData, 
            options: {
                responsive: true,
                hoverMode: 'label',
                hoverAnimationDuration: 400,
                stacked: false,
                title:{
                    display:true,
                    text:"Chart.js Bar Chart - Multi Axis"
                },
                scales: {
                    yAxes: [{
                        type: "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                        display: true,
                        position: "left",
                        id: "y-axis-1",
                    }, {
                        type: "linear", // only linear but allow scale type registration. This allows extensions to exist solely for log scale for instance
                        display: true,
                        position: "right",
                        id: "y-axis-2",
                        gridLines: {
                            drawOnChartArea: false
                        }
                    }],
                }
            }
        });
    };

    $('#randomizeData').click(function() {
        $.each(barChartData.datasets, function(i, dataset) {
            if (Chart.helpers.isArray(dataset.backgroundColor)) {
                dataset.backgroundColor= [randomColor(), randomColor(), randomColor(), randomColor(), randomColor(), randomColor(), randomColor()];
            } else {
                dataset.backgroundColor= randomColor();
            }

            dataset.data = [randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor(), randomScalingFactor()];

        });
        window.myBar.update();
    });
    </script>
</body>

</html>
