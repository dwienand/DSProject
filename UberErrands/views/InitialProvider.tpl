<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Requestor</title>
     <script src="/static/js/todo.js" type="text/javascript"></script>
  </head>
  <body>
  	<img src="static/img/UfE.png"><br>
  	<p> Hi, What do you want to provide : </p>

	<form id="requestForm" name="requestForm" method="post" action="submitAdd">
		Name: <input type="text" name="Username">
		<br>
		<select name="Service">
			<option value="Mow Lawn">Mow Lawn</option>
			<option value="Clean Dishes">Clean Dishes</option>
		</select>	
		<input type="hidden" name="Latitude" id="lat" >
		<input type="hidden" name="Longitude" id="lon" >
		<br>
		<input type="button" onclick="getAndSetLocation()" value="Submit">
  	</form>
  	<p id = "demo"> </p>
  </body>
</html>

