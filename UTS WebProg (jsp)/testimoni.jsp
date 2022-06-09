<%@ page import="java.io.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style type="text/css">
        .container{
            padding-top: 50px;
        }
        .form-register{
            padding: 20px;
            background-color: white;
            margin: 0 auto;
            max-width: 600px;
        }
        .form-register h2{
            text-align: center;
        }
        
    </style>

</head>
<body>

    <%@ include file = "header.jsp" %>

    <div class="container">
      <form class="form-register" method="post">
        <div class="text-center">
          <img src="Asset/testi_1.png" alt="" style="width: 300px; margin: -90px;">
        </div>
          <h1 style="font-weight: 700;" class="text-center">TESTIMONY</h1> <br>
          <div class="form-group" style="font-size: 22px;">
            <label for="exampleInputEmail1">Email address</label>
            <input type="email" name="email" class="form-control" id="emailadress" placeholder="Enter email">
          </div> <br>

          <div class="form-group" style="font-size: 22px;">
            <label for="exampleFormControlTextarea1">Testimony</label>
            <textarea class="form-control" name="testimoni" id="exampleFormControlTextarea1" placeholder="Enter testimony" rows="5"></textarea>
          </div> <br>

          <div class="form-group text-center">
              <button type="submit" class="btn btn-outline-dark btn-lg">SUBMIT</button>
          </div>
          <br><br>
           <%
            String email = request.getParameter("email");
            String testimoni = request.getParameter("testimoni");

            String file = application.getRealPath("/") + "testimony.txt";
            FileWriter filee = new FileWriter(file, true);
            FileReader fileee = new FileReader(file);
            BufferedReader test = new BufferedReader(fileee);

            if(email!=null && testimoni!=null){
              filee.write(email + "_" +testimoni + "\n");
              %>
              <h1 class="text-center" style="font-weight:600">
                What they said:
              </h1>
              <br>
              <%
            }
            filee.close();

            String l;
            while((l=test.readLine())!=null){
              String[] split = l.split("_"); %>

              <div class="card text-center" style="background-image: url(Asset/yellow.jpg); margin-left:50px; margin-right:50px;">
                <br>
                <p style="font-weight:700"><%= split[0]%></p>
                <p style="padding-left:20px; padding-right:20px;"><%= split[1]%></p>
                <br>
              </div>
              <br>
          <%
            }
            test.close();
          %>
      </form>
    </div>
    <br>

    <%@ include file = "footer.jsp" %>

    <script src="js/bootstrap.bundle.js"></script>
</body>
</html>