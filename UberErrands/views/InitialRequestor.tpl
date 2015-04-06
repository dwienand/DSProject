<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Requestor</title>
<script>
    
    var x = document.getElementById("demo");
    
    function getAndSetLocation() {
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    var lat = document.getElementById("lat");
    var lon = document.getElementById("lon");
    lat.value = position.coords.latitude ; 
    lon.value =  position.coords.longitude; 
    document.requestForm.submit();    
}

</script>

  </head>
  <body>
  	<img src="static/img/UfE.png"><br>
  	<p> Hi, What do you want to request : </p>


	<form id="requestForm" name="requestForm" method="post" action="submitRequest">
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

