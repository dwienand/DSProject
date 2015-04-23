<!DOCTYPE html>
<html lang="en">
  <head>
  	<script src="http://maps.googleapis.com/maps/api/js"></script>
  	<script src="/static/js/todo.js" type="text/javascript"></script>
    <script src="/static/js/markerwithlabel.js" type="text/javascript"></script>
    <title>Provider</title>
    <script>
	google.maps.event.addDomListener(window, 'load', initialize);
	</script>
  </head>
  <body>
    <img src="static/img/UfE.png"><br>
    <div>Service: {{.Service}} </div><br>
    Latitude:
    <span id="lat">{{.Latitude}}</span><br>
    Longitude:
    <span id="lon">{{.Longitude}}</span><br>
    <div id="googleMap" style="width:500px;height:380px;"></div>
<div> You will be serviced by: {{.Provider}}. He's at {{.LatitudeP}}, {{.LongitudeP}} </div>

  </body>
</html>


