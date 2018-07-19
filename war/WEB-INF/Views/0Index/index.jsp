<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="controller.user.UsersControllerIndex"%>
<%@ page import="model.entity.Users"%>
<%@ page import="model.entity.Role"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	List<Users> users = (List<Users>)request.getAttribute("users");
	List<Role> roles = (List<Role>)request.getAttribute("roles");
	String almacenaRol="";
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
%>

<!DOCTYPE html>
<html lang="en">

<head>
     <meta charset="utf-8">
       <meta charset="utf-8">
  
   <title>Mallas Alamfer</title>
  <meta name ="descripcion" content ="Elaboramos mallas de alambre galvanizada en Arequipa  ,para la proteccion de areas al aire libre ,Distribuimos  a Arequipa , Puno , Tacna , Moquehua , Cusco , Todo el Sur del Pais">
        <meta name ="keywords" content ="malla de alambres,malla olimpica arequipa, malla ganadera arequipa,malla galvanizada arequipa, alamfer puno cuzco tacna moquegua ,malla de alambres alamfer arequipa, malla de alambres puno , malla olimpica puno , malla ganadera puno, alambre galvanizada peru , alambre de puas  arequipa , alambre de puas puno, concertinaz arequipa , consertinaz puno , alambre gavanizado arequipa ,alambre galvanizado puno ">
     <link rel="shortcut icon" href="images/favicon.png" />
     
	 <meta name="viewport" content="width=device-width, user-scalable=no,initial-scale=1.0 , maximum-scale=1.0,minimum-scale=1.0">
	 <link rel="stylesheet"  href="../CSS/style/bootstrap.min.css">
   
     
     <link rel="stylesheet"  href="../CSS/style/bod.css" rel="stylesheet">

</head>
<body>

   <header>
   
 
  

   </header>

      <div class="container">

          <div class="row">
              <aside id="col-izq" class="col-xs-12 col-sm-3 col-md-2 col-lg-2">
                 <div id="menu" class="">
                         <ul class="nav" ><br><br>
                          
                                    <li ><a href="alambres.html">ALAMBRES</a></li><br>
                                    <li><a href="malla.html">MALLAS</a> </li><br>
                                    <li><a href="concertinas.html">CONCERTINAS</a></li><br>
                                    <li><a href="accesorios.html">ACCESORIOS</a></li><br>
                      </ul>                                        
                        <a href="galeria.html"> <img src="images/galeria.jpg" ></a>                                        
                        <hr>
                        <a href="sucursal.html"> <img src="images/sucursalesPNG.png" ></a>
                        <hr>
                        <a href="contactos.html" > <img src="images/contactoPNG.png" ></a>    
                         <hr>
                 </div>

             </aside>


<section id="col-der" class="col-xs-12 col-sm-9 col-md-10 col-lg-10">
 <div class="row" style="margin-left: 0px;">

     <div class="col-xs-12 col-sm-8 col-md-8 col-lg-8 " style="padding-left: 0px;">

       <div id="contenedor">
    <div id="myCarousel" class="carousel slide">
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
        <li data-target="#myCarousel" data-slide-to="3"></li>
        <li data-target="#myCarousel" data-slide-to="4"></li>
      </ol>
      <!-- Carousel items -->
      <div class="carousel-inner">
        <div class="active item"><img  src="images/portal1.png" alt="alamfer para muchos" /></div>
        <div class="item"><img  src="images/mallaganadera0.png" alt="banner2" /></div>
        <div class="item"><img  src="images/portal7.png" alt="banner2" /></div>
        <div class="item"><img  src="images/portal6.png" alt="banner3" /></div>
        <div class="item"><img  src="images/portal5.png" alt="banner4" /></div>
        <div class="item"><img  src="images/portal4.png" alt="banner5" /></div>
      </div>
      <!-- Carousel nav -->
      <a class="carousel-control left" href="#myCarousel" data-slide="prev">&lsaquo;</a>
      <a class="carousel-control right" href="#myCarousel" data-slide="next">&rsaquo;</a>
    </div>
</div>
 
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script>
    $(document).ready(function(){
        $('.myCarousel').carousel({
            interval: 2000
        });
    });
