<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<jsp:useBean id="controller" class="br.com.viajante.controller.UserController"/>
   
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html lang="pt-br">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="">
  <meta name="author" content="">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
  <meta name="description" content="Viajante Online">
  <meta name="author" content="Diego Feitoza - Weydson Marinho">
  <title>Viajante Online</title>
  <!-- This is our Google Arvo font and font-awesome -->
  <link href="https://fonts.googleapis.com/css?family=Arvo" rel="stylesheet">
  <link rel="stylesheet" href="resources/fonts/font-awesome/css/font-awesome.min.css">
  <!-- Bootstrap core CSS -->
  <link href="resources/lib/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
  <link href="resources/css/jquery.mosaic.css" rel="stylesheet" type="text/css" />
  <!-- Custom styles for this template -->
  <link href="resources/css/style.css" rel="stylesheet" type="text/css" />
  <link href="resources/css/modalForm.css" rel="stylesheet" type="text/css" />
  <link href="resources/css/jquery.dataTables.css" rel="stylesheet" type="text/css" />
  <!-- Just for debugging purposes. Don't actually copy these 2 lines! -->
  <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->
  
  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->	
</head>

<body data-spy="scroll" data-target=".navbar-collapse" data-offset="50">
  <nav class="navbar navbar-inverse navbar-default line-bottom">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	        <span class="sr-only">Toggle navigation</span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
			<span class="icon-bar"></span>
		</button>
        
        <a class="navbar-brand" href="../Viajante">
	        <img src="resources/img/top-logo.png" alt="Viajante" title="Viajante"/>
	    </a>
      </div>
      
      <div id="navbar" class="collapse navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
          <li><a href="#login" data-toggle="modal" data-target="#loginModal"><span class="glyphicon glyphicon-user"></span>&nbsp Login</a></li>
          <li><a href="#" data-toggle="modal" data-target="#signUpModal"><span class="glyphicon glyphicon-plus"></span>&nbsp Cadastre-se</a></li>
        </ul>
      </div>
      
      <!--/.nav-collapse -->
    </div>
  </nav>
  
  
  <!-- Main jumbotron for a primary marketing message or call to action -->
  <div id="jumbotron" class="jumbotron">
         
     <!-- How It Works -->
      <div class="modal fade" id="howItWorksModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content"> ...
          
          </div>
        </div>
      </div>
     
     
     <!-- Login -->
      <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
          <div class="modal-content">
          	<img src="resources/img/construct.png" alt="Em Construção" />         	
          </div>
        </div>
      </div>
      <!-- Sign Up -->
       
      <div class="modal fade" id="signUpModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      
      <form id="modelform" name="formAdd" action="createUser" method="post">
          
          <div id="mensagem" class="alert alert-danger" role="alert" hidden="true">
            <span class="glyphicon glyphicon-exclamation-sign" aria-hidden="true"></span>
              Todos os campos são obrigatórios!
          </div>
          
          <!-- progressbar -->
          <div>
            <ul id="progressbar">
              <li class="active">Informações básicas</li>
              <li>Ambiente</li>
            </ul>
          </div>
          
          <!-- fieldsets -->
          <fieldset>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
            <h2 class="fs-title">Novo anfitrião</h2>
            <h3 class="fs-subtitle">Informações básicas</h3>
            <div id="nameGroup" class="form-group">
              <label class="control-label" for="name">Nome:</label>
              <input type="text" name="name" id="name" class="form-control" placeholder="Digite o seu nome" minlength="3" required>
     		</div>
     		  <div id="foneGroup" class="form-group">
              <label class="control-label" for="fone">Telefone:</label>
              <input type="number" name="fone" id="fone" class="form-control" placeholder="Digite o seu telefone" minlength="8" required oninvalid="setCustomValidity('Preencha somente com números')">
     		</div>
            <div id="emailGroup" class="form-group">
              <label class="control-label" for="email">Email:</label>
              <input type="email" name="email" id="email" class="form-control" placeholder="Digite o seu email" required>
            </div>
            <div id="addressGroup" class="form-group">
              <label class="control-label" for="end">Endereço:</label>
              <input type="text" name="address" id="address" class="form-control" placeholder="Digite o seu endereço" required>
            </div>
            <div class="row">
              <div id="cityGroup" class="form-group col-md-6 col-lg-6 col-sm-6">
                <label class="control-label" for="end">Cidade:</label>
                <input type="text" name="city" id="city" class="form-control" placeholder="Cidade" required>
              </div>
              <div id="countryGroup" class="form-group col-md-6 col-lg-6 col-sm-6">
                <label class="control-label" for="end">País:</label>
                <input type="text" name="country" id="country" class="form-control" placeholder="País" required>
              </div>
            </div>
            <input type="button" name="next" class="next action-button" value="Próximo" />
          </fieldset>
          
          <fieldset>
            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">X</button>
            <h2 class="fs-title">Informações do local</h2>
            <h3 class="fs-subtitle">Os mochileiros irão querer saber o que o local tem a oferecer</h3>
            <div class="row">
              <div class="col-md-8">
                <div id="typeGroup" class="form-group">
                  <label class="control-label" for="tipo">Tipo do alojamento:</label>
                  <select name="type" id="type" class="form-control" required>
                    <option value="">-</option>
                    <option value="pousada">Pousada</option>
                    <option value="hotel">Hotel</option>
                    <option value="restaurante">Restaurante</option>
                    <option value="casa">Casa</option>
                  </select>
                </div>
              </div>
              <div class="col-md-4">
                <div id="qtdVagasGroup" class="form-group">
                  <label class="control-label" for="qtdVagas">Vagas:</label>
                  <input type="number" name="qtdVagas" min="1" max="999" id="qtdVagas" class="form-control" maxlength="3" oninvalid="setCustomValidity('Preencha somente com números')" required>
                  </div>
              </div>
            </div>
            <div id="restGroup" class="form-group">
              <label class="control-label" for="restricoes">Restrições:</label>
              <textarea name="restricoes" id="restricoes" class="form-control" rows="4" cols="10" placeholder="Digite as restrições do seu alojamento" required></textarea>
            </div>
            <div id="descGroup" class="form-group">
              <label class="control-label" for="restricoes">Descrição:</label>
              <textarea name="descricao" id="descricao" class="form-control" rows="4" cols="10" placeholder="Descreva como é o local" required></textarea>
            </div>
            
            
            <input type="button" name="previous" class="previous action-button" value="Anterior" />
            <input id="buttonCreate" type="submit" name="submit" class="action-button" value="Cadastrar" onclick="create();" />
                  
          </fieldset>
                
         </form>
        
      
      </div>
      
      <!-- Begin MailChimp Signup Form -->
      <div id="search">
      	<span class="glyphicon glyphicon-map-marker fa-4x"></span><h2>Ache a cidade que você deseja viajar.</h2>
      	
      </div>
      <!--End mc_embed_signup-->
    
  </div>
 
  
    
