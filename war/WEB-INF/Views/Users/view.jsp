<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@page import="model.entity.Users"%>
<%@page import="model.entity.Role" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Users user = (Users) request.getAttribute("user");
	List<Role> roles = (List<Role>)request.getAttribute("roles");
	String almacenaRol="";
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
%>
<!DOCTYPE html>
<html lang="es">
<head>
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	<title><%=user.getName() %></title>

	
	  <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">
	
	
	
</head>
<body>



	<%if(true){%>
		<jsp:include page="../Menu/menu2.jsp" flush="true"/>
	<% }else { %>
	<p>Perro</p>
	<%} %>
	
	
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
         	     
         	         <h4 style="color:#fff; background: #2c2e83;">UaGREGA LO QUE HACE</h4>   	           
  	        	

	
	
	<div class="contenido">
		<h2 id="id" name="<%=user.getId() %>">Perfil de Usuario: </h2>
		<table class="vertical-table">
			<tr>
				<th>ID de usuario</th>
				<td><%=user.getId()%></td>
			</tr>
			<tr>
				<th>Nombre</th>
				<td><%=user.getName()%></td>
			</tr>
			<tr>
				<th>Ciudad</th>
				<td><%=user.getCity()%></td>
			</tr>
			<tr>
				<th>Fecha de Nacimiento</th>
				<td><%=sdf.format(user.getBirth()) %></td>
			</tr>
			<tr>
				<th>Celular</th>
				<td><%=user.getCellphone()%></td>
			</tr>
			<tr>
				<th>Correo Electrónico</th>
				<td><%=user.getEmail()%></td>
			</tr>
			<tr>
				<th>Género</th>
				<td>
					<%if(user.isGender()){ %>
					Masculino
					<%} else{ %>
					Femenino
					<%} %>
				</td>
			</tr>
			<tr>
				<th>Rol</th>
				<%if(roles.isEmpty()){ %>
					<td>Asigne un rol</td>
				<%}else{%>
					<% for (Role r: roles){%>
						<%if(r.getId().equals(user.getIdRol())){
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
			</tr>
			<tr>
				<th>Creado</th>
				<td><%=sdf.format(user.getMade())%></td>
			</tr>
			<tr>
				<th>Estado</th>
				<td><%=user.isStatus()%></td>
			</tr>
		</table>
		<div class ="links">
			<table>
				<tr>
				
				     <th><li><a href="/user">VER USUARIOS</a></li></th>
				     <th><li><a href="/user/edit?id=<%=user.getId() %>">EDITAR USUARIOS</a></li></th>

					<th>
						<div class="borrar">
							<form action="/user/delete" method="post">
							<input type="hidden" value="<%=user.getId()%>" name="id"> 
							<button type="submit" name="Eliminar" >Eliminar</button>
						
						</form>
						</div>
					</th>
					
					
					
				</tr>
				</table>
			</div>
		</div>
	
	

	
         	    </div> 
         	       <br>
         	             	               	             	            
  
</section>
                <br><br><br>
                 <section class="barra abajo">
                 	
                 </section>
     	
          </div>
      
</div>
	

	
	
	
	</body>
</html>