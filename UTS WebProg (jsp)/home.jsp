<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style type="text/css">
        .bgimage{
            background-image: url('Asset/home_1.jpg');
            background-size: 100%;
            height: auto;
        }
        
    </style>

</head>
<body>

   <%@ include file = "header.jsp" %>
    
    <div class="bgimage">
      <div class="mask text-center" style="background-color: rgba(255, 255, 255, 0.4); padding-top: 200px; padding-bottom: 150px;">
        <img src="Asset/home_2.png" style="width: 1000px;">
        <br>
        <a href="menu.jsp"><button type="button" class="btn btn-outline-dark btn-lg" style="font-weight: 700;">ORDER NOW</button></a>
      </div>
    </div>
    
    <%@ include file = "footer.jsp" %>

    <script src="js/bootstrap.bundle.js"></script>
</body>
</html>