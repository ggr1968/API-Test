<?php
$json = file_get_contents('http://api.openweathermap.org/data/2.5/weather?q=Somaglia,it&units=metric&APPID=974cdb43258cbd756561f62265e7acc1');
$data = json_decode($json,true);
#var_dump($data);
echo $data['weather'][0]['description'];
echo $data['main']['temp'];
?>
