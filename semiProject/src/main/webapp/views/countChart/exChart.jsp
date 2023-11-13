<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html>
            <head>
                <meta charset="UTF-8">
                    <title>Insert title here</title>

                    <style>
                        .excharPage {
                            width: 100%;
                            height: 100%;
                        }
                        .exchart-middle {
                            display: flex;
                            justify-content: space-around;
                            width: 100%;
                        }
                        .exchart-chart {
                            width: 900px;
                            height: 500px;
                            background-color: white;
                            border-radius: 15px 15px 15px 15px;
                            opacity: 0.7;
                        }
                        .exchart-inputInfo {
                            width: 500px;
                            height: 500px;
                            background-color: white;
                            border-radius: 15px 15px 15px 15px;
                            opacity: 0.7;

                        }
                        .exchart-bottom {
                            display: flex;
                            justify-content: space-around;
                            width: 100%;
                        }
                        .exchart-dayInfo {
                            width: 700px;
                            height: 500px;
                            background-color: white;
                            border-radius: 15px 15px 15px 15px;
                            opacity: 0.7;
                        }
                        .exchart-targetInfo {
                            width: 700px;
                            height: 500px;
                            background-color: white;
                            border-radius: 15px 15px 15px 15px;
                            opacity: 0.7;

                        }
                        .chart-title {
                            background-color: rgba(244, 244, 242, 0.847);
                            border-radius: 15px 15px 0 0;
                            text-align: center;
                            font-family: 'Roboto', sans-serif;
                            height: 40px;
                        }
                        .checkbox-wrapper-64 input[type="checkbox"] {
                            visibility: hidden;
                            display: none;
                        }

                        .checkbox-wrapper-64 *,
                        .checkbox-wrapper-64 ::after,
                        .checkbox-wrapper-64 ::before {
                            box-sizing: border-box;
                        }

                        /* The switch - the box around the slider */
                        .checkbox-wrapper-64 .switch {
                            font-size: 17px;
                            position: relative;
                            display: inline-block;
                            width: 3.5em;
                            height: 2em;
                        }

                        /* Hide default HTML checkbox */
                        .checkbox-wrapper-64 .switch input {
                            opacity: 0;
                            width: 0;
                            height: 0;
                        }

                        /* The slider */
                        .checkbox-wrapper-64 .slider {
                            position: absolute;
                            cursor: pointer;
                            top: 0;
                            left: 0;
                            right: 0;
                            bottom: 0;
                            background-color: #fff;
                            border: 1px solid #adb5bd;
                            transition: 0.4s;
                            border-radius: 30px;
                        }

                        .checkbox-wrapper-64 .slider:before {
                            position: absolute;
                            content: "";
                            height: 1.4em;
                            width: 1.4em;
                            border-radius: 20px;
                            left: 0.27em;
                            bottom: 0.25em;
                            background-color: #adb5bd;
                            transition: 0.4s;
                        }

                        .checkbox-wrapper-64 input:checked + .slider {
                            background-color: #007bff;
                            border: 1px solid #007bff;
                        }

                        .checkbox-wrapper-64 input:focus + .slider {
                            box-shadow: 0 0 1px #007bff;
                        }

                        .checkbox-wrapper-64 input:checked + .slider:before {
                            transform: translateX(1.4em);
                            background-color: #fff;
                        }
                        .checkbox-title {
                            font-family: 'Roboto', sans-serif;
                        }
                        .chart-inputInfo-data-check {
                            display: flex;
                            justify-content: center;
                        }
                    </style>
                </head>
                <body>
                    <jsp:include page="/views/common/menubar.jsp"/>

                    <div class="excharPage">
                        <div class="exchart-middle">
                            <!--메인 차트 보여주는 부분-->
                            <div class="exchart-chart">
                                <div class="chart-title">total avg char</div>
                                <div style="width: 100%; height: 100%;">
                                    <canvas id="totalChart"></canvas>
                                </div>
                                <script>
                                    const ctx = document.getElementById('totalChart');
                                    // const labels = Utils.months({count: 7});
                                    const data = {
                                        labels: [
                                            "월",
                                            "월",
                                            "월",
                                            "월",
                                            "월",
                                            "월",
                                            "월"
                                        ],
                                        datasets: [
                                            {
                                                label: 'My First Dataset',
                                                data: [
                                                    65,
                                                    59,
                                                    80,
                                                    81,
                                                    56,
                                                    55,
                                                    40
                                                ],
                                                fill: false,
                                                borderColor: 'rgb(75, 192, 192)',
                                                tension: 0.1
                                            }
                                        ]
                                    };
                                    const config = {
                                        type: 'line',
                                        data: data
                                    };
                                    new Chart(ctx, config);
                                </script>
                            </div>
                            <!--오운완 정보를 입력받는 부분-->
                            <div class="exchart-inputInfo">
                                <div class="chart-title">input today ex</div>

                                <div class="chart-inputInfo-data">
                                    <form action="chartInfo.ct" method="post" align="center">
                                        <div style="display: flex; justify-content: center; margin-top: 30px;">
                                            <div class="chart-inputInfo-data-check" style="margin-right: 50px;">
                                                <div class="checkbox-title">shoulder</div>
                                                <div class="checkbox-wrapper-64">
                                                    <label class="switch">
                                                        <input type="checkbox" value="shoulder" name="exTarget">
                                                            <span class="slider"></span>
                                                        </label>
                                                    </div>
                                                </div>
                                                <br>
                                                    <div class="chart-inputInfo-data-check">
                                                        <div class="checkbox-title">chest</div>
                                                        <div class="checkbox-wrapper-64">
                                                            <label class="switch">
                                                                <input type="checkbox" value="chest" name="exTarget">
                                                                    <span class="slider"></span>
                                                                </label>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br>
                                                        <div style="display: flex; justify-content: center; ">
                                                            <div class="chart-inputInfo-data-check" style="margin-right: 50px;">
                                                                <div class="checkbox-title">back</div>
                                                                <div class="checkbox-wrapper-64">
                                                                    <label class="switch">
                                                                        <input type="checkbox" value="back" name="exTarget">
                                                                            <span class="slider"></span>
                                                                        </label>
                                                                    </div>
                                                                </div>
                                                                <br>
                                                                    <div class="chart-inputInfo-data-check">
                                                                        <div class="checkbox-title">leg</div>
                                                                        <div class="checkbox-wrapper-64">
                                                                            <label class="switch">
                                                                                <input type="checkbox" value="leg" name="exTarget">
                                                                                    <span class="slider"></span>
                                                                                </label>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                    <br>
                                                                        <div style="display: flex; justify-content: center; ">
                                                                            <div class="chart-inputInfo-data-check" style="margin-right: 50px;">
                                                                                <div class="checkbox-title">Biceps</div>
                                                                                <div class="checkbox-wrapper-64">
                                                                                    <label class="switch">
                                                                                        <input id="test1" type="checkbox" value="Biceps" name="exTarget">
                                                                                            <span class="slider"></span>
                                                                                        </label>
                                                                                    </div>
                                                                                </div>
                                                                                <br>
                                                                                    <div class="chart-inputInfo-data-check">
                                                                                        <div class="checkbox-title">triceps</div>
                                                                                        <div class="checkbox-wrapper-64">
                                                                                            <label class="switch">
                                                                                                <input type="checkbox" value="triceps" name="exTarget">
                                                                                                    <span class="slider"></span>
                                                                                                </label>
                                                                                            </div>
                                                                                        </div>
                                                                                    </div>
                                                                                    <br>
                                                                                        <div class="checkbox-title">exercise time</div>

                                                                                        <input
                                                                                            type="range"
                                                                                            value="0"
                                                                                            name="exTime"
                                                                                            class="form-range"
                                                                                            min="0"
                                                                                            max="300"
                                                                                            step="10"
                                                                                            id="customRange3"
                                                                                            onchange="checkTime()">
                                                                                            <p style="font-family: 'Roboto', sans-serif" ;=";">time : ${ex.exChartTime}분
                                                                                            </p>

                                                                                            <br>

                                                                                                <input type="hidden" value="${loginUser.userNo}" name="userNo">
                                                                                                    <button type="submit" id="exsubmitBtn" class="btn btn-outline-primary">제출</button>
                                                                                                    <button
                                                                                                        id="exupdateSubmitBtn"
                                                                                                        style="display: none;"
                                                                                                        class="btn btn-outline-primary"
                                                                                                        onclick="updateChartInfo()">수정</button>
                                                                                                </form>

                                                                                                <script>
                                                                                                   
                                                                                                    let chartInfo;
                                                                                                    checkTime = () => {
                                                                                                        document
                                                                                                            .querySelector("p")
                                                                                                            .innerText = "time : ";
                                                                                                        const time = document
                                                                                                            .getElementById("customRange3")
                                                                                                            .value;
                                                                                                        document
                                                                                                            .querySelector("p")
                                                                                                            .innerText += time + "분";
                                                                                                    }

                                                                                                    window.onload = () => {
                                                                                                        ajaxController.getChartInfo(null, function(result){
                                                                                                            chartInfo = result;
                                                                                                            tmp(chartInfo)
                                                                                                        })

                                                                                                    }

                                                                                                    function tmp(chartInfo){
                                                                                                        let shoulder = 0;
                                                                                                                let leg = 0;
                                                                                                                let chest = 0;
                                                                                                                let back = 0;
                                                                                                                let triceps = 0;
                                                                                                                let Biceps = 0;
                                                                                                                let oneWeeks = 0;
                                                                                                                let twoWeeks = 0;
                                                                                                                let threeWeeks = 0;
                                                                                                                let foreWeeks = 0;

                                                                                                                const pattern1 = new RegExp("^[1-7]$");
                                                                                                                const pattern2 = /^(?:[8-9]|1[0-5])$/;
                                                                                                                const pattern3 = /^(1[6-9]|20|21|22|23)$/;
                                                                                                                const pattern4 = /^(24|25|26|27|28|29|30)$/;

                                                                                                                let totalExTime = 0;
                                                                                                                const arr = document.querySelectorAll('input[name="exTarget"]')
                                                                                                                // 현재날짜 정보를 ajax로 받은 날짜형식에 맞게 반환한 값
                                                                                                                const date = new Date();
                                                                                                                const year = date.getFullYear();
                                                                                                                const month = ('0' + (
                                                                                                                    date.getMonth() + 1
                                                                                                                )).slice(-2);
                                                                                                                const day = ('0' + date.getDate()).slice(-2);
                                                                                                                const dateStr = month + '월 ' + day + ", " + year
                                                                                                                let editFlag = false;
                                                                                                                for (a of arr) {

                                                                                                                    if (dateStr == chartInfo[chartInfo.length - 1].exCharDay && chartInfo[chartInfo.length - 1].exChartTarget.includes(a.value)) {
                                                                                                                        editFlag = true;
                                                                                                                        document
                                                                                                                            .querySelector('input[value="' + a.value + '"]')
                                                                                                                            .checked = true
                                                                                                                    } else {
                                                                                                                        document
                                                                                                                            .querySelector('input[value="' + a.value + '"]')
                                                                                                                            .checked = false;

                                                                                                                    }

                                                                                                                }

                                                                                                                if (editFlag) {
                                                                                                                    document
                                                                                                                        .querySelector("#exupdateSubmitBtn")
                                                                                                                        .style
                                                                                                                        .display = "block"
                                                                                                                    document
                                                                                                                        .querySelector("#exsubmitBtn")
                                                                                                                        .style
                                                                                                                        .display = "none"
                                                                                                                } else {
                                                                                                                    document
                                                                                                                        .querySelector("#exsubmitBtn")
                                                                                                                        .style
                                                                                                                        .display = "block"

                                                                                                                    document
                                                                                                                        .querySelector("#exupdateSubmitBtn")
                                                                                                                        .style
                                                                                                                        .display = "none"
                                                                                                                }

                                                                                                                for (const time of chartInfo) {

                                                                                                                    time
                                                                                                                        .exChartTarget
                                                                                                                        .includes('shoulder') === true
                                                                                                                            ? shoulder++
                                                                                                                            : '';
                                                                                                                    time
                                                                                                                        .exChartTarget
                                                                                                                        .includes('leg') === true
                                                                                                                            ? leg++
                                                                                                                            : '';
                                                                                                                    time
                                                                                                                        .exChartTarget
                                                                                                                        .includes('chest') === true
                                                                                                                            ? chest++
                                                                                                                            : '';
                                                                                                                    time
                                                                                                                        .exChartTarget
                                                                                                                        .includes('back') === true
                                                                                                                            ? back++
                                                                                                                            : '';
                                                                                                                    time
                                                                                                                        .exChartTarget
                                                                                                                        .includes('triceps') === true
                                                                                                                            ? triceps++
                                                                                                                            : '';
                                                                                                                    time
                                                                                                                        .exChartTarget
                                                                                                                        .includes('Biceps') === true
                                                                                                                            ? Biceps++
                                                                                                                            : '';

                                                                                                                    const exTime = time
                                                                                                                        .exCharDay
                                                                                                                        .substr(4, 2);
                                                                                                                    switch (true) {
                                                                                                                        case pattern1.test(exTime.replace(',', '')):
                                                                                                                            oneWeeks += time.exChartTime
                                                                                                                            break;
                                                                                                                        case pattern2.test(exTime.replace(',', '')):
                                                                                                                            twoWeeks += time.exChartTime
                                                                                                                            break;
                                                                                                                        case pattern3.test(exTime.replace(',', '')):
                                                                                                                            threeWeeks += time.exChartTime
                                                                                                                            break;
                                                                                                                        case pattern4.test(exTime.replace(',', '')):
                                                                                                                            foreWeeks += time.exChartTime
                                                                                                                            break;
                                                                                                                    }

                                                                                                                }
                                                                                                                oneWeeks = oneWeeks / 7;
                                                                                                                twoWeeks = twoWeeks / 7;
                                                                                                                threeWeeks = threeWeeks / 7;
                                                                                                                foreWeeks = foreWeeks / 7;

                                                                                                                const ctx3 = document.getElementById('daychart');
                                                                                                                new Chart(ctx3, {
                                                                                                                    type: 'bar',
                                                                                                                    data: {
                                                                                                                        labels: [
                                                                                                                            '1weeks', '2weeks', '3weeks', '4weeks'
                                                                                                                        ],
                                                                                                                        datasets: [
                                                                                                                            {
                                                                                                                                label: 'day week',
                                                                                                                                data: [
                                                                                                                                    oneWeeks, twoWeeks, threeWeeks, foreWeeks
                                                                                                                                ],
                                                                                                                                borderWidth: 1
                                                                                                                            }
                                                                                                                        ]
                                                                                                                    },
                                                                                                                    options: {
                                                                                                                        scales: {
                                                                                                                            y: {
                                                                                                                                beginAtZero: true
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                });

                                                                                                                const ctx2 = document.getElementById('targetchart');
                                                                                                                const data2 = {
                                                                                                                    labels: [
                                                                                                                        'shoulder',
                                                                                                                        'chest',
                                                                                                                        'back',
                                                                                                                        'Biceps',
                                                                                                                        'triceps',
                                                                                                                        'leg'
                                                                                                                    ],
                                                                                                                    datasets: [
                                                                                                                        {
                                                                                                                            label: 'my targetDate',
                                                                                                                            data: [
                                                                                                                                shoulder,
                                                                                                                                chest,
                                                                                                                                back,
                                                                                                                                Biceps,
                                                                                                                                triceps,
                                                                                                                                leg
                                                                                                                            ],
                                                                                                                            fill: true,
                                                                                                                            backgroundColor: 'rgba(255, 99, 132, 0.2)',
                                                                                                                            borderColor: 'rgb(255, 99, 132)',
                                                                                                                            pointBackgroundColor: 'rgb(255, 99, 132)',
                                                                                                                            pointBorderColor: '#fff',
                                                                                                                            pointHoverBackgroundColor: '#fff',
                                                                                                                            pointHoverBorderColor: 'rgb(255, 99, 132)'
                                                                                                                        }
                                                                                                                    ]
                                                                                                                };

                                                                                                                const config2 = {
                                                                                                                    type: 'radar',
                                                                                                                    data: data2,
                                                                                                                    options: {
                                                                                                                        elements: {
                                                                                                                            line: {
                                                                                                                                borderWidth: 2
                                                                                                                            }
                                                                                                                        }
                                                                                                                    }
                                                                                                                };

                                                                                                                new Chart(ctx2, config2);

                                                                                                    }
                                                                                                </script>
                                                                                            </div>

                                                                                        </div>
                                                                                    </div>
                                                                                    <br>
                                                                                        <br>
                                                                                            <div class="exchart-bottom">
                                                                                                <!--날짜로 운동 차트 정리-->
                                                                                                <div class="exchart-dayInfo">
                                                                                                    <div class="chart-title">day chart</div>
                                                                                                    <div align="center">
                                                                                                        <canvas id="daychart"></canvas>
                                                                                                    </div>
                                                                                                    <div>
                                                                                                        차트 설명
                                                                                                    </div>

                                                                                                </div>
                                                                                                <!--운동 부위별 운동 차트 정리-->
                                                                                                <div class="exchart-targetInfo">
                                                                                                    <div class="chart-title">target chart</div>
                                                                                                    <div align="left" style="width: 100%; height: 80%; ">
                                                                                                        <canvas id="targetchart"></canvas>
                                                                                                    </div>
                                                                                                    <div>
                                                                                                        차트 설명
                                                                                                    </div>

                                                                                                </div>
                                                                                            </div>
                                                                                        </div>
                                                                                    </body>
                                                                                </html>