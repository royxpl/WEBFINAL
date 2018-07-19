<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<%@ page import="com.google.appengine.api.users.*"%>
<%
	List<Billing> billings = (List<Billing>) request.getAttribute("billings");
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
<title>FACTURAS</title>

    <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">




</head>

<body>

<jsp:include page="../Menu/menu2.jsp" flush="true"/>
				
		
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
         	     
         	         <h4 style="color:#fff; background: #2c2e83;">Facturas Disponibles</h4>   	           
  	        	

	
				<div class="inner cover">
				<br><br><br><br>
				
				
				
				
					<div class="contenedor-form">
					
					
						<div class="vista">
						 	<%
								if (billings.isEmpty()) {
							%>
							<h4>No se encuentran facturas. Añada facturas</h4>
							<%
								} else {
							%>
							<table>
							<thead>
								<tr>
									<th><b>Empresa</b></th>
									<th><b>Producto</b></th>
									<th><b>Valor de Venta</b></th>
									<th><b>Fecha de Facturación</b></th>
									<th><b>Código de la Factura</b></th>
									<th><b>Operaciones</b></th>
								</tr>
								</thead>
								<%
									for (Billing bill : billings) {
								%>
								<tr class="contenido">
									<td><%=bill.getCustomer()%></td>
									<td><%=bill.getDescriptionProduct()%></td>
									<td><%=bill.getTotal()%></td>
									<td><%=bill.getDateIn()%></td>
									<td><%=bill.getId()%></td>
									<td>
										<a href="/billing/view?id=<%=bill.getId()%>">Ver</a>
										<a href="/billing/edit?id=<%=bill.getId()%>">Editar</a>
										<a href="/billing/delete?id=<%=bill.getId()%>">Borrar</a>
										
										
									</td>
								</tr>
								<%
									}
								%>
							</table>
							<%
								}
							%>
						</div>
						<div >
							<a href="/billing/add" class="link" title="Añadir Factura">Añadir Factura</a>
						</div>
					</div>
				</div>

				
				
				
				

		<div class="link">
	
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

