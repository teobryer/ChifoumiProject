<%--
  Created by IntelliJ IDEA.
  User: Téo
  Date: 23/03/2021
  Time: 16:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Choix du signe</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://bootswatch.com/4/simplex/bootstrap.min.css">
    <link rel="stylesheet" href="/administration/decoration/style.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

</head>
<body>

<form method="post" action="chifoumi">

    <div class="form-check">
        <input class="form-check-input" value="0" type="radio" name="signe" id="flexRadioDefault1">
        <label class="form-check-label" for="flexRadioDefault1">
            Pierre
        </label>
    </div>
    <div class="form-check">
        <input class="form-check-input" value="1"  type="radio" name="signe" id="flexRadioDefault2" checked>
        <label class="form-check-label" for="flexRadioDefault2">
            Feuille
        </label>
    </div>

    <div class="form-check">
        <input class="form-check-input" value="2"  type="radio" name="signe" id="flexRadioDefault3" checked>
        <label class="form-check-label" for="flexRadioDefault3">
            Ciseaux
        </label>
    </div>

    <button type="submit" class="btn btn-primary">Submit</button>
</form>

</body>
</html>
