<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <style type="text/css">
        .card img{
            width: auto;
            height: 280px;
        }
    </style>
</head>
<body>

    <%@ include file = "header.jsp" %>
    
    <%-- Tulisan Our Menu --%>
    <div class="text-center">
      <img src="Asset/menu_1.png" alt="" style="width: 500px; margin-bottom: -50px;">
    </div>

    <%-- Bentuk dalam form untuk menggunakan button submit sebagai action --%>
    <form action="kasir.jsp" method="post">
        <div class="container">
            <%-- Class card-group untuk menampung 4 buah card makanan --%>
            <div class="card-group" style="padding-top: 50px;">
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/rendang.jpeg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Rendang</h5>
                    <p class="card-text">Rp. 16.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Rendang" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount1" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/sateayam.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Sate Ayam</h5>
                    <p class="card-text">Rp. 20.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Sate Ayam" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount2" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/ayamgoreng.png" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Ayam Goreng</h5>
                    <p class="card-text">Rp. 12.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Ayam Goreng" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount3" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                    <img class="card-img-top" src="Asset/oporayam.jpeg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Opor Ayam</h5>
                      <p class="card-text">Rp. 12.000,-</p>
                    </div>
                    <div class="card-footer">
                        <div class="form-check">
                            <input class="form-check-input" name="foodchecked" type="checkbox" value="Opor Ayam" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                              Order
                            </label>
                          </div>
                          <div class="form-group">
                            <input type="number" min="0" name="amount4" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                          </div>
                    </div>
                  </div>
              </div>
        </div>
        <br>
        <div class="container">
            <div class="card-group">
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/ketupatsayur.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Ketupat Sayur</h5>
                    <p class="card-text">Rp. 8.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Ketupat Sayur" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount5" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/sayurasem.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Sayur Asem</h5>
                    <p class="card-text">Rp. 8.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Sayur Asem" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount6" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/sayurkacang.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Sayur Kacang</h5>
                    <p class="card-text">Rp. 6.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Sayur Kacang" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount7" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                    <img class="card-img-top" src="Asset/sayurnangka.jpg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Sayur Nangka</h5>
                      <p class="card-text">Rp. 6.000,-</p>
                    </div>
                    <div class="card-footer">
                        <div class="form-check">
                            <input class="form-check-input" name="foodchecked" type="checkbox" value="Sayur Nangka" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                              Order
                            </label>
                          </div>
                          <div class="form-group">
                            <input type="number" min="0" name="amount8" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                          </div>
                    </div>
                  </div>
              </div>
        </div><br>
    
        <div class="container" style="padding-bottom: 50px;">
            <div class="card-group">
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/tahu.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Tahu Goreng</h5>
                    <p class="card-text">Rp. 2.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Tahu Goreng" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount9" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/tempe.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Tempe Goreng</h5>
                    <p class="card-text">Rp. 2.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Tempe Goreng" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount10" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                  <img class="card-img-top" src="Asset/esteh.jpg" alt="Card image cap">
                  <div class="card-body">
                    <h5 class="card-title">Es Teh Manis</h5>
                    <p class="card-text">Rp. 4.000,-</p>
                  </div>
                  <div class="card-footer">
                    <div class="form-check">
                        <input class="form-check-input" name="foodchecked" type="checkbox" value="Es Teh" id="flexCheckDefault">
                        <label class="form-check-label" for="flexCheckDefault">
                          Order
                        </label>
                      </div>
                      <div class="form-group">
                        <input type="number" min="0" name="amount11" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                      </div>
                  </div>
                </div>
                <div class="card border-dark">
                    <img class="card-img-top" src="Asset/esjeruk.jpg" alt="Card image cap">
                    <div class="card-body">
                      <h5 class="card-title">Es Jeruk</h5>
                      <p class="card-text">Rp. 7.000,-</p>
                    </div>
                    <div class="card-footer">
                        <div class="form-check">
                            <input class="form-check-input" name="foodchecked" type="checkbox" value="Es Jeruk" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                              Order
                            </label>
                          </div>
                          <div class="form-group">
                            <input type="number" min="0" name="amount12" class="form-control" id="exampleFormControlInput1" placeholder="Enter amount">
                          </div>
                    </div>
                  </div>
              </div>
        </div>

        <div class="text-center" style="padding-bottom: 150px;">
            <button type="submit" class="btn btn-outline-dark btn-lg" style="font-weight: 700;">Check Out</button>
        </div>
    </form>
    
    <%@ include file = "footer.jsp" %>

    <script src="js/bootstrap.bundle.js"></script>
</body>
</html>