<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>



<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>travelmate</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
<style>
.nav-wrapper {
  background: linear-gradient(270deg, #74E0D4, #003542); 
}
.no-pad-bot {
  background-color: #F3FBFF; 
}
span{
padding: 70px;
}

</style>
</head>
<body>
  <nav  role="navigation">
    <div class="nav-wrapper "><a id="logo-container" href="/" class="brand-logo"><span class="col s12 light"> travelmate</span></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="/"><span>Landing Page</span></a></li>
         <li><a href="/about"><span>About us</span></a></li>
      </ul>
       <ul id="nav-mobile" class="sidenav  grey lighten-3">
        <li><a href="/">Landing Page</a></li>
         <li><a href="/about">About us</a></li>
      </ul>
      <a href="/" data-target="nav-mobile" class="sidenav-trigger"><i class="material-icons">menu</i></a>
    
</div>
  </nav>
  <div class="section no-pad-bot " >
		    
		<div class="container">
	
		<h1>Our team</h1>
				
		<table id="team">
			<c:forEach items="${requestScope.members}" var="entry">
				<tr>

					
					<td>
					<div >
					  <img src="${entry.value.photo}" alt="Photo" class="circle">
					 <!-- <div class="container">
					    <h><b><c:out value="${entry.value.name}" /></b></h4> 					    
					  </div>-->
					</div>
					
					</td>
										<td>
					<h5><c:out value="${entry.value.name}"></c:out></h5>
					<c:out value="${entry.value.telephone}"></c:out>
					</td>
					</tr>					

			</c:forEach>
		</table>
		
		</div>


  <footer class="page-footer teal">
    <div class="container">

        <div class="col l6 s12 ">
       
      


        </div>
</div>
    <div class="footer-copyright">
      <div class="container">
       <a class="teal-text text-lighten-5" href="/">travelmate</a>
       <br>
       <a class="teal-text text-lighten-5" href="mailto:way.team.soft@gmail.com">way.team.soft@gmail.com</a>
      </div>
    </div>
  </footer>

</div>
  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>

  </body>
</html>