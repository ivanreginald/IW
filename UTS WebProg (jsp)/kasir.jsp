<%@ page import="java.io.*" %>
<%
    //Declare variabel
    String[] food = request.getParameterValues("foodchecked");
    String[] fcode = new String[12];
    Integer[] amount = new Integer[12];
    Integer[] price = new Integer[12];
    int total = 0;

    //Looping untuk menginput data untuk variabel array
    for(int i = 0; i < food.length; i++){
        if(food[i].equals("Rendang")){
            fcode[i] = "F01";
            amount[i] = Integer.parseInt(request.getParameter("amount1"));
            price[i] = 16000;
        }

        else if(food[i].equals("Sate Ayam")){
            fcode[i] = "F02";
            amount[i] = Integer.parseInt(request.getParameter("amount2"));
            price[i] = 20000;
        }

        else if(food[i].equals("Ayam Goreng")){
            fcode[i] = "F03";
            amount[i] = Integer.parseInt(request.getParameter("amount3"));
            price[i] = 12000;
        }

        else if(food[i].equals("Opor Ayam")){
            fcode[i] = "F04";
            amount[i] = Integer.parseInt(request.getParameter("amount4"));
            price[i] = 12000;
        }

        else if(food[i].equals("Ketupat Sayur")){
            fcode[i] = "F05";
            amount[i] = Integer.parseInt(request.getParameter("amount5"));
            price[i] = 8000;
        }

        else if(food[i].equals("Sayur Asem")){
            fcode[i] = "F06";
            amount[i] = Integer.parseInt(request.getParameter("amount6"));
            price[i] = 8000;
        }

        else if(food[i].equals("Sayur Kacang")){
            fcode[i] = "F07";
            amount[i] = Integer.parseInt(request.getParameter("amount7"));
            price[i] = 6000;
        }

        else if(food[i].equals("Sayur Nangka")){
            fcode[i] = "F08";
            amount[i] = Integer.parseInt(request.getParameter("amount8"));
            price[i] = 6000;
        }

        else if(food[i].equals("Tahu Goreng")){
            fcode[i] = "F09";
            amount[i] = Integer.parseInt(request.getParameter("amount9"));
            price[i] = 2000;
        }

        else if(food[i].equals("Tempe Goreng")){
            fcode[i] = "F10";
            amount[i] = Integer.parseInt(request.getParameter("amount10"));
            price[i] = 2000;
        }

        else if(food[i].equals("Es Teh")){
            fcode[i] = "F11";
            amount[i] = Integer.parseInt(request.getParameter("amount11"));
            price[i] = 4000;
        }

        else if(food[i].equals("Es Jeruk")){
            fcode[i] = "F12";
            amount[i] = Integer.parseInt(request.getParameter("amount12"));
            price[i] = 7000;
        }
    }

    //write data ke file txt
    String file = application.getRealPath("/") + "bill.txt";
    FileWriter filee = new FileWriter(file, true);
    for(int i = 0; i<food.length; i++){
        filee.write("Code: " + fcode[i] + "\n");
        filee.write("Food: " + food[i] + "\n");
        filee.write("Amount: " + amount[i] + "\n");
        filee.write("Price: " + price[i] + "\n \n");
        total = total + amount[i]*price[i];
    }
    filee.write("\n \n");
    filee.write("Total: " + total + "\n \n \n");
    filee.close();

    total = 0;
    
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
    <h1 class="text-center">$BILL</h1>
    <br>
    <%-- Menampilkan data pembayaran dalam bentuk tabel --%>
          <table class="table table-borderless text-center">
            <thead class="thead-dark">
                <tr>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col"></th>
                <th scope="col">Price</th>
                <th scope="col">Total</th>
                </tr>
            </thead>
            <% for(int i=0; i<food.length; i++){ %>
            <% if(amount[i]==0)continue; %>
            <tbody>
                <tr>
                <th scope="row"><%=fcode[i]%></th>
                <td><%=food[i]%></td>
                <td><%="x"+amount[i]%></td>
                <td><%=price[i]%></td>
                <td><%=amount[i]*price[i]%></td>
                <% total = total + amount[i]*price[i]; %>
                </tr>
            </tbody>
            <% } %>
            </table>
            <br>
        <p style="font-weight: 500; font-size: 20px;">
              Total Price: Rp.<%=total%>
        </p>
        <form action="xchange.jsp" method="post">
        <div class="form-group" style="font-size: 22px; width: 200px;">
            <input type="number" name="money" class="form-control" id="" placeholder="Enter amount (Rp)">
            <input type="hidden" name="tot" class="form-control" id="" placeholder="Enter amount (Rp)" value="<%=total%>">
            <br>
            <button type="submit" class="btn btn-success mb-5">PAY</button>
        </div>
        </form>
    </div>
    </div>
    <br>

    <%@ include file = "footer.jsp" %>

    <script src="js/bootstrap.bundle.js"></script>
</body>
</html>


