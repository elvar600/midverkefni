<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>{{co}}</title>
	<link rel="stylesheet" type="text/css" href="/static/style.css">
	<link rel="stylesheet" type="text/css" href="/static/styles2.css">
</head>
<body>
	<center>
	<h1>Bensínstöðvar</h1>
	
	<br>

	
	<table>
	<tr>
		<th>Fyrirtæki</th>
		<th>Staður</th>
	</tr>
	<%
		cnt = 0
		for i in data['results']:
			if i['company'] == co: #Finnum rétta stöð
			cnt += 1			   #Teljum stöðvar og birtum neðst á síðu
	%>
		<tr>
			<td><a href="/moreinfo/{{i['key']}}">{{i['company']}}</a></td>
			<td>{{i['name']}}</td>
		</tr>
	<%
			end
		end
	%>
	</table>
	<h3>Fjöldi stöðva: {{cnt}}</h3>
	<footer>
	<a href="/">Heim</a>
	</footer>
</center>
</body>
</html>