var xhr;
function createXMLHttpRequest(){
	if(window.ActiveXObject)
		xhr = new ActiveXObject("Microsoft.XMLHTTP");
	else
		xhr = new XMLHttpRequest();	
}
//响应用户点击省市
function setProUnis(o){
	createXMLHttpRequest();
	if(xhr){		
		var reqUrl = "/Renren/ChangeUniversityInfo?proid="+o.id+"&cid="+o.name;
		   // window.alert(reqUrl);
			xhr.open("get", reqUrl, true);
			xhr.onreadystatechange = getProUnis;
			xhr.send();
	}	
}




function getProUnis(){
	if(xhr.readyState == 4){
		if(xhr.status == 200){
			var unis = xhr.responseXML.getElementsByTagName("unis");
			var content = "<table width='100%'><tr>";
			
			for (var i = 1; i <= unis.length; i++){
					content += "<td><li>" +
						"<a onclick='showMyUni(this)' href='javascript:void(0);' " +
						"id='"+ unis[i - 1].childNodes[0].childNodes[0].data +"' class='xh'>"
						+ unis[i - 1].childNodes[1].childNodes[0].data +
					    "</a></li></td>";
					if(i % 3 == 0){
						content += "</tr><tr>";
					}
			 }						
			content+="</tr></table>";
			//window.alert(content);
		    document.getElementById("uniTbl").innerHTML = content;
		}
	}
}
function showMyUni(o){
	//取出被点击的大学的名称.o.innerHTML
    //document.getElementById("university").value=o.innerHTML;
	$("#university").val(o.innerHTML);
	//把选择大学的框框关闭
	//document.getElementById("uniDiv").style.display="none";
	$("#uniDiv").css("display","none");
	//document.getElementById("uuniversity").value=o.id;
	$("#uuniversity").val(o.id);
}
function showRegUni(){
	 $("#uniDiv").css("display","block");
	 //$("#uniDiv").show();
}
function closeUniTbl(){
	 $("#uniDiv").css("display","none");
	 //$("#uniDiv").show();
}

