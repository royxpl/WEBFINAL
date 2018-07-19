<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="controller.resource.ResourceControllerIndex"%>
<%@ page import="model.entity.Resource"%>
<%@ page import="java.text.SimpleDateFormat" %>
<%
List<Resource> resources = (List<Resource>)request.getAttribute("resources");
SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-dd");
%>
<!DOCTYPE html>
<html lang="es">
<head>

	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	<title>Lista de Resources</title>
	
	
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
         	     
         	         <h4 style="color:#fff; background: #2c2e83;">LISTA DE RECURSOS</h4>   	           
  	        	

	
	
	<div class="contenedor-form">
	
		<% if (resources.isEmpty()){ %>
		<p>No se encuentran resources. Añada nuevos</p>
		<%} else { %>
		<table>
			<thead>
				<tr>
					
					<th>url</th>
					<th>Estado</th>
					<th>Creado</th>
				</tr>
			</thead>
			<% for (Resource r: resources){%>
			<tr>
				<td><a id="cambiaColor" href="/resource/view?id=<%=r.getId()%>"><%=r.getUrl()%></a></td>
				
				<td><%=r.isStatus() %></td>
				<td><%=sdf.format(r.getCreate()) %></td>
			</tr>
			<%} %>
		</table>
		<%} %>
	
	</div>





		<div class="link">
			
			<li><a id="add"  href="/resource/add" title="Añadir Resource" >AGREGAR RECURSO</a></li>
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