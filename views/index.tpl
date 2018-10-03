<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Bensínstöðvar</title>
	<link rel="stylesheet" type="text/css" href="static/style.css">
	<link rel="stylesheet" type="text/css" href="static/styles.css">
</head>
<body>
	%include("haus.tpl")

	<div class="imgrap">
		<a href="https://www.atlantsolia.is/"><img src="/static/Ao.jpg"></a>
		<a href="https://www.costco.com/"><img src="/static/Costco.jpg"></a>
		<a href="https://www.daelan.is/"><img src="/static/dæ.png"></a>
		<a href="https://www.n1.is/"><img src="/static/N1.png"></a>
		<a href="https://www.ob.is/"><img src="/static/OB.jpg"></a>
		<a href="https://www.olis.is/"><img src="/static/olis.jpg"></a>
		<a href="https://www.orkan.is/"><img src="/static/orkan.jpg"></a>
	</div>

<div class="wrapper">
	
	<%
		le = len(data['results'])
	
		for i in range(le-1):
	
		if (data['results'][i]['company'] != data['results'][i+1]['company']):
	%>

	<div class="box">
		<a href="/company/{{data['results'][i]['company']}}">
		{{data['results'][i]['company']}}</a>
	</div>
</div>
	<%
			end
		end
	%>

	%include("fotur.tpl")
</body>
</html>

