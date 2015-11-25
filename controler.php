<?php 
	include 'model.php';
	function exibir(){

		$link = conect();

		if(isset($_POST['buscar'])){

			/*
			1- Região e Regionalismo
			2- Meio Ambiente
			3- Territórios Rurais
			4- Cidades Médias e Pequenas
			5- Relação Rural/Urbano
			*/

			if($_POST['eixo'] == 0){
				$CondicaoArea = "`area` = '1' OR  `area` = '2' OR  `area` = '3' OR  `area` = '4' OR  `area` = '5'";
				
				if(!empty($_POST['autores'])){
					$NomeAutor = mysqli_real_escape_string($link,$_POST['autores']);
					$CondicaoAutor = "`nome` LIKE '%$NomeAutor%'";
					$sql = mysqli_query($link,"SELECT * FROM `anais` WHERE $CondicaoAutor ORDER BY `nome`;" );
				}
				else{
					$sql = mysqli_query($link,"SELECT * FROM `anais` WHERE $CondicaoArea ORDER BY `nome`;");
				}
			}
			else{
				$area = $_POST['eixo'];
				$CondicaoArea = "`area` = '$area'";
				if(!empty($_POST['autores'])){
					$NomeAutor = mysqli_real_escape_string($link,$_POST['autores']);
					$CondicaoAutor = "`nome` LIKE '%$NomeAutor%'";
					$sql = mysqli_query($link,"SELECT * FROM `anais` WHERE $CondicaoAutor AND $CondicaoArea ORDER BY `nome`;" );
				}
				else{
					$sql = mysqli_query($link,"SELECT * FROM `anais` WHERE $CondicaoArea ORDER BY `nome`;");
				}
			}

		}

		else{
			$sql = mysqli_query($link,"SELECT * FROM `anais` ORDER BY `nome`");

		}

		while($row = mysqli_fetch_array($sql)) {
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
