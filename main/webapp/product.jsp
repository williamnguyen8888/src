<!DOCTYPE html>
<html lang="en">

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<link rel="stylesheet" href="styles.css">
<html>

<head>
    <title>Home</title>
    <meta charset="UTF-8">
</head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">

    <div class="container-fluid">
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav" style="">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="nav-link dropbtn">Male</a>
                        <div class="dropdown-content">

                                    <a href="#">T-shirt</a>
                                    <a href="#">Shirt</a>
                                    <a href="#">Coat</a>
                                    <a href="#">Shorts</a>
                                    <a href="#">Jeans</a>
                                    <a href="#">Pants</a>

                                    <img src="image/male.jpg"
                                         style="height: 400px ;position:absolute;top: 0px;left: 450px">

                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="nav-link dropbtn">Female</a>
                        <div class="dropdown-content  ">
                            <ul>
                                <li>
                                    <a href="#">T-shirt</a>
                                    <a href="#">Shirt</a>
                                    <a href="#">Coat</a>
                                    <a href="#">Dresses</a>
                                    <a href="#">Shorts</a>
                                    <a href="#">Jeans</a>
                                    <a href="#">Pants</a>
                                </li>
                                <li>
                                    <img src="image/female.jpg"
                                         style="height: 400px ;position:absolute;top: 0px;left: 500px">
                                </li>
                            </ul>
                        </div>
                    </div>
                </li>
                <li class="nav-item">
                    <div class=" dropdown">
                        <a class="nav-link dropbtn">Sale</a>
                        <div class="dropdown-content ">

                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>
                        </div>
                    </div>
                </li>
                <a class="navbar-brand" href="#" style="position:absolute ; left:635px "><img src="image/images.png"
                                                                                              style="height: 40px"></a>
            </ul>
        </div>
        <div>
            <ul class="navbar-nav">
                <li class="nav-item active">
                    <form class="form-inline my-2 my-lg-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </li>
                <li class="nav-item active"><a class="nav-link" href="#">
                    <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                         xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg>
                </a></li>

                <li class="nav-item active">
                    <div class="dropdown">
                        <a class="nav-link dropbtn">
                            <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-door-open-fill"
                                 fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                <path fill-rule="evenodd"
                                      d="M1.5 15a.5.5 0 0 0 0 1h13a.5.5 0 0 0 0-1H13V2.5A1.5 1.5 0 0 0 11.5 1H11V.5a.5.5 0 0 0-.57-.495l-7 1A.5.5 0 0 0 3 1.5V15H1.5zM11 2v13h1V2.5a.5.5 0 0 0-.5-.5H11zm-2.5 8c-.276 0-.5-.448-.5-1s.224-1 .5-1 .5.448.5 1-.224 1-.5 1z"/>
                            </svg>
                        </a>
                        <div class="dropdown-content">
                            <a href="#">Link 1</a>
                            <a href="#">Link 2</a>
                            <a href="#">Link 3</a>

                        </div>
                    </div>
                </li>


            </ul>
        </div>
    </div>
