function GetXmlHttpObject(handler)
{
   var objXMLHttp=null
   if (window.XMLHttpRequest)
   {
       objXMLHttp=new XMLHttpRequest()
   }
   else if (window.ActiveXObject)
   {
       objXMLHttp=new ActiveXObject("Microsoft.XMLHTTP")
   }
   return objXMLHttp
}

function stateChanged()
{
   if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
   {
           document.getElementById("txtResult").innerHTML= xmlHttp.responseText;
   }
   else {
           //alert(xmlHttp.status);
   }
}

function SingleStdState()
{
   if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
   {
           document.getElementById("txtResultSingle").innerHTML= xmlHttp.responseText;
   }
   else {
           //alert(xmlHttp.status);
   }
}

// Will populate data based on input
function singlehtmlData(url, qStr)
{
   if (url.length==0)
   {
       document.getElementById("txtResultSingle").innerHTML="";
       return;
   }
   xmlHttp=GetXmlHttpObject()
   if (xmlHttp==null)
   {
       alert ("Browser does not support HTTP Request");
       return;
   }

   url=url+"?"+qStr;
   url=url+"&sid="+Math.random();
   xmlHttp.onreadystatechange=SingleStdState;
   xmlHttp.open("GET",url,true) ;
   xmlHttp.send(null);
}


// Will populate data based on input
function htmlData(url, qStr)
{
   if (url.length==0)
   {
       document.getElementById("txtResult").innerHTML="";
       return;
   }
   xmlHttp=GetXmlHttpObject()
   if (xmlHttp==null)
   {
       alert ("Browser does not support HTTP Request");
       return;
   }

   url=url+"?"+qStr;
   url=url+"&sid="+Math.random();
   xmlHttp.onreadystatechange=stateChanged;
   xmlHttp.open("GET",url,true) ;
   xmlHttp.send(null);
}




function htmlDatatwo(url, qStr)
{
   if (url.length==0)
   {
       document.getElementById("txtResulttow").innerHTML="";
       return;
   }
   xmlHttp=GetXmlHttpObject()
   if (xmlHttp==null)
   {
       alert ("Browser does not support HTTP Request");
       return;
   }
   url=url+"?"+qStr;
   url=url+"&sid="+Math.random();
   xmlHttp.onreadystatechange=feetitlecome;
   xmlHttp.open("GET",url,true) ;
   xmlHttp.send(null);
}
function feetitlecome()
{
   if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
   {
           document.getElementById("txtResulttow").innerHTML= xmlHttp.responseText;
   }
   else {
           //alert(xmlHttp.status);
   }
}
function changeActype()
{
   if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
   {
           alert(xmlHttp.responseText);
   }
   else {
           //alert(xmlHttp.status);
   }
}

// Will populate data based on input
function actype(url, qStr)
{
   if (url.length==0)
   {
       document.getElementById("txtAc").innerHTML="";
       return;
   }
   xmlHttp=GetXmlHttpObject()
   if (xmlHttp==null)
   {
       alert ("Browser does not support HTTP Request");
       return;
   }

   url=url+"?"+qStr;
   url=url+"&sid="+Math.random();
   xmlHttp.onreadystatechange=changeActype;
   xmlHttp.open("GET",url,true) ;
   xmlHttp.send(null);
}

//clientsdata;

function clientslogin()
{
   if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
   {
           document.getElementById("clientResult").innerHTML= xmlHttp.responseText;
   }
   else {
           //alert(xmlHttp.status);
   }
}
function clientsdata(url, qStr)
{
   if (url.length==0)
   {
       document.getElementById("clientResult").innerHTML="";
       return;
   }
   xmlHttp=GetXmlHttpObject()
   if (xmlHttp==null)
   {
       alert ("Browser does not support HTTP Request");
       return;
   }

   url=url+"?"+qStr;
   url=url+"&sid="+Math.random();
   xmlHttp.onreadystatechange=clientslogin;
   xmlHttp.open("GET",url,true) ;
   xmlHttp.send(null);
}

//IP Address Add

function ipChanged()
{
   if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
   {
           document.getElementById("ipResult").innerHTML= xmlHttp.responseText;
   }
   else {
           //alert(xmlHttp.status);
   }
}

// Will populate data based on input
function ipData(url, qStr)
{
   if (url.length==0)
   {
       document.getElementById("ipResult").innerHTML="";
       return;
   }
   xmlHttp=GetXmlHttpObject()
   if (xmlHttp==null)
   {
       alert ("Browser does not support HTTP Request");
       return;
   }

   url=url+"?"+qStr;
   url=url+"&sid="+Math.random();
   xmlHttp.onreadystatechange=ipChanged;
   xmlHttp.open("GET",url,true) ;
   xmlHttp.send(null);
}
function RsChanged()
{
   if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
   {
           document.getElementById("RsData").innerHTML= xmlHttp.responseText;
   }
   else {
           //alert(xmlHttp.status);
   }
}

// Will populate data based on input
function RsData(url, qStr)
{
   if (url.length==0)
   {
       document.getElementById("RsData").innerHTML="";
       return;
   }
   xmlHttp=GetXmlHttpObject()
   if (xmlHttp==null)
   {
       alert ("Browser does not support HTTP Request");
       return;
   }

   url=url+"?"+qStr;
   url=url+"&sid="+Math.random();
   xmlHttp.onreadystatechange=RsChanged;
   xmlHttp.open("GET",url,true) ;
   xmlHttp.send(null);
}
