<?php 
	include 'conexao.php';
	function exibir(){
		if(isset($_GET['buscar'])){

			/*
			1- Região e Regionalismo
			2- Meio Ambiente
			3- Territórios Rurais
			4- Cidades Médias e Pequenas
			5- Relação Rural/Urbano
			*/

			if($_GET['eixo'] == 0){
				$CondicaoArea = "`area` = '1' OR  `area` = '2' OR  `area` = '3' OR  `area` = '4' OR  `area` = '5'";
				
				if(!empty($_GET['autores'])){
					$NomeAutor = $_GET['autores'];
					$CondicaoAutor = "`nome` LIKE '%$NomeAutor%'";
					$sql = mysql_query("SELECT * FROM `anais` WHERE $CondicaoAutor ORDER BY `nome`;" );
				}
				else{
					$sql = mysql_query("SELECT * FROM `anais` WHERE $CondicaoArea ORDER BY `nome`;");
				}
			}
			else{
				$area = $_GET['eixo'];
				$CondicaoArea = "`area` = '$area'";
				if(!empty($_GET['autores'])){
					$NomeAutor = $_GET['autores'];
					$CondicaoAutor = "`nome` LIKE '%$NomeAutor%'";
					$sql = mysql_query("SELECT * FROM `anais` WHERE $CondicaoAutor AND $CondicaoArea ORDER BY `nome`;" );
				}
				else{
					$sql = mysql_query("SELECT * FROM `anais` WHERE $CondicaoArea ORDER BY `nome`;");
				}
			}

		}

		else{
			$sql = mysql_query("SELECT * FROM `anais` ORDER BY `nome`");

		}

		while($row = mysql_fetch_array($sql)) {
    		$Nome 	= $row['nome'];
    		$Titulo	= $row['titulo_trabalho'];
    		$Area 	= $row['area'];
    		$Diretorio = $row['diretorio_arquivo'];
    		echo "	<tr>
		    			<td>
							".utf8_encode($Nome)."
		    			</td>
		    			<td>
							".utf8_encode($Titulo)."
		    			</td>
		    			<td style='text-align:center;'>
							<a href='arquivo/".utf8_encode($Diretorio).".pdf' target='_BLANK'><i class='fa fa-2x fa-file-pdf-o'></i></a>
		    			</td>
			   		</tr>";
		}
	
	}

 ?>
 <!doctype html>
<html>

	<head>
		<meta charset="UTF-8">
	<title>Emissão de trabalhos</title>
		<link rel="stylesheet" href="css/estilo.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="css/bootstrap.css" />
		<script type="text/javascript" src="js/bootstrap.js"></script>
		<script type="text/javascript" src="//code.jquery.com/jquery-1.11.3.min.js"></script>

	</head>
	<body>
		<div class="hero-unit" style="margin-top:-20px;">
		  <h1>IV Colóquio Cidade e Região</h1>
		  <p>Emissão de trabalho</p>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12" style="background:#eee;">
					<form action="" method="get" class="formulario">

							 <legend>Insira os dados do trabalho</legend>
							<table>
								<tr>
									<td >
										<label>Nome do(s) autor(es)</label>
						    			<input type="text" name="autores" placeholder="Ex. Jõao">
						    		</td>

						    		<td >
						    			<label>Eixo Temático</label>
											<select name="eixo" >
												 <option value="0">Selecione</option>
												 <option value="1">Região e Regionalismo</option>
												 <option value="2">Meio Ambiente</option>
												 <option value="3">Territórios Rurais</option>
												 <option value="4">Cidades Médias e Pequenas</option>
												 <option value="5">Relação Rural/Urbano</option>
											</select>
						    		</td>
						    		<td >
						    			<button type="submit" class="btn" style="margin-top:15px;" name="buscar">Buscar</button>
						    		</td>
								</tr>
							</table>

					</form>
				</div>
			</div>
			<div class="row-fluid">
				<div class=" span12 trabalhos-lista">
					<table class="table table-responsive trabalhos-table table-striped">
						<tr >
							<th style="text-align:center;" width="400px">Autor(es)</td>
							<th style="text-align:center;" width="600px">Título do trabalho</td>
							<th style="text-align:center;" width="200px">Acesso</td>
						</tr>
					<?php exibir(); ?>
					</table>
				</div>	
			</div>
		</div>
	</body>
</html>