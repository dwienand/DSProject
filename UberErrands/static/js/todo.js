
function getAndSetLocation() {
    console.log("getAndSetLocation");
    var x = document.getElementById("demo");
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(showPosition);
    } else { 
        x.innerHTML = "Geolocation is not supported by this browser.";
    }
}

function showPosition(position) {
    console.log("showPosition");
    var lat = document.getElementById("lat");
    var lon = document.getElementById("lon");
    lat.value = position.coords.latitude ; 
    lon.value =  position.coords.longitude; 
    document.requestForm.submit();    
}

function initialize() {
     var others = [
        ['shit1', 40.4349259, -79.9856424, 3, "To 1234 Street, Boston: 10:00am, 12/12/2015"],
        ['shit2', 40.4379258, -79.9156423, 2, "To 5678 Street, Phidaphia: 11:00am, 12/12/2015"],
        ['shit3', 40.4319255, -79.9256421, 1, "To 0123 Street, Pittsburgh: 1:00pm, 04/01/2015"]
    ];
    console.log("initialize map")   
    var lat = document.getElementById("lat").innerHTML;
    var lon = document.getElementById("lon").innerHTML; 
    var myLatLng = new google.maps.LatLng(lat, lon);
    var mapProp = {
      center:new google.maps.LatLng(lat, lon),
      zoom:13,
      mapTypeId:google.maps.MapTypeId.ROADMAP
    };
    var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);

      var marker = new MarkerWithLabel({
       position: myLatLng,
       draggable: true,
       map: map,
       labelAnchor: new google.maps.Point(22, 0),
       labelStyle: {opacity: 0.75},
       labelVisible: true
     });
  }


