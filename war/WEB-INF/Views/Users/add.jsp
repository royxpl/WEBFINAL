<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@page import="model.entity.Role"%>
<%@page import="model.entity.Users"%>
<%
	List<Role> roles = (List<Role>)request.getAttribute("roles");
%>
<!DOCTYPE html>
<html lang="es">
<head>
<link href="https://fonts.googleapis.com/css?family=Oswald"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">
     
<title>Añadir usuario</title>

<%
	List<Users> users = (List<Users>) request.getAttribute("users");
	if(users.size()>0){
%>


<%} %>
</head>
<body>
	
	   <header>

    <section class="colorlogo">


                <div id="banner" class=" " style="height: 30px;" >
                  <div class="container" >
                      <div class="row">
                           <div class="col-xs-12 col-sm-4 col-md-3 col-lg-4" style="height: 30px; padding-right: 0px; padding-left: 10px;border-left:">
                            <p>
                                 <span style="color:#fff;">
                                    <strong>
                                        <span style="font-size: 9pt;font-family: tahoma,arial,helvetica,sans-serif">
                                           llamanos ahora:  (054) 450161 
                                        </span>
                                    </strong>
                                 </span>
                            </p>
                             </div>
                           <div class="col-xs-12 col-sm-2 col-md-3 col-lg-4" style="height: 30px;background:  #2c2e83; padding-right: 0px; padding-left: 0px;">
                            <p>
                                 <span style="color:#fff; " >
                                    <strong>
                                        <span  style="font-size: 9pt;font-family: tahoma,arial,helvetica,sans-serif ">
                                          <a href="contactos.php">Envianos un Mensaje</a>  
                                        </span>
                                    </strong>
                                 </span>
                            </p> 

                             </div>
                           <div class="col-xs-12 col-sm-6 col-md-6 col-lg-4" style="background:  #2c2e83; padding-right: 0px; padding-left: 10px;">
                                 <strong>
                                    <span  style="font-size: 9pt;font-family: tahoma,arial,helvetica,sans-serif">
                                       <ul  class="nav navbar-nav aux1"  style="height: 30px;">
                                         <li ><a href="mapadesitio.php" >Mapa de Sitio</a></li>
                                         <li ><a href="contactos.php">Contactos</a></li>
          
									     <li class="active"><a href="/user/login">Login</a></li>
								      							        
								         <li><a href="/user/logout">LogOut</a></li>																					
                                       </ul>
                                    </span>
                                 </strong>                           
                           </div>  
                         </div>      
                     </div>
              </div>


      
     </section>
          
         <section  class="colorlogo">
                  <div class="container">
                    <div class="row">
                         <div class="col-xs-12 col-sm-6 col-md-7 col-lg-8">
                                <a href=""> <img src="../images/logo.png" ></a> 
                         </div>
                         <div class="col-xs-12 col-sm-4 col-md-5 col-lg-4">
                            <p style="margin-bottom: 0px;">
                                 <span style="color:#333;">
                                    <strong>
                                        <span style="font-size: 8pt;font-family: tahoma,arial,helvetica,sans-serif">
                                            Venta Telefonica:+921259677
                                        </span>
                                    </strong>
                                 </span>
                            </p>
                            <p style="margin-bottom: 0px;">
                                 <span style="color:#333;" >
                                    <strong>
                                        <span style="font-size: 8pt;font-family: tahoma,arial,helvetica,sans-serif">
                                            Local de Venta Directa:Av Jesus interior #4 mariano melgar
                                        </span>
                                    </strong>
                                 </span>
                            </p>
                              <p style="margin-bottom: 0px;">
                                 <span style="color:#333;">
                                    <strong>
                                        <span style="font-size: 8pt;font-family: tahoma,arial,helvetica,sans-serif">
                                           Escribenos a alamfer@hotmail.com
                                        </span>
                                    </strong>
                                 </span>
                            </p>
                         </div>
                          
                    </div>
                  </div>

        </section>



      <div class="container">




           <nav role="navigation" class="navbar navbar-default " style="border-color: #fff " >
                 <div class="navbar-header" style="background: #a7a4c8;">
                      <button type="button" data-target=".navbar-ex1-collapse" data-toggle="collapse" class="navbar-toggle" style="background: #2c2e83">
                          <span class="sr-only" >Toggle navigation</span>
                          <span class="icon-bar" style="background: #fff"></span>
                          <span class="icon-bar" style="background: #fff"></span>
                          <span class="icon-bar" style="background: #fff"></span>
                      </button>
                 </div>

                 <div id="menu" class="collapse navbar-collapse navbar-ex1-collapse">
                 <div class="row">

            <ul class="nav navbar-nav"  class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                          <li class="active"><a href="/index.html">INICIO</a></li>
                          <li><a href="empresa.php">EMPRESA</a> </li>
                          <li><a href="sucursal.php">SUCURSAL</a></li>
                                <li class="dropdown">
                                       <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                           PRODUCTOS<b class="caret"></b>
                                       </a>
                                       <ul class="dropdown-menu">
                                         <li><a href="alambres.php">Alambres</a></li>
                                         <li><a href="accesorios.php">Accesorios</a></li>
                                         <li><a href="mallas.php">Mallas</a></li>
                                         <li><a href="concertinas.php">Concertinas</a></li>
                                       </ul>
                                     </li>
                          <li><a href="obras.php">OBRAS</a></li>
                          <li><a href="contactos.php">CONTACTOS</a></li>                        
                      </ul>
                    </div>
                 </div>
          </nav>
    </div>
