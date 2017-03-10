<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
    
    <head>
        <meta charset=utf-8>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>도서 예약 및  대여 시스템 </title>
        <!-- Load Roboto font -->
        <link href='http://fonts.googleapis.com/css?family=Roboto:400,300,700&amp;subset=latin,latin-ext' rel='stylesheet' type='text/css'>
        <!-- Load css styles -->
        <link rel="stylesheet" type="text/css" href="css/bootstrap.css" />
        <link rel="stylesheet" type="text/css" href="css/bootstrap-responsive.css" />
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link rel="stylesheet" type="text/css" href="css/pluton.css" />
        <!--[if IE 7]>
            <link rel="stylesheet" type="text/css" href="css/pluton-ie7.css" />
        <![endif]-->
        <link rel="stylesheet" type="text/css" href="css/jquery.cslider.css" />
        <link rel="stylesheet" type="text/css" href="css/jquery.bxslider.css" />
        <link rel="stylesheet" type="text/css" href="css/animate.css" />
        <!-- Fav and touch icons --> 
        <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144.png">
        <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114.png">
        <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/apple-touch-icon-72.png">
        <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57.png">
        <link rel="shortcut icon" href="images/ico/favicon.ico">
    </head>
    
    <body>
        <div class="navbar">
            <div class="navbar-inner">
                <div class="container">
                    <a href="#" class="brand">
                        <img src="images/logo.png" width="120" height="40" alt="Logo" />
                        <!-- This is website logo -->
                    </a>
                    <!-- Navigation button, visible on small resolution -->
                    <button type="button" class="btn btn-navbar" data-toggle="collapse" data-target=".nav-collapse">
                        <i class="icon-menu"></i>
                    </button>
                    <!-- Main navigation -->
                    <div class="nav-collapse collapse pull-right">
                        <ul class="nav" id="top-navigation">
                            <li class="active"><a href="#home">Home</a></li>
                            <li><a href="#info">KH도서관 소개</a></li>
                            <li><a href="#bookinfo">신규 도서 현황</a></li>
                            <li><a href="#bookborrow">사용자리뷰</a></li>
                           	<c:choose>
                           		<c:when test="${empty sessionScope.login_ok }">
	                           		<li><a href="#myinfo">마이페이지 </a></li>
	                            	<li><a href="member.do">회원가입</a></li>
	                            	<li><a href="login.do">로그인</a></li>
                           		</c:when>
                           		
                           		<c:otherwise>
		                           	<li><a href="#">${sessionScope.login_ok } 접속중</a></li>
		                           	<li><a href="#myinfo">마이페이지 </a></li>
		                            <li><a href="logout.do">로그아웃</a></li>	
                           		</c:otherwise>
                            </c:choose>
                            
                            <li><a href="bbsList.do">게시판</a></li>
                            
                        </ul>
                    </div>
                    <!-- End main navigation -->
                </div>
            </div>
        </div>
        <!-- Start home section -->
        <div id="home">
            <!-- Start cSlider -->
            <div id="da-slider" class="da-slider">
                <div class="triangle"></div>
                <!-- mask elemet use for masking background image -->
                <div class="mask"></div>
                <!-- All slides centred in container element -->
                <div class="container">
                    <!-- Start first slide -->
                    <div class="da-slide">
                        <h2 class="fittext2">국내 도서를 한눈에 볼수 있는 어플리케이션 출시!</h2>
                        <h4>국내 도서 정보를 한눈에</h4>
                        <p>지금 당장 구글 및 안드로이드 마켓에서 다운로드 해. 그럼 편해지리..</p>
                        <a href="#" class="da-link button">다운로드 받기</a>
                        <div class="da-img">
                            <img src="images/Slider01.png" alt="image01" width="320">
                        </div>
                    </div>
                    <!-- End first slide -->
                    <!-- Start second slide -->
                    <div class="da-slide">
                        <h2>KH 도서관 아이패드 증정 이벤트</h2>
                        <h4>어플을 설치 후 인증을 해보세요~! 아이패드가 무료!</h4>
                        <p>구글 및 안드로이드 마켓에서 KH도서관 앱을 다운 후 홈페이지에 올리면 이벤트 자동 응모! 아이패드 기회를 놓치지 마세요~!</p>
                        <a href="#" class="da-link button">이벤트 확인</a>
                        <div class="da-img">
                            <img src="images/Slider02.png" width="320" alt="image02">
                        </div>
                    </div>
                    <!-- End second slide -->
                    <!-- Start third slide -->	
                    <div class="da-slide">
                        <h2>지금 바로 리니지 레볼루션에 접속하세요~</h2>
                        <h4>리니지 레볼루션 연동</h4>
                        <p>리니지 레볼루션 GD 이벤트함,,  파이널 프로젝트는 어떻게 해야 할까 고민중인데 이걸 선택중</p>
                        <a href="#" class="da-link button">전체 보기</a>
                        <div class="da-img">
                            <img src="images/Slider03.png" width="320" alt="image03">
                        </div>
                    </div>
                    <!-- Start third slide -->
                    <!-- Start cSlide navigation arrows -->
                    <div class="da-arrows">
                        <span class="da-arrows-prev"></span>
                        <span class="da-arrows-next"></span>
                    </div>
                    <!-- End cSlide navigation arrows -->
                </div>
            </div>
        </div>
        <!-- End home section -->
        <!-- Service section start -->
        <div class="section primary-section" id="service">
            <div class="container">
                <!-- Start title section -->
                <div class="title">
                    <h1>간편 서비스</h1>
                    <!-- Section's title goes here -->
                    <p>간단하게 기술을 적용시켜서 간단한 기능들 구현</p>
                    <!--Simple description for section goes here. -->
                </div>
                <div class="row-fluid">
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="images/Service1.png" alt="service 1">
                            </div>
                            <h3>매장 찾기</h3>
                            <p>KH도서관 전국 매장찾기 서비스 입니다.</p>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="images/Service2.png" alt="service 2" />
                            </div>
                            <h3>연체 정보 확인</h3>
                            <p>도서 대여 반납일 및 연체 등 확인..</p>
                        </div>
                    </div>
                    <div class="span4">
                        <div class="centered service">
                            <div class="circle-border zoom-in">
                                <img class="img-circle" src="images/Service3.png" alt="service 3">
                            </div>
                            <h3>도서 대여 현황</h3>
                            <p>현재까지 내가 빌린 책 정보, 연체 정보 등 확인할수 있는 기능</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Service section end -->
        <!-- Portfolio section start -->
        <div class="section secondary-section " id="portfolio">
            <div class="triangle"></div>
            <div class="container">
                <div class=" title">
                    <h1>금주 신규 도서 입고 예정</h1>
                    <p>국 내외 입고 에정인 도서 목록 및 잡지,일간지 정보 입니다.</p>
                </div>
                <ul class="nav nav-pills">
                    <li class="filter" data-filter="all">
                        <a href="#noAction">모두보기</a>
                    </li>
                    <li class="filter" data-filter="web">
                        <a href="#noAction">국내도서</a>
                    </li>
                    <li class="filter" data-filter="photo">
                        <a href="#noAction">해외도서</a>
                    </li>
                    <li class="filter" data-filter="identity">
                        <a href="#noAction">기타 잡지</a>
                    </li>
                </ul>
                <!-- Start details for portfolio project 1 -->
                <div id="single-project">
                    <div id="slidingDiv" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio01.png" alt="project 1" />
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>Believe in yourself! Have faith in your abilities! Without a humble but reasonable confidence in your own powers you cannot be successful or happy.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 1 -->
                    <!-- Start details for portfolio project 2 -->
                    <div id="slidingDiv1" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio02.png" alt="project 2">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>Life is a song - sing it. Life is a game - play it. Life is a challenge - meet it. Life is a dream - realize it. Life is a sacrifice - offer it. Life is love - enjoy it.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 2 -->
                    <!-- Start details for portfolio project 3 -->
                    <div id="slidingDiv2" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio03.png" alt="project 3">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>How far you go in life depends on your being tender with the young, compassionate with the aged, sympathetic with the striving and tolerant of the weak and strong. Because someday in your life you will have been all of these.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 3 -->
                    <!-- Start details for portfolio project 4 -->
                    <div id="slidingDiv3" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio04.png" alt="project 4">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Project for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>Life's but a walking shadow, a poor player, that struts and frets his hour upon the stage, and then is heard no more; it is a tale told by an idiot, full of sound and fury, signifying nothing.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 4 -->
                    <!-- Start details for portfolio project 5 -->
                    <div id="slidingDiv4" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio05.png" alt="project 5">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>We need to give each other the space to grow, to be ourselves, to exercise our diversity. We need to give each other space so that we may both give and receive such beautiful things as ideas, openness, dignity, joy, healing, and inclusion.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 5 -->
                    <!-- Start details for portfolio project 6 -->
                    <div id="slidingDiv5" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio06.png" alt="project 6">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>I went to the woods because I wished to live deliberately, to front only the essential facts of life, and see if I could not learn what it had to teach, and not, when I came to die, discover that I had not lived.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 6 -->
                    <!-- Start details for portfolio project 7 -->
                    <div id="slidingDiv6" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio07.png" alt="project 7">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>Always continue the climb. It is possible for you to do whatever you choose, if you first get to know who you are and are willing to work with a power that is greater than ourselves to do it.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 7 -->
                    <!-- Start details for portfolio project 8 -->
                    <div id="slidingDiv7" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio08.png" alt="project 8">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>What if you gave someone a gift, and they neglected to thank you for it - would you be likely to give them another? Life is the same way. In order to attract more of the blessings that life has to offer, you must truly appreciate what you already have.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 8 -->
                    <!-- Start details for portfolio project 9 -->
                    <div id="slidingDiv8" class="toggleDiv row-fluid single-project">
                        <div class="span6">
                            <img src="images/Portfolio09.png" alt="project 9">
                        </div>
                        <div class="span6">
                            <div class="project-description">
                                <div class="project-title clearfix">
                                    <h3>Webste for Some Client</h3>
                                    <span class="show_hide close">
                                        <i class="icon-cancel"></i>
                                    </span>
                                </div>
                                <div class="project-info">
                                    <div>
                                        <span>Client</span>Some Client Name</div>
                                    <div>
                                        <span>Date</span>July 2013</div>
                                    <div>
                                        <span>Skills</span>HTML5, CSS3, JavaScript</div>
                                    <div>
                                        <span>Link</span>http://examplecomp.com</div>
                                </div>
                                <p>I learned that we can do anything, but we can't do everything... at least not at the same time. So think of your priorities not in terms of what activities you do, but when you do them. Timing is everything.</p>
                            </div>
                        </div>
                    </div>
                    <!-- End details for portfolio project 9 -->
                    <ul id="portfolio-grid" class="thumbnails row">
                        <li class="span4 mix web">
                            <div class="thumbnail">
                                <img src="images/Portfolio01.png" alt="project 1">
                                <a href="#single-project" class="more show_hide" rel="#slidingDiv">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix photo">
                            <div class="thumbnail">
                                <img src="images/Portfolio02.png" alt="project 2">
                                <a href="#single-project" class="show_hide more" rel="#slidingDiv1">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix identity">
                            <div class="thumbnail">
                                <img src="images/Portfolio03.png" alt="project 3">
                                <a href="#single-project" class="more show_hide" rel="#slidingDiv2">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix web">
                            <div class="thumbnail">
                                <img src="images/Portfolio04.png" alt="project 4">
                                <a href="#single-project" class="show_hide more" rel="#slidingDiv3">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix photo">
                            <div class="thumbnail">
                                <img src="images/Portfolio05.png" alt="project 5">
                                <a href="#single-project" class="show_hide more" rel="#slidingDiv4">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix identity">
                            <div class="thumbnail">
                                <img src="images/Portfolio06.png" alt="project 6">
                                <a href="#single-project" class="show_hide more" rel="#slidingDiv5">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix web">
                            <div class="thumbnail">
                                <img src="images/Portfolio07.png" alt="project 7" />
                                <a href="#single-project" class="show_hide more" rel="#slidingDiv6">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix photo">
                            <div class="thumbnail">
                                <img src="images/Portfolio08.png" alt="project 8">
                                <a href="#single-project" class="show_hide more" rel="#slidingDiv7">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                        <li class="span4 mix identity">
                            <div class="thumbnail">
                                <img src="images/Portfolio09.png" alt="project 9">
                                <a href="#single-project" class="show_hide more" rel="#slidingDiv8">
                                    <i class="icon-plus"></i>
                                </a>
                                <h3>제목이 들어올 el</h3>
                                <p>제목이 들어올 el</p>
                                <div class="mask"></div>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Portfolio section end -->
        <!-- About us section start -->
        <div class="section primary-section" id="about">
            <div class="triangle"></div>
            <div class="container">
                <div class="title">
                    <h1>KH도서관 베스트 지점</h1>
                    <p>전국에 KH도서관 지점 중 우수한 지점 3곳</p>
                </div>
                <div class="row-fluid team">
                    <div class="span4" id="first-person">
                        <div class="thumbnail">
                            <img src="images/Team1.png" alt="team 1">
                            <h3>KH도서관 역삼점</h3>
                            <ul class="social">
                                <li>
                                    <a href="">
                                        <span class="icon-facebook-circled"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="icon-twitter-circled"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="icon-linkedin-circled"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="mask">
                                <h2>KH도서관 역삼지점</h2>
                                <p>강남역 1번출구로 나와서 전방 100m 직진 후 좌측으로 100m 직진 후  좌측으로 또 다시 100m 직인 후 좌측에 건물</p>
                            </div>
                        </div>
                    </div>
                    <div class="span4" id="second-person">
                        <div class="thumbnail">
                            <img src="images/Team2.png" alt="team 1">
                            <h3>KH도서관 강남점</h3>
                            <ul class="social">
                                <li>
                                    <a href="">
                                        <span class="icon-facebook-circled"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="icon-twitter-circled"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="icon-linkedin-circled"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="mask">
                                <h2>KH도서관 강남지점</h2>
                                <p>강남역 1번출구로 나와서 전방 100m 직진 후 좌측으로 100m 직진 후  좌측으로 또 다시 100m 직인 후 좌측에 건물</p>
                            </div>
                        </div>
                    </div>
                    <div class="span4" id="third-person">
                        <div class="thumbnail">
                            <img src="images/Team3.png" alt="team 1">
                            <h3>KH도서관 의정부점</h3>
                            <ul class="social">
                                <li>
                                    <a href="">
                                        <span class="icon-facebook-circled"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="icon-twitter-circled"></span>
                                    </a>
                                </li>
                                <li>
                                    <a href="">
                                        <span class="icon-linkedin-circled"></span>
                                    </a>
                                </li>
                            </ul>
                            <div class="mask">
                                <h2>KH도서관 의정부역지점</h2>
                                <p>의정부역 1번출구로 나와서 전방 100m 직진 후 좌측으로 100m 직진 후  좌측으로 또 다시 100m 직인 후 좌측에 건물</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="about-text centered">
                    <h3>KH도서관 최우수 지점 역삼점!</h3>
                    <p>KH도서관 지점 중 역삼점은 KH도서관 지점 중에서도 최고의 지점으로, 직원의 친절함은 물론, 매장 청결도, 책 보유량 등 고객들이 가장 많이 이용하는 지점으로 선정! </p>
                </div>
                <h3>최고의 지점 역삼점</h3>
                <div class="row-fluid">
                    <div class="span6">
                        <ul class="skills">
                            <li>
                                <span class="bar" data-width="80%"></span>
                                <h3>직원의 친절도</h3>
                            </li>
                            <li>
                                <span class="bar" data-width="95%"></span>
                                <h3>책 보유량</h3>
                            </li>
                            <li>
                                <span class="bar" data-width="68%"></span>
                                <h3>매장 청결도</h3>
                            </li>
                            <li>
                                <span class="bar" data-width="70%"></span>
                                <h3>도서 대여 이용률</h3>
                            </li>
                        </ul>
                    </div>
                    <div class="span6">
                        <div class="highlighted-box center">
                            <h1>KH도서관 최고 지점 역삼점!</h1>
                            <p> 넓고 쾌적한 공간, 여유롭게 도서를 읽을수 있는공간! KH도서관 역삼지점에는 커피.차는 물론 여러가지 휴식을 즐기면서 삶의 여유로움을 찾을수 있습니다.</p>
                            <button class="button button-sp">역삼지점 바로가기</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- About us section end -->
        <div class="section secondary-section">
            <div class="triangle"></div>
            <div class="container centered">
                <p class="large-text">전국 어디서든 사용가능한 KH도서관 연간 회원권 구매하기</p>
                <a href="#" class="button">구매 바로가기</a>
            </div>
        </div>
        <!-- Client section start -->
        <!-- Client section start -->
        <div id="clients">
            <div class="section primary-section">
                <div class="triangle"></div>
                <div class="container">
                    <div class="title">
                        <h1>이용 고객 리뷰</h1>
                        <p>KH도서관 이용한 고객들이 남긴 리뷰 입니다~</p>
                    </div>
                    <div class="row">
                        <div class="span4">
                            <div class="testimonial">
                                <p>모든 것이 마음에 들지 않구요, 집에서 너무 멀어서 안좋아요. 모든게 안좋습니다.</p>
                                <div class="whopic">
                                    <div class="arrow"></div>
                                    <img src="images/Client1.png" class="centered" alt="client 1">
                                    <strong>우희주
                                        <small>백수</small>
                                    </strong>
                                </div>
                            </div>
                        </div>
                        <div class="span4">
                            <div class="testimonial">
                                <p>괜찮아 그럴수도 있지. 그럴수 있지. 그럴수도 있지.</p>
                                <div class="whopic">
                                    <div class="arrow"></div>
                                    <img src="images/Client2.png" class="centered" alt="client 2">
                                    <strong>성경진
                                        <small>백수</small>
                                    </strong>
                                </div>
                            </div>
                        </div>
                        <div class="span4">
                            <div class="testimonial">
                                <p>오키오키, 오키오키 콜? 콜? 콜콜!</p>
                                <div class="whopic">
                                    <div class="arrow"></div>
                                    <img src="images/Client3.png" class="centered" alt="client 3">
                                    <strong>오범진
                                        <small>백수대장</small>
                                    </strong>
                                </div>
                            </div>
                        </div>
                    </div>
                    <p class="testimonial-text">
                        "고객들이 만들어가는 KH도서관 더욱더 노력하여 고객 서비스에 보답하겠습니다.	"
                    </p>
                </div>
            </div>
        </div>
        <div class="section third-section">
            <div class="container centered">
                <div class="sub-section">
                    <div class="title clearfix">
                        <div class="pull-left">
                            <h3>다른 매장 정보</h3>
                        </div>
                        <ul class="client-nav pull-right">
                            <li id="client-prev"></li>
                            <li id="client-next"></li>
                        </ul>
                    </div>
                    <ul class="row client-slider" id="clint-slider">
                        <li>
                            <a href="">
                                <img src="images/clients/ClientLogo01.png" alt="client logo 1">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/clients/ClientLogo02.png" alt="client logo 2">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/clients/ClientLogo03.png" alt="client logo 3">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/clients/ClientLogo04.png" alt="client logo 4">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/clients/ClientLogo05.png" alt="client logo 5">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/clients/ClientLogo02.png" alt="client logo 6">
                            </a>
                        </li>
                        <li>
                            <a href="">
                                <img src="images/clients/ClientLogo04.png" alt="client logo 7">
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <!-- Price section start -->
        <div id="price" class="section secondary-section">
            <div class="container">
                <div class="title">
                    <h1>베스트샐러</h1>
                    <p>금주에 선정된 베스트 샐러</p>
                </div>
                <div class="price-table row-fluid">
                    <div class="span4 price-column">
                        <h3>가고싶은길을 가라</h3>
                        <ul class="list">
                            <li class="price">15.000원</li>
                            <li><strong>글쓴이</strong> 홍길동</li>
                            <li><strong>출판일</strong> 2017/03/02</li>
                            <li><strong>즉시 구매시 15% 할인</strong></li>
                        </ul>
                        <a href="#" class="button button-ps">구매</a>
                    </div>
                    <div class="span4 price-column">
                        <h3>프로가 되는법</h3>
                        <ul class="list">
                            <li class="price">23.000원</li>
                            <li><strong>글쓴이</strong> 홍길동</li>
                            <li><strong>출판일</strong> 2017/03/02</li>
                            <li><strong>즉시 구매시 20% 할인</strong></li>
                        </ul>
                        <a href="#" class="button button-ps">구매</a>
                    </div>
                    <div class="span4 price-column">
                        <h3>인생은 한방이다</h3>
                        <ul class="list">
                            <li class="price">31.500원</li>
                            <li><strong>글쓴이</strong> 홍길동</li>
                            <li><strong>출판일</strong> 2017/03/02</li>
                            <li><strong>즉시 구매시 10% 할인</strong></li>
                        </ul>
                        <a href="#" class="button button-ps">구매</a>
                    </div>
                </div>
                <div class="centered">
                    <p class="price-text">"금주에 선정된 베스트샐러 절찬 판매중"</p>
                    <a href="#contact" class="button">전체목록보기</a>
                </div>
            </div>
        </div>
        <!-- Price section end -->
        <!-- Newsletter section start -->
        <div class="section third-section">
            <div class="container newsletter">
                <div class="sub-section">
                    <div class="title clearfix">
                        <div class="pull-left">
                            <h3>도서검색 서비스</h3>
                        </div>
                    </div>
                </div>
                <div id="success-subscribe" class="alert alert-success invisible">
                    <strong>Well done!</strong>You successfully subscribet to our newsletter.</div>
                <div class="row-fluid">
                    <div class="span5">
                        <p>최신도서 , 국내도서, 해외도서 등 도서를 자유롭게 검색 및 위치를 확인 할수 있는곳 입니다.</p>
                    </div>
                    <div class="span7">
                        <form class="inline-form">
                            <input type="email" name="email" id="nlmail" class="span8" placeholder="검색할 도서 입력" required />
                            <button id="subscribe" class="button button-sp">검색하기</button>
                        </form>
                        <div id="err-subscribe" class="error centered">Please provide valid email address.</div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Newsletter section end -->
        <!-- Contact section start -->
        <div id="contact" class="contact">
            <div class="section secondary-section">
                <div class="container">
                    <div class="title">
                        <h1>전국 KH도서관 지점 찾기</h1>
                        <p>우리집 주변, 내가 있는곳에 KH정보도서관을 검색 및 위치찾기</p>
                    </div>
                </div>
                <div class="map-wrapper">
                    <div class="map-canvas" id="map-canvas">Loading map...</div>
                    <div class="container">
                        <div class="row-fluid">
                            <div class="span5 contact-form centered">
                                <h3>궁금한걸 물어보세요!</h3>
                                <div id="successSend" class="alert alert-success invisible">
                                    <strong>Well done!</strong>Your message has been sent.</div>
                                <div id="errorSend" class="alert alert-error invisible">There was an error.</div>
                                <form id="contact-form" action="php/mail.php">
                                    <div class="control-group">
                                        <div class="controls">
                                            <input class="span12" type="text" id="name" name="name" placeholder="* 이름입력.." />
                                            <div class="error left-align" id="err-name">Please enter name.</div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <input class="span12" type="email" name="email" id="email" placeholder="* 이메일 주소입력.." />
                                            <div class="error left-align" id="err-email">Please enter valid email adress.</div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <textarea class="span12" name="comment" id="comment" placeholder="* 내용을 입력해주세요.."></textarea>
                                            <div class="error left-align" id="err-comment">Please enter your comment.</div>
                                        </div>
                                    </div>
                                    <div class="control-group">
                                        <div class="controls">
                                            <button id="send-mail" class="message-btn">메세지 보내기</button>
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="container">
                    <div class="span9 center contact-info">
                        <p>서울 특별시 강남구 대치동 521-23</p>
                        <p class="info-mail">sadi2345@naver.com</p>
                        <p>010 - 2726 - 0401</p>
                        <div class="title">
                            <h3>접속 가능한 소설</h3>
                        </div>
                    </div>
                    <div class="row-fluid centered">
                        <ul class="social">
                            <li>
                                <a href="">
                                    <span class="icon-facebook-circled"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="icon-twitter-circled"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="icon-linkedin-circled"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="icon-pinterest-circled"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="icon-dribbble-circled"></span>
                                </a>
                            </li>
                            <li>
                                <a href="">
                                    <span class="icon-gplus-circled"></span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- Contact section edn -->
        <!-- Footer section start -->
        <div class="footer">
      <p>KH도서관 | TEL : 02)987-6541 | FAX : 02)123-4567 | 대표 : MJ |
         사업자등록번호 : 789-45-12345 | 서울시 강남구 역상동 123 - 456</p>
      <p>Copyright &copy; 2016 MINJI ALL RIGHTS RESERVED.</p>
              </div>
        <!-- Footer section end -->
        <!-- ScrollUp button start -->
        <div class="scrollup">
            <a href="#">
                <i class="icon-up-open"></i>
            </a>
        </div>
        <!-- ScrollUp button end -->
        <!-- Include javascript -->
        <script src="js/jquery.js"></script>
        <script type="text/javascript" src="js/jquery.mixitup.js"></script>
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/modernizr.custom.js"></script>
        <script type="text/javascript" src="js/jquery.bxslider.js"></script>
        <script type="text/javascript" src="js/jquery.cslider.js"></script>
        <script type="text/javascript" src="js/jquery.placeholder.js"></script>
        <script type="text/javascript" src="js/jquery.inview.js"></script>
        <!-- Load google maps api and call initializeMap function defined in app.js -->
 		<script async="async" defer="defer" type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBygF3bEBoPJs9oVvWSyIEMZPXi0BNV1gQ&sensor=false&callback=initializeMap"></script>
    
        <!-- css3-mediaqueries.js for IE8 or older -->
        <!--[if lt IE 9]>
            <script src="js/respond.min.js"></script>
        <![endif]-->
        <script type="text/javascript" src="js/app.js"></script>
    </body>
</html>