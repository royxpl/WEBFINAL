<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.entity.Resource"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
	Resource resources = (Resource) request.getAttribute("resources");
	SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
%>
<!DOCTYPE html>
<html lang="es">
<head>
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	<title><%=resources.getUrl() %></title>
	
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
		<h2 id="id" name="<%=resources.getId() %>">Datos del Resource </h2>
		<table class="vertical-table">
			<tr>
				<th>ID del resource</th>
				<td><%=resources.getId()%></td>
			</tr>
			<tr>
				<th>Nombre del Resource</th>
				<td><%=resources.getUrl()%></td>
			</tr>
			<tr>
				<th>Fecha de Creación</th>
				<td><%=sdf.format(resources.getCreate())%></td>
			</tr>
			<tr>
				<th>Estado</th>
				<td><%=resources.isStatus()%></td>
			</tr>
		</table>

		</div>



		<div class="link">
			
			<li><a href="/resource" >VER RECURSOS</a></li>
			
				
					<th>
			
						<div class="borrar">
							<form action="/role/delete"  method="post">
							<input type="hidden" value="<%=resources.getId()%>" name="id"> 
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