<section id="get-involved">
	<div class="container homepage">
		<h2>
			<span class="glyphicon glyphicon-user" aria-hidden="true"></span>
			&nbsp Anfitriões cadastrados
		</h2>
		      
		<div class="row">
			<table id="tableSearch" class="table table-striped table-bordered table-register">
				<thead>
					<tr>
						<th>Nome</th>
						<th>E-mail</th>
						<th>Telefone</th>
						<th>Tipo da Vaga</th>
						<th>Qtd de Vagas</th>
						<th>Endereço</th>
						<th>Restrições</th>
						<th>Descrição</th>
						<th></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="anfitriao" items="${controller.list()}" varStatus="id">
						<tr>
							<td>${anfitriao.name}</td>
							<td>${anfitriao.email}</td>
							<td>${anfitriao.fone}</td>
							<td>${anfitriao.type}</td>
							<td>${anfitriao.vagas}</td>
							<td>
								<span>${anfitriao.address}</span> <br />
								<span id="cidade"> ${anfitriao.city} - ${anfitriao.country} </span>
							</td>
							<td>${anfitriao.restrict}</td>
							<td>${anfitriao.description}</td>
							<td class="col-md-1">
								<a href="" onclick="clickTrash()"><span class="glyphicon glyphicon-trash marginBottom10"> </span>excluir</a>
								<br />
								<a href="" onclick="clickEdit()"><span class="glyphicon glyphicon-pencil marginBottom10"></span>editar</a>
							</td>
						</tr>
					
					</c:forEach>
				</tbody>
				
			</table>
		</div>
	</div>
	<!-- /container -->
</section>
  
  
<!-- Footer -->
  <footer> </footer>
  
  
  
  
  
  <!-- Bootstrap core JavaScript
    ================================================== -->
   <script src="resources/js/ie-emulation-modes-warning.js"></script>
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="resources/lib/jquery.min.js" type="text/javascript"></script>
  <script src="resources/lib/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
  <!-- jQuery easing plugin -->
  <script src="resources/js/jquery.easing.min.js" type="text/javascript"></script>
  <!-- Smooth Scroll -->
  <script src="resources/js/smoothscroll.js" type="text/javascript"></script>
  <script src="resources/js/form.js" type="text/javascript"></script>
  <script src="resources/js/formValidations.js" type="text/javascript"></script>
  <script src="resources/js/jquery.dataTables.js" type="text/javascript"></script>
  <script src="resources/js/ie-emulation-modes-warning.js"></script>
</body>

</html>