<!DOCTYPE html>
<html lang="en">
  <head>
    <script src="http://maps.googleapis.com/maps/api/js"></script>
	<script type="text/javascript">
	var latp = {{.LatitudeR}};
	var lonp = {{.LongitudeP}};
	</script>
    <script src="/static/js/todo.js" type="text/javascript"></script>
    <script src="/static/js/notifyProvider.js" type="text/javascript"></script>
    <script src="/static/js/markerwithlabel.js" type="text/javascript"></script>
    <title>Provider</title>
    <script>
  google.maps.event.addDomListener(window, 'load', initialize);
  </script>
  </head>
  <body>
    <img src="static/img/UfE.png"><br>
    <div>Hi, <span id="uniquename">{{.Username}}</span> </div>
    <div>You have registered for providing this service : {{.Service}} </div>

     <div id = "selectedOrNot"> </div>
    <div>You are here : </div>
    <div>Latitude:
     <span id="lat">{{.Latitude}}</span><br>
     Longitude:
    <span id="lon">{{.Longitude}}</span><br>
    </div>
    <div id="googleMap" style="width:500px;height:380px;"></div>
    <div id = "selectedOrNot"> </div>

  </body>
</html>

