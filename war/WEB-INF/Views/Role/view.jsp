<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.entity.Role"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Role roles = (Role) request.getAttribute("roles");
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
%>
<!DOCTYPE html>
<html lang="es">
<head>
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	<title><%=roles.getName() %></title>
	
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
         	     
         	         <h4 style="color:#fff; background: #2c2e83;">UaGREGA LO QUE HACE</h4>   	           
  	        	


	
	
	<div class="contenido">
		<h2 id="id" name="<%=roles.getId() %>">Datos del Rol </h2>
		<table class="vertical-table">
			<tr>
				<th>ID del rol</th>
				<td><%=roles.getId()%></td>
			</tr>
			<tr>
				<th>Nombre del Rol</th>
				<td><%=roles.getName()%></td>
			</tr>
			<tr>
				<th>Fecha de Creación</th>
				<td><%=sdf.format(roles.getMade())%></td>
			</tr>
			<tr>
				<th>Estado</th>
				<td><%=roles.isStatus()%></td>
			</tr>
		</table>
		<div class ="links">
			<table>
				<tr>
					
					<li><a href="/role" >VER ROLES</a></li>
					 <li><a href="/role/edit?id=<%=roles.getId() %>" >EDITAR ROL</a></li>
				
					<th>
			
						<div class="borrar">
							<form action="/role/delete"  method="post">
							<input type="hidden" value="<%=roles.getId()%>" name="id"> 
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