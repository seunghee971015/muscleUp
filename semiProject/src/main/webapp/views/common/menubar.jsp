<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html>
        <head>
            <meta charset="UTF-8">
                <link
                    href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css"
                    rel="stylesheet"
                    integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9"
                    crossorigin="anonymous">
                    <script
                        src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js"
                        integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm"
                        crossorigin="anonymous"></script>

                    <script
                        type="text/javascript"
                        src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5df6089610150bf39081f4bdb1c7356a&libraries=services"></script>
                    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
                    <title>Insert title here</title>
                    

                        <style>
                            body {
                                height: 100vh;
                                background-color: #d6d7dc;
                            }
                            .top-var {
                                width: auto;
                                height: auto;
                                margin-top: 50px;
                                padding: 100px;
                            }
                            a {
                                text-decoration: none;
                                color: white;
                            }
                            .nav-link:hover {
                                background-color: #0d62fd;
                                color: white;
                            }
                        </style>

                    </head>
                    <body>
                        <!--상단바를 보여주는 부분-->
                        <div class="top-var" style=" border-radius: 15px 15px 15px 15px;">
                            <ul
                                class="nav nav-pills nav-fill "
                                style="background-color: white; color: white;  border-radius: 20px 20px 20px 20px;">
                                <li class="nav-item">
                                    <a class="nav-link" aria-current="page" href="#">운동통계표</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link " href="#">자유게시판</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">오운완</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link " aria-disabled="true">근육지도</a>
                                </li>
                            </ul>

                            <script>
                                const currentPage = document.getElementsByClassName("nav-item");
                                const currentPagea = document.querySelectorAll(".nav>.nav-item>a");
                                for (const current of currentPage) {
                                    current.onclick = function () {
                                        for (const a of currentPagea) {
                                            a
                                                .classList
                                                .remove("active");
                                        }
                                        const noticeNo = this.childNodes[1];
                                        noticeNo
                                            .classList
                                            .add("active");
                                    }
                                }
                            </script>
                        </div>

                    </body>
                </html>