</script>

 </div>
         	             	     <section id="fondo">
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"  style="padding-left: 0px;">
                                        
                                     
                                          
                                                <div>
                                                   <a href="alambres.html"><img  style="display: block;   " src="images/alambre0.jpg" class="img-responsive" ></a>
                                  	              
                                  	             </div>
                                            
                                 </div>  
                                 </section>                           	
	 </div>


                               <br>   
         	             	 <div class="row" style="margin-left: 0px;">
                                 <section id="fondo">
         	             	     <div  class="col-xs-12 col-sm-4 col-md-4 col-lg-4 " style="padding-left: 0px;">
                   
         	             	            <a href="mallaganadera.html"> <img  style="display: block;" src="images/mallaganaderaportal0.jpg" class="img-responsive" ></a>
                                                  
         	             	     	     
         	             	     	     
         	             	     </div>
                                  </section>
                                   <section id="fondo">
         	             	     <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4 " style="padding-left: 0px;">
         	             	    <a href="mallaolimpica.html"> <img style="display: block;" src="images/mallagal.jpg" class="img-responsive" ></a>
         	             	     	
         	             	     </div>
                                   </section>
                                      <section id="fondo">
                                 <div class="col-xs-12 col-sm-4 col-md-4 col-lg-4"  style="padding-left: 0px;">
                            <a href="mallacuadrada.html"> <img style="display: block;" src="images/mallacuadrada0.jpg" class="img-responsive" ></a>           
                                  	 
                                 </div> 
                                  </section>                            	
         	             	 </div>
         	             	        <hr>
         	             	           <div class="subtitulo" style="text-align: center; background-color: #277575 ;" >
         	             	               <h4 style="color:#fff; background: #2c2e83;">Familia de Productos</h4>
         	             	            </div> <br>
                           <section id="categoria">   

         	             	<div class="row familia">

                                      <section id="fond">
                                     <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="alambregalvanizado.html"  title="Alambres"  style="color: #29333e;text-decoration: none;">Alambre Galvanizado
                            	         <img style="display: block;" src="images/galvanizado.jpg" class="img-responsive" alt height="200">
                            	         </a>
                                     </div>
                                     </section>

                                        <section id="fond">
                                     <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3" style="text-align: center;">
                                          <a href="alambreplastificado.html"  style="color: #29333e;text-decoration: none;">Alambre Plastificado
                            	         <img style="display: block;" src="images/plastificado.jpg" class="img-responsive" >
                            	         </a>
                                     </div>
                                        </section>
                                        <section id="fond">
                                     <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3" style="text-align: center;">
                                           <a href="alambreindustrial.html"  style="color: #29333e;text-decoration: none;">Alambres Industrial
                            	         <img style="display: block;padding-top: 40px;" src="images/industrial.jpg" class="img-responsive" >
                            	         </a>
                                     </div>
                                      </section>
                                         <section id="fond">
                                      <div class="col-xs-6 col-sm-3 col-md-3 col-lg-3" style="text-align: center;">
                                          <a href="alambremotto.html"  style="color: #29333e;text-decoration: none;">Alambres con Puas
                            	         <img style="display: block;padding-top: 40px;" src="images/motto.jpg" class="img-responsive" >
                            	         </a>
                                     </div>
                                      </section>

                            </div>

                              <hr>
                            <div class="row familiados">
                                       
                                       <section id="fond">
                                     <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="mallaolimpica.html" title="Mallas" style="color: #29333e;text-decoration: none;">Malla Olimpica
                            	         <img style="display: block;" src="images/aa0.jpg" class="img-responsive" >
                            	         </a>
                                     </div> </section>

                                      <section id="fond">
                                     <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="mallaganadera.html" title="Mallas" style="color: #29333e;text-decoration: none;">Malla Ganadera
                            	         <img style="display: block;" src="images/aa1.jpg" class="img-responsive" >
                            	         </a>
                                     </div> </section>

                                     <section id="fond">
                                     <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="mallagallinera.html" title="Mallas" style="color: #29333e;text-decoration: none;">Mallas Gallinera
                            	         <img style="display: block;" src="images/aa2.jpg" class="img-responsive" >
                            	         </a>
                                     </div> </section>

                                     <section id="fond">
                                      <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="mallacuadrada.html" title="Mallas" style="color: #29333e;text-decoration: none;">Malla Cuadrada
                            	         <img style="display: block;" src="images/aa3.jpg" class="img-responsive" >
                            	         </a>
                                     </div> </section>
                                   

                            </div>
                              <hr>

                           </section> 
</section>
                <br><br><br>
                 <section class="barra abajo">
                 	
                 </section>
     	
          </div>
      
      </div>




  
   <script src="js/scrip/jquery.js"></script>
   <script src="js/scrip/bootstrap.min.js"></script>

</body>
</html>