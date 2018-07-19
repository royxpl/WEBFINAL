<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@ page import="java.util.List"%>
<%@page import="model.entity.Role"%>
<%
	List<Role> rolesComp = (List<Role>)request.getAttribute("rolesComp");
	Role roles = (Role) request.getAttribute("roles");
%>
<!DOCTYPE html>
<html lang="es">
<head>
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	<title>Editar Rol</title>
		
    <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">

<script>
function comprobar(){
	var rol = document.formulario.nameRol.value;
	var roledit = "<%=roles.getName()%>";
	<%
		for(int i=0; i<rolesComp.size(); i++) {
			Role rol1 = (Role) rolesComp.get(i);
	%>
	
	var rol2="<%=rol1.getName()%>";
	
	if(rol == rol2 && rol != roledit){
		alert("Este Rol ya existe!!");
		return false;
		
	}
	<%}%>
	else{
		document.forms['formulario']['submit'].disabled=true;
	}

	return true;
}
</script>
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
  	        	

	
	<div class="contenedor-form">
		<div class="formulario">
			<form action="/role/edit" method="post" name="formulario" onsubmit="return comprobar()">
				<h1>Editar Rol</h1>
				
				<p>Edite el nombre del rol</p>
				<input type="text" name="nameRol"   placeholder="Ingrese el nombre del rol" value="<%=roles.getName()%>" required>
				 
				<p>Edite su estado</p>
				<select name="status">	
					<option value="true">true</option>
					<option value="false">false</option>
				</select>
				<input type="hidden" name="id" value="<%=roles.getId()%>">
				<input type="submit" name="submit" value="Editar Información">
			</form>
			<script>
				(function(){
					
					var formulario = document.getElementsByName('formulario')[0],
						elementos = formulario.elements,
						boton = document.getElementById('submit');
					
					var validarNombre = function(e){
						if(formulario.nombre.value == ""){
							alert("Llene el campo NOMBRE DEL ROL");
							e.preventDefault();
						}
						else if(isNaN(formulario.nombre.value)===false){
							alert("El campo NOMBRE DEL ROL solo debe contener letras");
							e.preventDefault();
						}
					}
					var validar = function(e){
						validarNombre(e);
					}
					
					formulario.addEventListener("submit",validar);
					
					
				}())	
			</script>
		</div>
	
	</div>





		<div class="link">
				
			<li><a href="/role">VER ROLES</a></li>
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