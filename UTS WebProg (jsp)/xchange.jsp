<%
    Integer money = Integer.parseInt(request.getParameter("money"));
    Integer tot = Integer.parseInt(request.getParameter("tot"));
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">

</head>
<body>

    <%@ include file = "header.jsp" %>

    <div class="container" style="padding-top: 100px; padding-right: 400px;padding-left: 400px;">
        <div class="container" style="background-image:url(Asset/bill.jpg)">
        <br>
            <h2 class="text-center">Thank You!</h2>
            <br>
            <pre>Total Charge : Rp. <%=tot%></pre>
            <pre>Payment      : Rp. <%=money%></pre>
            <br>
            <pre>Exchange     : Rp. <%=money-tot%></pre>
            <br>

        </div>
    </div>
    <br>

    <%@ include file = "footer.jsp" %>

    <script src="js/bootstrap.bundle.js"></script>
</body>
</html>