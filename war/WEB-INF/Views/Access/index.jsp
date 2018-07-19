<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="controller.access.AccessControllerIndex"%>
<%@ page import="model.entity.Access"%>
<%@ page import="model.entity.Resource"%>
<%@ page import="model.entity.Role"%>
<%@ page import="java.text.SimpleDateFormat" %>

<%

	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");

	List<Access> access = (List<Access>)request.getAttribute("access");

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
	<title>Lista de Access</title>
	
	

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
         	     
         	         <h4 style="color:#fff; background: #2c2e83;">LISTA DE PERMISOS</h4>   	           
  	        	


	
	
	<div class="contenedor-form">
	
	
	
	
	
		<% if (access.isEmpty()){ %>
		<p>No se encuentran access. Añada nuevos</p>
		<%} else { %>
		<table>
			<thead>
				<tr>
					
					<th>Rol</th>
					<th>Resource</th>
					<th>Status</th>
					<th>Creado</th>
				</tr>
			</thead>
			<% for (Access a: access){%>
			<tr>
				
				
				<!--  ROLES -->
				<%if(roles.isEmpty()){ %>
					<td>Asigne un Rol</td>
				<%}else{%>
					<% for (Role r: roles){%>
						<%if(r.getId().equals(a.getIdRole())){
							almacenaRol=r.getName();%>
						<%} %>
					<%} %>	
					<% if(almacenaRol.equals("")) {%>
						<td>Asigne un Rol2 </td>
					<%} else { %>
						<td><a id="cambiaColor" href="/access/view?id=<%=a.getId()%>"><%= almacenaRol %></a></td>
						   <%= almacenaRol="" %>
					<%} %>		
				<%} %>
				
				<!--  RESOURCES -->
				<%if(resources.isEmpty()){ %>
					<td>Asigne un Resource</td>
				<%}else{%>
					<% for (Resource re: resources){%>
						<%if(re.getId().equals(a.getIdUrl())){
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
				<td><%=a.isStatus() %></td>
				<td><%=sdf.format(a.getCreate()) %></td>
			</tr>
			<%} %>
		</table>
		<%} %>

	</div>


		<div class="link">
			
			<li><a href="/access/add" alt="Añadir access"  title="Añadir Access" >AGREGAR PERMISOS</a></li>
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