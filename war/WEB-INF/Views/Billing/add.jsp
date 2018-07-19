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
<title>Añadir Billing</title>

    <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">
<style>
	b{
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
					<div id="c">
						<div class="titulo">
							<h1>Añadir Factura</h1>
						</div>
						<div class="formulario">
							<form action="/billing/add" method="post">
								<label><b>Nombre de la Empresa: </b></label> <br> <input
									type="text" name="customer" class="dato"
									placeholder="Ingrese el nombre de la empresa" required>
								<br> <label><b>Dirección:</b></label> <br> <input
									type="text" name="address" class="dato"
									placeholder="Ingrese la direccion de la empresa" required>
								<br> <label><b>Producto:</b></label> <br> <input
									type="text" name="descriptionproduct" class="dato"
									placeholder="Ingrese la nombre del producto" required>
								<br> <label><b>Precio Unitario:</b></label> <br>
								<input type="text" name="unitpriceproduct" class="dato"
									placeholder="Ingrese precio unitario del producto" pattern="^[0-9]+(.[0-9]+)?$" required>
								<br> <label><b>Cantidad:</b></label> <br> <input
									type="text" name="mount" class="dato"
									placeholder="Ingrese la direccion de la empresa" pattern="^[0-9]+(.[0-9]+)?$" required>
								<br> <input class="boton" type="submit"
									value="Añadir">
							</form>
						</div>
						
					</div>
				</div>

		<div class="link">
			
			<li><a href="/billing" >LISTA DE FACTURAS</a></li>
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

