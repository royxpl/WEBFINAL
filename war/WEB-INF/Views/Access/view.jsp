<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%@page import="model.entity.Access"%>
<%@page import="model.entity.Role" %>
<%@page import="model.entity.Resource" %>
<%
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");

	Access access = (Access) request.getAttribute("access");
	
	List<Role> roles = (List<Role>)request.getAttribute("roles");
	List<Resource> resources = (List<Resource>)request.getAttribute("resources");
	
	String almacenaRol="";
	String almacenaResource="";
%>
<!DOCTYPE html>
<html lang="es">
<head>
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	<title><%=access.getId() %></title>
	
	
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
       <div class="subtitulo"  >
         	     
         	         <h4 style="color:#fff; background: #2c2e83;">DATOS DE PERMISO</h4>   	           
  	        	



	
	<div class="contenido">
		<h2 id="id" name="<%=access.getId() %>"> </h2>
		<table class="vertical-table">
			<tr>
				<th>ID del access</th>
				<td><%=access.getId()%></td>
			</tr>
			<tr>
				<th>Nombre del Rol</th>
				<%if(roles.isEmpty()){ %>
					<td>Asigne un rol</td>
				<%}else{%>
					<% for (Role r: roles){%>
						<%if(r.getId().equals(access.getIdRole())){
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
				<th>Nombre del Resource</th>
				<%if(resources.isEmpty()){ %>
					<td>Asigne un resource</td>
				<%}else{%>
					<% for (Resource re: resources){%>
						<%if(re.getId().equals(access.getIdUrl())){
							almacenaResource=re.getUrl();%>
						<%} %>
					<%} %>	
					<% if(almacenaResource.equals("")) {%>
						<td>Asigne un Resource2 </td>
					<%} else { %>
						<td><%= almacenaResource %></td>
						<%= almacenaResource="" %>
					<%} %>
				<%} %>
			</tr>
			<tr>
				<th>Fecha de Creación</th>
				<td><%=sdf.format(access.getCreate())%></td>
			</tr>
			<tr>
				<th>Estado</th>
				<td><%=access.isStatus()%></td>
			</tr>
		</table>

		</div>
	


		<div class="link">
			
			<li><a href="/access" >LISTA DE PERMISOS</a></li>
			<li><a href="/access/edit?id=<%=access.getId() %>" >EDITAR PERMISO</a></li>
				<th>
			
						<div class="borrar">
							<form action="/role/delete"  method="post">
							<input type="hidden" value="<%=access.getId()%>" name="id"> 
							<button type="submit" name="Eliminar" >Eliminar</button>
						
						    </form>
						</div>
						
					</th>
			
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