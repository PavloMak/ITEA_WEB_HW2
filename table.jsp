<% 
String sRows = request.getParameter("rows");
String sColumns = request.getParameter("columns");

int rows = Integer.valueOf(sRows);
int columns = Integer.valueOf(sColumns);
%>

<table style="width:100%; border:2px solid black;">
<%
	for(int i = 0; i < rows; i++){
%>
  <tr>
<%
	for(int j = 0; j < columns; j++){
		if((i+j)%2==0){
%>
		<td style="background-color:#ff0000;"><%out.write("["+ i +";"+ j +"]");%></td>
<%
		}else{
%>
		<td style="background-color:#c8cf0a;"><%out.write("["+ i +";"+ j +"]");%></td>
<%
		}
	}
%>
  </tr>
<%
	}
%>
</table>