var req;

// Sends a new request 
function sendRequest() {
    
    if (window.XMLHttpRequest) {
        req = new XMLHttpRequest();
    } else {
        req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    var uname = document.getElementById("uniquename").innerHTML;
    console.log(uname);
    req.open("GET", "myRequestor?Username="+uname, false);
    req.send(); 
    document.getElementById("selectedOrNot").innerHTML=req.responseText;
    var latp = document.getElementById("latR");
    var lonp = document.getElementById("lonR");
    var reqLatLng = new google.maps.LatLng(latp,lonp);
    var marker2 = new google.maps.Marker({
       position: reqLatLng,
       draggable: true,
       map: map,
       labelAnchor: new google.maps.Point(22, 0),
       labelStyle: {opacity: 0.75},
       labelVisible: true
     });
}


function initialize() {
    console.log("initialize map")   
    var lat = document.getElementById("lat").innerHTML;
    var lon = document.getElementById("lon").innerHTML; 
    var myLatLng = new google.maps.LatLng(lat,lon);
    var mapProp = {
      center:new google.maps.LatLng(lat, lon),
      zoom:18,
      mapTypeId:google.maps.MapTypeId.ROADMAP
    };
    var map=new google.maps.Map(document.getElementById("googleMap"), mapProp);

      var marker = new google.maps.Marker({
       position: myLatLng,
       draggable: true,
       map: map,
       labelAnchor: new google.maps.Point(22, 0),
       labelStyle: {opacity: 0.75},
       labelVisible: true
     });

}



window.setInterval(sendRequest, 2000);