</nav>
<div class="container-fluid" style="padding-top: 100px">
    <div class="row">
        <div class="col-lg-2">
            <div></div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                                               xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-2">
            <div></div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-2">
            <div></div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-2">
            <div></div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-2">
            <div></div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>

    </div>
    <div class="row">
        <div class="col-lg-2">
            <div></div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>
        <div class="col-lg-2">
            <div class="card" style="width: 14rem; border: 1px solid white">
                <a href="#"><img src="image/male.jpg" class="card-img-top" a></a>
                <div class="card-body">
                    <h6>Quần âu màu đen</h6>
                    <h6 style="font-weight: bold;color: #7abaff!important;">99.00$</h6>
                    <a href="#"> <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-cart-check-fill" fill="currentColor"
                                      xmlns="http://www.w3.org/2000/svg">
                        <path fill-rule="evenodd"
                              d="M.5 1a.5.5 0 0 0 0 1h1.11l.401 1.607 1.498 7.985A.5.5 0 0 0 4 12h1a2 2 0 1 0 0 4 2 2 0 0 0 0-4h7a2 2 0 1 0 0 4 2 2 0 0 0 0-4h1a.5.5 0 0 0 .491-.408l1.5-8A.5.5 0 0 0 14.5 3H2.89l-.405-1.621A.5.5 0 0 0 2 1H.5zM4 14a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm7 0a1 1 0 1 1 2 0 1 1 0 0 1-2 0zm.354-7.646a.5.5 0 0 0-.708-.708L8 8.293 6.854 7.146a.5.5 0 1 0-.708.708l1.5 1.5a.5.5 0 0 0 .708 0l3-3z"/>
                    </svg></a>
                </div>
            </div>
        </div>

    </div>


</div>
<div>
    <div class="row" style="height: 150px">
    </div>
</div>
<hr style="background:#b3b7bb">
<footer class="page-footer font-small blue pt-4">

    <!-- Footer Links -->
    <div class="container-fluid text-center text-md-left" style="background:#b8daff">

        <div class="row">

            <!-- Grid column -->
            <div class="col-md-4">

                <h5 class="text-uppercase">Công ty cổ phẩn TDT Fashion</h5>

                <ul class="list-unstyled">
                    <li>
                        <a>Số ĐKKD: 0107574310, ngày cấp: 23/09/2016. Nơi cấp: Sở Kế hoạch và đầu tư Hà Nội</a>
                    </li>
                    <li>
                        <a>Địa chỉ liên hệ: Phòng 301 Tòa nhà GP Invest, 170 La Thành, P. Ô Chợ Dừa, Q. Đống Đa, Hà
                            Nội</a>
                    </li>
                    <li>
                        <a>Điện thoại: +8424 - 7303.0222
                            Fax: +8424 - 6277.6419
                        </a>

                    </li>
                    <li>
                        <a>Email: binhminhbenem2801@gmail.com</a>
                    </li>
                </ul>

            </div>
            <!-- Grid column -->

            <hr class="clearfix w-100 d-md-none pb-3">

            <!-- Grid column -->
            <div class="col-md-2">

                <!-- Links -->
                <h5 class="text-uppercase">Products</h5>

                <ul class="list-unstyled">
                    <li>
                        <a href="#!">Áo</a>
                    </li>
                    <li>
                        <a href="#!">Quần</a>
                    </li>
                    <li>
                        <a href="#!">Sale</a>
                    </li>

                </ul>

            </div>

            <div class="col-md-2">

                <!-- Links -->
                <h5 class="text-uppercase">Thương Hiệu</h5>

                <ul class="list-unstyled">
                    <li c>
                        <a href="#!">Giới thiệu</a>
                    </li>
                    <li>
                        <a href="#!">Liên hệ</a>
                    </li>
                    <li>
                        <a href="#!">Tuyển dụng</a>
                    </li>
                    <li>
                        <a href="#!">Hệ thống cửa hàng</a>
                    </li>
                </ul>
            </div>
            <div class="col-md-4">


                <ul class="list-unstyled">
                    <li>
                        <form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                        </form>
                    </li>
                    <l>
                        <a href="#"> <img src="image/fb11.png" style="height: 50px"></a>
                        <a href="#"> <img src="image/in.png" style="height: 50px"></a>
                        <a href="#"> <img src="image/tw.png" style="height: 50px"></a>
                    </l>

                </ul>

            </div>


        </div>

    </div>


    <!-- Footer Links -->

    <!-- Copyright -->
    <div class="footer-copyright text-center py-3" style="color: #b8daff">© 2020 Copyright:
        <a href="#"> TDT.vn</a>
    </div>
</footer>
</body>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
        integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
        integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
        crossorigin="anonymous"></script>
</body>
</html>