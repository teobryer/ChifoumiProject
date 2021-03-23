<%--
  Created by IntelliJ IDEA.
  User: Téo
  Date: 23/03/2021
  Time: 16:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Resultat chifoumi</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://bootswatch.com/4/simplex/bootstrap.min.css">
    <link rel="stylesheet" href="/administration/decoration/style.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</head>
<body>
<%
    String[] tabSignes= (String[])  request.getAttribute("listeSigne");
    String choixPlayer =tabSignes[(int)request.getAttribute("choixPlayer")];
    String choixIA =tabSignes[(int)request.getAttribute("choixIA")];

%>
<div class="container">
    <div class="row">
        <div class="col">
            <h1>YOU</h1>
            <h2> <%=choixPlayer %></h2>
            <p>
                <%
                    int result = (int) request.getAttribute("playerWin");
                    if (result == -1){
                out.print("Vainqueur");
                }
                %>
            </p>
        </div>
        <div class="col">
            <h1>IA</h1>
            <h2> <%=choixIA%></h2>
            <p>
            <%

                if (result == 1){
                    out.print("Vainqueur");
                }
            %>
            </p>
        </div>
    </div>

</div>
</body>
</html>