</header>
	
	
 <div class="container">
 
 
       <div class="row">
              <aside id="col-izq" class="col-xs-12 col-sm-3 col-md-2 col-lg-2">
                 <div id="menu" class="">
                         <ul class="nav" ><br><br><br><br><br><br>
                          
                                <li><a href="/billing">FACTURAS</a></li>
                                <li><a href="/user">USUARIOS</a></li>
								<li><a href="/role">ROL</a></li>
								<li><a href="/resource">RECURSOS</a></li>
								<li><a href="/access">PERMISOS</a></li>
								
								
                                   
                      </ul>                                        

                 </div>

             </aside>
             
            <section id="col-der" class="col-xs-12 col-sm-9 col-md-10 col-lg-10">


                               <br>   
         	     
         	             	        <hr>
         	   <div class="subtitulo" style="text-align: center;  " >

	
         	    </div> 
         	       <br>
         	             	               	             	            
            <section id="categoria">   

         	  <div class="row familia">

                   
	<div class="contenedor-form">
		<div class="formulario">
			<form action="/user/add"  name = "formulario" method="post" onsubmit="return comprobar()">
				<h1>Añadir Usuario</h1>
				
				<p>Ingrese su nombre </p>
				<input type="text" id="name" name="name" placeholder="Ingrese su nombre" required>
				
				<p>Ingrese su ciudad</p>
				<input type="text" id="city" name="city"  placeholder="Ingrese su ciudad" required>
				
				<p>Ingrese su fecha de Nacimiento</p>
				<input type="date" id="birth" name="birth" 
				placeholder="Ingrese su fecha de Nacimiento" required>
				
				<p>Ingrese su número de celular </p>
				<input type="text" id="cellphone" name="cellphone" placeholder="Ingrese su número de celular" required>
				
				<p>Ingrese su correo </p>
				<input type="email" id="email" name="email" placeholder="Ingrese su correo electrónico" required>
				
				<p>Seleccione su género </p>
				<div class="radio">
					<input type="radio" name="gender" id="hombre" value="true" checked> <label for="hombre">Masculino</label>
					</BR>
					<input type="radio" name="gender" id="mujer" value="false"> <label for="mujer">Femenino</label>
				</div>
				
				<p>Seleccione su rol </p>
				<select name="idroles">
				<% for (Role r: roles){ %>
					<option value="<%=r.getId()%>"><%=r.getName() %></option>
				<%} %>
				</select>
				<input type="submit" id="submit" name="submit" value="Crear Usuario">
				
			</form>
			<script>
				(function(){
					
					var formulario = document.getElementsByName('formulario')[0],
						elementos = formulario.elements,
						boton = document.getElementById('submit');
					
					var validarNombre = function(e){
						if(formulario.name.value == ""){
							alert("Llene el campo nombre");
							e.preventDefault();
						}
						else if(isNaN(formulario.name.value)===false){
							alert("El campo NOMBRE solo debe contener letras");
							e.preventDefault();
						}
					}
					var validarCiudad = function(e){
						if(formulario.city.value == ""){
							alert("Llene el campo ciudad");
							e.preventDefault();
						}
						else if(isNaN(formulario.city.value)===false){
							alert("El campo CIUDAD solo debe contener letras");
							e.preventDefault();
						}
					}
					var validarCelular = function(e){
						if(formulario.cellphone.value == ""){
							alert("Llene el campo celular");
							e.preventDefault();
						}
						else if(isNaN(formulario.cellphone.value)){
							alert("Compelete el campo CELULAR solo con números");
							e.preventDefault();
						}
						else if(formulario.cellphone.value.length < 9 || formulario.cellphone.value.length > 9){
							alert("El campo celular debe contener un número de 9 digitos");
							e.preventDefault();
						}
					}
					var validarCorreo = function(e){
						if(formulario.email.value == ""){
							alert("Llene el campo correo");
							e.preventDefault();
						}
					}
					var validar = function(e){
						validarNombre(e);
						validarCiudad(e);
						validarCelular(e);
						validarCorreo(e);
					}
					
					formulario.addEventListener("submit",validar);
					
				
				}())	
			</script>
		</div>
	
			<li><a href="/user">VER USUARIOS</a></li>
								
	</div>

                     
              </div>


              </section> 
</section> 
             
        
             
                <section class="barra abajo">
                 	
                 	
                 	
                 </section>
 
      </div>
 
    </div>

</body>
</html>

