<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="controller.role.RoleControllerIndex"%>
<%@ page import="model.entity.Role"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	List<Role> roles = (List<Role>)request.getAttribute("roles");
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
%>
<!DOCTYPE html>
<html lang="es">
<head>

	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	<title>Lista de Roles.</title>
	
	
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
       <div class="subtitulo"   >
         	     
         	         <h4 style="color:#fff; background: #2c2e83;">Lista de Roles.</h4>   	           
  	        	
	
	
	
	<div class="contenedor-form">

		<% if (roles.isEmpty()){ %>
		<p>No se encuentran roles. Añada nuevos</p>
		<%} else { %>
		<table>
			<thead>
				<tr>
					
					<th>Nombre</th>
					<th>Estado</th>
					<th>Creado</th>
				</tr>
			</thead>
			<% for (Role r: roles){%>
			<tr>
				<td><a id="cambiaColor" href="/role/view?id=<%=r.getId()%>"><%=r.getName()%></a></td>
				
				<td><%=r.isStatus() %></td>
				<td><%=sdf.format(r.getMade()) %></td>
			</tr>
			<%} %>
		</table>
		<%} %>
		<div class="link">
		
			<li><a href="/role/add" >AÑADIR ROL</a></li>
			
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