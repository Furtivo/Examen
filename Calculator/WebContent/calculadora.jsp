<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Mi Primer Calculadora Web :)</title>
</head>
<body>

<%String Uno = request.getParameter("Uno");
String Dos = request.getParameter("Dos"); 
String oper =request.getParameter("oper");%>
<div id="cuerpo">
<form action="" mehotd="GET">
<div id="tuno">
<table align="center">

<tr>

<td>
<label>X</label>
</td>
<td>
<input type="text" value="<%=(Uno!=null)?Uno:0 %>" name="Uno">
</td>
</tr>
<tr> 
<td>
<label>Y</label>
</td>
<td>
<input type="text" value="<%=(Dos!=null)?Dos:0 %>" name="Dos">
</td>

</tr>

<table align="center">

<tr>
<td>
<input type="submit" value="+" name="operat" />
<input type="submit" value="-" name="operat" />
<input type="submit" value="*" name="operat" />
<input type="submit" value="/" name="operat" />
</td>
</tr>
</table>
</form>
</div>
</table>


<%
try
{
if(Uno!=null || Dos!=null)
{

double v1=Double.parseDouble(Uno);
double v2=Double.parseDouble(Dos);
}
if(oper.equals("+"))
{
double res=v1+v2;
out.print("<h1>"+v1+"+"+v2+"="+ res + "</h1>");

}
if(oper.equals("-"))
{
double res=v1-v2;
out.print("<h1>"+v1+"-"+v2+"="+ res + "</h1>");
}
if(oper.equals("/"))
{
if(v2!=0)
{
double res1=v1/v2;
out.print("<h1>"+v1+"/"+v2+"="+ res1 + "</h1" );
}
else
{
out.print("<p><div id=\"error\"><h1>no se puede dividir por cero</h1></div></p>");

}
}
if(oper.equals("*"))
{
double res=v1*v2;
out.print("<h1>"+v1+"*"+v2+"="+ res + "</h1>");
}
}
}
catch(java.lang.NumberFormatException error)
{
out.print("<p><div id=\"error\"><h1>Solo ingresar numeros</h1></div></p>"); 
}

%>
</body>
</html>