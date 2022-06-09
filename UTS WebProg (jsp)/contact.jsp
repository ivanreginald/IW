<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style type="text/css">
        .bgimage2{
            background-image: url('Asset/contact_1.jpg');
            background-size: 100%;
            height: auto;
        }
        
    </style>

</head>
<body>

   <%@ include file = "header.jsp" %>

    <div class="bgimage2">
        <div class="mask text-center" style="background-color: rgba(255, 255, 255, 0.9); padding-top: 150px; padding-bottom: 150px;">
            <h1 class="h1-responsive text-center" style="font-weight: 700; font-size: 60px;">CONTACT US</h1>
            <p class="w-responsive mx-auto mb-5 text-center" style="font-weight: 500; font-size: 25px;">
                Have some questions? Please do not hesitate to contact us directly.
            </p>
            <img src="Asset/lineart.png" alt="" style="width: 2000px; height: 150px; margin-top: -80px; margin-bottom: -30px;">
            <div class="text-center">
                <img src="Asset/email.png" alt="" style="width: 30px;">
                <p style="display: inline-block; font-size: 20px; font-weight: 400">IndonesianWarteg@gmail.com</p><br><br>
                <img src="Asset/telephone.png" alt="" style="width: 30px;">
                <p style="display: inline-block; font-size: 20px; font-weight: 400">+62 877 9878 2234</p><br><br>
                <img src="Asset/instagram.png" alt="" style="width: 30px;">
                <p style="display: inline-block; font-size: 20px; font-weight: 400">@IndonesianWarteg</p><br><br>
                <img src="Asset/twitter-sign.png" alt="" style="width: 30px;">
                <p style="display: inline-block; font-size: 20px; font-weight: 400">@IndonesianWarteg</p><br><br>
                <img src="Asset/facebook.png" alt="" style="width: 30px;">
                <p style="display: inline-block; font-size: 20px; font-weight: 400">Indonesian Warteg</p><br>
            </div>
        </div>
      </div>

    <%@ include file = "footer.jsp" %>

    <script src="js/bootstrap.bundle.js"></script>
</body>
</html>