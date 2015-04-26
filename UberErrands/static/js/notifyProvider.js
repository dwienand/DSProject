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
}

window.setInterval(sendRequest, 2000);
