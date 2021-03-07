<?php 
header("Refresh:21600; url=index.php");
$urlGetCrawler = file_get_contents("https://acoescoronavirus.uniaodospalmares.al.gov.br/");
$expressionRegular = '/<span class="counter".*?>\s?([0-9]+)\s?<\/span>/';

$expressionRegularTime = '/<p style="color:#123A5E;"><i class="icofont icofont-time"><\/i> Atualizado em:.*?([0-9,]+\/.*).*?<\/p>/';

	preg_match_all($expressionRegularTime, $urlGetCrawler, $arrayCrawlerTime);

$time = $arrayCrawlerTime[0];


$time = $time[0];
$explodeTime = explode('em:', $time);
$timeUpdate = $explodeTime[1];

$timeUpdate = explode('<', $timeUpdate);
$timeUpdate = $timeUpdate[0];

	preg_match_all($expressionRegular, $urlGetCrawler, $arrayCrawler);
	$result = $arrayCrawler[1];

	$confirmados 	= $result[0];
	$suspeitos 		= $result[1];
	$recuperados 	= $result[2];
	$obitos 		= $result[3];

		$sql = mysqli_connect('159.965.933.955','crawler_covid','crawler_covid.?*34','crawler_covid');
		$sqlSelect = "SELECT * FROM casos_uniao WHERE data = '$timeUpdate'";
		$result = mysqli_query($sql, $sqlSelect);
		$verificador = mysqli_num_rows($result);

		if($verificador == 0){
		
		$update = "INSERT INTO `casos_uniao` (`id`, `data`, `confirmados`, `suspeitos`, `recuperados`, `obitos`) VALUES (NULL, '$timeUpdate', '$confirmados', '$suspeitos', '$recuperados', '$obitos')";
		$cadastrando = mysqli_query($sql, $update);
	}else{
		echo 'já cadastrado!';
	}
?>



