<!DOCTYPE html>
<html lang="en">
<head>
    <style>
    form{

    text-align: center;
    }
    p.text{

    text-align: center;
    }
    </style>
    <title>Requestor</title>
     <script src="/static/js/todo.js" type="text/javascript"></script>
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
  </head>
  <body>
  	<div class="container">
  <div class="jumbotron">                     
    <h1>UBER FOR ERRANDS</h1>      
    <p>Provide and request services using Uber for errands</p>      
  </div>
</div>
  	<p class="text"> Hi, What do you want to request : </p>

	<form id="requestForm" name="requestForm" method="post" action="submitRequest">
	Name: <input type="text" name="Requester">
    <br></br>
		<select name="Service">
			<option value="Mow Lawn">Mow Lawn</option>
			<option value="Clean Dishes">Clean Dishes</option>
		</select>
		<input type="hidden" name="Latitude" id="lat" >
		<input type="hidden" name="Longitude" id="lon" >
		<br></br>
		<input type="button" onclick="getAndSetLocation()" value="Submit">
  	</form>
  	<p id = "demo"> </p>
  </body>
</html>

