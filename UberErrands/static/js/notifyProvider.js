var req;

// Sends a new request 
function sendRequest() {
    
    if (window.XMLHttpRequest) {
        req = new XMLHttpRequest();
    } else {
        req = new ActiveXObject("Microsoft.XMLHTTP");
    }
    var username = getElementById("username").text();
    console.log(username);
    req.open("GET", "myRequestor", false);
    req.send(); 
    document.getElementById("selectedOrNot").innerHTML=req.responseText;
    
}

window.setInterval(sendRequest, 2000);