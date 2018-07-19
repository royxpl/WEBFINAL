<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="model.entity.*"%>
<%@ page import="com.google.appengine.api.users.*"%>
<%
	Billing billing = (Billing) request.getAttribute("billing");
	UserService use = UserServiceFactory.getUserService();
	User user = use.getCurrentUser();
%>
<!DOCTYPE html>
<html lang="en">
<head>
<link href="https://fonts.googleapis.com/css?family=Oswald"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Editar Billing</title>
     <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">
     
<style>
b, h2 {
	color: black;
}
</style>
</head>

<body>
	<jsp:include page="../Menu/menu2.jsp" flush="true" />


	
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
  	        	




	<div class="contenedor-form">
			<div class="titulo">
				<h1>Factura</h1>
			</div>
			<div class="vista">
			<table>
				<thead>
					<tr>
						<th>Nombre de la Empresa</th>
						<th>Dirección de la Empresa</th>
						<th>Fecha</th>
						<th>Producto</th>
						<th>Precio Unitario</th>
						<th>Cantidad</th>
						<th>SUB Total</th>
						<th>IGV:(18%)</th>
						<th>Total</th>
					</tr>
				</thead>
					<tr class="contenido">
						<td><%=billing.getCustomer()%></td>
						<td><%=billing.getAddress()%></td>
						<td><%=billing.getDateIn()%></td>
						<td><%=billing.getDescriptionProduct()%></td>
						<td><%=billing.getUnitPriceProduct()%></td>
						<td><%=billing.getMountProduct()%></td>
						<td><%=billing.getTotal()%></td>
						<td><%=(billing.getTotal() * 0.18)%></td>
						<td><%=(billing.getTotal() * 1.18)%></td>
					</tr>
			</table>
			</div>
			<br>
			<form action="/billing/delete" method="get">
				<input type="hidden" value="<%=billing.getId()%>" name="id">
				<input class="boton" type="submit" value="Borrar">
			</form>
			<form action="/billing/edit" method="get">
				<input type="hidden" value="<%=billing.getId()%>" name="id">
				<input class="boton" type="submit" value="Editar">
			</form>
			<div class=link>
				<a href="/billing" title="Añadir Factura">Lista de Facturas</a>
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

	
	
	
	
	
	
	
	
	
	
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="../../assets/js/vendor/jquery.min.js"><\/script>')
	</script>
	<script src="/JS/bootstrap.min.js"></script>
	<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
	<script src="/JS/ie10-viewport-bug-workaround.js"></script>
</body>
</html>



