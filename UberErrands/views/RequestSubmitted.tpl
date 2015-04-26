<!DOCTYPE html>
<html lang="en">
  <head>
  	 <style>
         div.text{

        text-align: center;
        }
        div#googleMap { margin: 0 auto 0 auto; }
     </style>
    <script src="http://maps.googleapis.com/maps/api/js"></script>
    <script type="text/javascript">
	var latp = {{.LatitudeP}};
	var lonp = {{.LongitudeP}};
    </script>
    <script src="/static/js/todo.js" type="text/javascript"></script>
    <script src="/static/js/markerwithlabel.js" type="text/javascript"></script>
    <link href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/css/bootstrap-combined.min.css" rel="stylesheet">
      <link rel="stylesheet" type="text/css" media="screen" href="http://silviomoreto.github.io/bootstrap-select/stylesheets/bootstrap-select.css">
       <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
      <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
      <script src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.3.1/js/bootstrap.min.js"></script>
      <script src="http://silviomoreto.github.io/bootstrap-select/javascripts/bootstrap-select.js"></script>
       <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
      <script type="text/javascript">
          $(document).ready(function(e) {
              $('.selectpicker').selectpicker();
          });
      </script>
    <title>Requestor</title>
    <script>
  google.maps.event.addDomListener(window, 'load', initialize);
  </script>
  </head>
   <body>
     <div class="container">
      <div class="jumbotron">                     
        <h1>UBER FOR ERRANDS</h1>      
        <p>Provide and request services using Uber for errands</p>      
      </div>
    </div>
    <div class="text">
    <h1>I am {{.Requester}}</h1><br>
    <h2>Service: {{.Service}} </h2><br>
    Latitude:
    <span id="lat">{{.Latitude}}</span><br>
    Longitude:
    <span id="lon">{{.Longitude}}</span><br>
    <div id="googleMap" style="width:1100px;height:380px;"></div>
    <div> You will be serviced by: {{.Provider}}. He's at {{.LatitudeP}}, {{.LongitudeP}} </div>
  </div>
  </body>
</html>


