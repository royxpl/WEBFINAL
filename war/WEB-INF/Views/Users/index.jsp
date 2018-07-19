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
<html lang="es">
<head>

	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	
    <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">
	
	<title>Lista de Usuarios</title>
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
         	         <h4 style="color:#fff; background: #2c2e83;">Administrador</h4>
         	            <h4 style="color:#fff; background: #2c2e83;">Usuarios Registrados</h4>   	           
  	        	

		<% if (users.isEmpty()){ %>
		<p>No se encuentran usuarios. Añada Usuarios</p>
		<%} else { %>
		<table>
			<thead>
				<tr>
					
					<th>Nombre</th>
					<th>Rol</th>
					<th>Ciudad</th>
					<th>Fecha de Nacimiento</th>
					<th>Celular</th>
					<th>Correo electrónico</th>
					<th>Género</th>
					<th>Estado</th>
					<th>Creado</th>
				</tr>
			</thead>
			<% for (Users us: users){%>
			<tr>
				<td><a id="cambiaColor" href="/user/view?id=<%=us.getId()%>"><%=us.getName()%></a></td>
			
				<%if(roles.isEmpty()){ %>
					<td>Asigne un Rol</td>
				<%}else{%>
					<% for (Role r: roles){%>
						<%if(r.getId().equals(us.getIdRol())){
							almacenaRol=r.getName();%>
						<%} %>
					<%} %>	
					<% if(almacenaRol.equals("")) {%>
						<td>Asigne un Rol2 </td>
					<%} else { %>
						<td><%= almacenaRol %></td>
						<%= almacenaRol="" %>
					<%} %>		
				<%} %>
				<td><%=us.getCity()%></td>
				<td><%=sdf.format(us.getBirth())%></td>
				<td><%=us.getCellphone()%></td>
				<td><%=us.getEmail()%></td>
				<td>
					<%if(us.isGender()){ %>
						Masculino
					<%} else{ %>
						Femenino
					<%} %>
				</td>
				<td><%=us.isStatus() %></td>
				<td><%=sdf.format(us.getMade()) %></td>
			</tr>
			<%} %>
		</table>
		<%} %>
		<div class="link">
			
			<li><a href="/user/add" >AGREGAR USUARIO</a></li>
		</div>
	
         	    </div> 
         	       <br>
         	             	               	             	            
            <section id="categoria">   

         	  <div class="row familia">


              </div>

                              <hr>
                            <div class="row familiados">
                                       
                                       <section id="fond">
                                     <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="mallaolimpica.php" title="Mallas" style="color: #29333e;text-decoration: none;">Malla Olimpica
                            	         <img style="display: block;" src="images/aa0.jpg" class="img-responsive" >
                            	         </a>
                                     </div> </section>

                                      <section id="fond">
                                     <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="mallaganadera.php" title="Mallas" style="color: #29333e;text-decoration: none;">Malla Ganadera
                            	         <img style="display: block;" src="images/aa1.jpg" class="img-responsive" >
                            	         </a>
                                     </div> </section>

                                     <section id="fond">
                                     <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="mallagallinera.php" title="Mallas" style="color: #29333e;text-decoration: none;">Mallas Gallinera
                            	         <img style="display: block;" src="images/aa2.jpg" class="img-responsive" >
                            	         </a>
                                     </div> </section>

                                     <section id="fond">
                                      <div class="col-xs-6 col-sm-6 col-md-3 col-lg-3" style="text-align: center;">
                                         <a href="mallacuadrada.php" title="Mallas" style="color: #29333e;text-decoration: none;">Malla Cuadrada
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


</body>
</html>