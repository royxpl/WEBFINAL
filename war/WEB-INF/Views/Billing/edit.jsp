<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="model.entity.*"%>
<%@page import="java.util.Date"%>
<%@ page import="com.google.appengine.api.users.*"%>
<%
	Billing billing = (Billing) request.getAttribute("billing");
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
<title>Editar Billing</title>
  <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">



<style>
	b,h2{
		color:black;
	}
</style>
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
         	     
         	         <h4 style="color:#fff; background: #2c2e83;">UaGREGA LO QUE HACE</h4>   	           
  	        	


	
	
				<div class="contenedor-form">
					<div id="contenido">
						<div class="titulo">
							<h1>Editar Factura</h1>
						</div>
						<br>
						<div class="formulario">
							<form action="/billing/edit" method="post">
								<label><b>Editar el nombre de la empresa: </b></label> <br>
								<input class="dato" type="text" name="customer"
									placeholder="Ingrese el nombre de la emrpresa"
									value="<%=billing.getCustomer()%>" required>
								<br> <label><b>Editar la dirección: </b></label> <br>
								<input class="dato" type="text" name="address"
									placeholder="Ingrese la direccion de la empresa"
									value="<%=billing.getAddress()%>" required> <br>
								<label><b>Editar el producto: </b></label> <br> <input
									type="text" class="dato" name="descriptionproduct"
									placeholder="Ingrese el nombre del producto"
									value="<%=billing.getDescriptionProduct()%>" required>
								<br> <label><b>Editar la unidad de
										producto: </b></label> <br> <input type="text" pattern="^[0-9]+(.[0-9]+)?"
									name="unitpriceproduct" class="number"
									placeholder="Ingrese la unidad de producto"
									value="<%=billing.getUnitPriceProduct()%>" required> <br>
								<br> <label><b>Editar la cantidad de productos:
								</b></label> <br> <input type="text" class="dato" name="mountProduct" pattern="^[0-9]+(.[0-9]+)?"
									placeholder="Ingrese la cantidad de productos"
									value="<%=billing.getMountProduct()%>" required> <br>
								<input type="hidden" name="id"
									value="<%=billing.getId()%>"> <input class="boton"
									type="submit" value="Editar Factura">
							</form>
						</div>
						<div class="link">
							<a id="add" href="/billing" class="link" title="Lista de Facturas">Lista
								de Facturas</a>
						</div>
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




