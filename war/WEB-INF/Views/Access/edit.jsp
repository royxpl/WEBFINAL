<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="model.entity.Access"%>
<%@page import="java.util.Date"%>
<%@ page import="java.util.List"%>
<%@page import="model.entity.Role"%>
<%@page import="model.entity.Resource"%>
<%
	List<Role> roles = (List<Role>)request.getAttribute("roles");
	List<Resource> resources = (List<Resource>)request.getAttribute("resources");
%>
<%
	
	List<Access> accessComp = (List<Access>) request.getAttribute("accessComp");
	Access access = (Access) request.getAttribute("access");
%>
<!DOCTYPE html>
<html lang="es">
<head>
	<link href="https://fonts.googleapis.com/css?family=Oswald" rel="stylesheet">
	<meta charset="utf-8">
	<title>Editar Access</title>
	
    <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/bod.css" rel="stylesheet">   
	 <link rel="stylesheet"  href="../csss/bootstrap.min.css">
     <link rel="stylesheet"  href="../csss/header.css">
	
	
	
	<script>
	function comprobar(){
		var idrol = document.formulario.idrole.value;
		var idurl = document.formulario.idresource.value;
		
		var id="<%=access.getId()%>";
		
		<%
			for(int i=0; i<accessComp.size(); i++) {
				Access access1 = (Access) accessComp.get(i);
		%>
		
		var idrol2="<%=access1.getIdRole()%>";
		var idurl2="<%=access1.getIdUrl()%>";
		var id2="<%=access1.getId()%>";
		
		if(idrol === idrol2 && idurl === idurl2 && id2!=id){
			alert("Este Access ya existe!!");
			return false;
			
		}
		<%}%>
		document.forms['formulario']['submit'].disabled=true;

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
			<form action="/access/edit" method="post" name="formulario" onsubmit="return comprobar()">
				<h1>Editar Access</h1>
				
				<p>Edite su rol</p>
				<select name="idrole">
				<% for (Role r: roles){ %>		
					<option value="<%=r.getId()%>"><%=r.getName() %></option>
				<%} %>
				</select>
				
				<p>Edite su resource</p>
				<select name="idresource">
				<% for (Resource re: resources){ %>		
					<option value="<%=re.getId()%>"><%=re.getUrl() %></option>
				<%} %>
				</select>
				
				<p>Edite su estado</p>
				<select name="status">	
					<option value="true">true</option>
					<option value="false">false</option>
				</select>
				<input type="hidden" name="id" value="<%=access.getId()%>">
				
				<input type="submit" id="submit" name="submit" value="Editar Información">
			</form>
		</div>
		
	</div>


		<div class="link">
			
			<li><a href="/access" >LISTA DE PERMISOS</a></li>
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