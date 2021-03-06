<html>
<head>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <title>Product Management</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css"> -->
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.22/css/dataTables.bootstrap4.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@10"></script>

    <meta name="viewport" content="width=device-width, initial-scale=1">

    <meta charset="UTF-8">
    <style>
        .tableProduct{
            margin: auto;
        }
        #header{
            height: 3rem;
        }
        .div-addproduct{
            text-align: right;
            margin-bottom: 1rem;
            /*border: 1px solid red;*/
        }
        .row1{
            float: left;
        }
        .row2{
            float: left;
            text-align: center;
        }

        .imgPreview{
            max-width: 150px;
        }
        .imgPreviewTable{
            max-width: 100px
        }
        .imgPreviewTable:hover{
            transform: scale(3.5); /* (150% zoom - Note: if the zoom is too large, it will go outside of the viewport) */
        }
        .submmitButton{
            float: right;
        }
    </style>

</head>
<body>

<%--navbar--%>
<div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="/homepage"><h3>TDA STORE</h3></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="/homepage">Home</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/products">Products</a>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
                        <a class="nav-link dropbtn" href="#" id="managementDropdown" role="button" data-toggle="dropdown">
                            Management
                        </a>
                        <div class="dropdown-menu" aria-labelledby="managementDropdown" style="height: auto; width: auto">
                            <a class="dropdown-item" href="/admin/customer">User Management
                            </a>
                            <a class="dropdown-item" href="/admin/product">Product Management
                            </a>
                            <a class="dropdown-item" href="/admin/orders">Oder Management
                            </a>
                        </div>
                    </div>
                </li>

                <%
                    String nameResult = (String) session.getAttribute("nameLogin");
                    String url = "/login";
                    String menu1 = "Login";
                    String urlMenu1 = "/login";
                    String menu2 = "Register";
                    String urlMenu2 = "/register";
                    if (nameResult == null) {
                        nameResult = "Login";
                    } else {
                        url = "#";
                        menu1 = "profile";
                        urlMenu1 = "/inforcustomer";
                        menu2 = "logout";
                        urlMenu2 = "/logout";
                    }
                %>
                <li class="nav-item active">
                    <div class="dropdown">
                        <a class="nav-link dropbtn" href="<%=url%>" id="navbarDropdown" role="button" data-toggle="dropdown">
                            <%=nameResult%>
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown" style="height: auto; width: auto">
                            <a class="dropdown-item" href="<%=urlMenu1%>"><%=menu1%>
                            </a>
                            <a class="dropdown-item" href="<%=urlMenu2%>"><%=menu2%>
                            </a>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
</div>


<div class="container-fluid">

    <div class="tableProduct">
        <div class="div-addproduct">
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#modalAdd">
                + Create new product
            </button>

        </div>
        <!-- The Modal -->
        <div class="modal fade" id="modalAdd">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <!-- Modal Header -->
                    <div class="modal-header">
                        <h4 class="modal-title">Modal Heading</h4>
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>

                    <!-- Modal body -->
                    <div class="modal-body">
                        <form action="/admin/product" method="post" id="formSubmitAdd">
                            <div class="form-group col-sm-4 row1">
                                <label for="">ProductId:</label>
                                <input type="text" name="productId" id="idProduct" class="form-control" disabled readonly>
                            </div>
                            <div class="form-group col-sm-4 row1">
                                <label for="">Product Name:</label>
                                <input type="text" name="productName" id="ProductName" class="form-control">
                            </div>
                            <div class="form-group col-sm-4 row1">
                                <label for="">Category:</label>
                                <select name="categoryProduct" id="Category" class="form-control">
                                    <c:forEach items='${requestScope["listCategory"]}'
                                               var="category">
                                        <option value="${category.getCategoryId()}">${category.getNameCategory()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                            <div class="form-group col-sm-4 row1">
                                <label for="">Quantity:</label>
                                <input type="text" name="quantityProduct" id="Quantity" class="form-control">
                            </div>
                            <div class="form-group col-sm-4 row1">
                                <label for="">Price:</label>
                                <input type="text" name="priceProduct" id="Price" class="form-control">
                            </div>
                            <div class="form-group col-sm-4 row1">
                                <label for="">Description:</label>
                                <input type="text" name="descriptionProduct" id="Description" class="form-control">
                            </div>
                            <div class="form-group col-sm-4 row2">
                                <label for="">Img Main:</label>
                                <input type="text" name="imgMainProduct" id="imgInp1" class="form-control">
                            </div>
                            <div class="form-group col-sm-4 row2">
                                <label for="">Img Child 1:</label>
                                <input type="text" name="img1Product" id="imgInp2" class="form-control">
                            </div>
                            <div class="form-group col-sm-4 row2">
                                <label for="">Img Child 2:</label>
                                <input type="text" name="img2Product" id="imgInp3" class="form-control">
                            </div>
                            <div class="col-sm-4 row2">

                                <img id="blah1" class="imgPreview" src="https://batdongsankhanhhoa.com.vn/FileStorage/Product/no-image.jpg"/>
                            </div>

                            <div class="col-sm-4 row2">
                                <img id="blah2" class="imgPreview" src="https://batdongsankhanhhoa.com.vn/FileStorage/Product/no-image.jpg"
                                />
                            </div>

                            <div class="col-sm-4 row2">
                                <img id="blah3" class="imgPreview" src="https://batdongsankhanhhoa.com.vn/FileStorage/Product/no-image.jpg"
                                />
                            </div>
                            <div class="form-group col-sm-6 row2">
                                <label for="">Img Child 3:</label>
                                <input type="text" name="img3Product" id="imgInp4" class="form-control">
                            </div>
                            <div class="form-group col-sm-6 row2">
                                <label for="">Img Child 4:</label>
                                <input type="text" name="img4Product" id="imgInp5" class="form-control">
                            </div>
                            <div class="col-sm-6 row2">

                                <img id="blah4" class="imgPreview" src="https://batdongsankhanhhoa.com.vn/FileStorage/Product/no-image.jpg"
                                />
                            </div>

                            <div class="col-sm-6 row2">
                                <img id="blah5" class="imgPreview" src="https://batdongsankhanhhoa.com.vn/FileStorage/Product/no-image.jpg"
                                />
                            </div>
                            <script type="text/javascript">
                                jQuery(document).ready(function ($) {
                                    $('#imgInp1').bind('input', function () {
                                        $('#blah1').attr('src', $(this).val()); //concatinate path if required
                                    });
                                    $('#imgInp2').bind('input', function () {
                                        $('#blah2').attr('src', $(this).val()); //concatinate path if required
                                    });
                                    $('#imgInp3').bind('input', function () {
                                        $('#blah3').attr('src', $(this).val()); //concatinate path if required
                                    });
                                    $('#imgInp4').bind('input', function () {
                                        $('#blah4').attr('src', $(this).val()); //concatinate path if required
                                    });
                                    $('#imgInp5').bind('input', function () {
                                        $('#blah5').attr('src', $(this).val()); //concatinate path if required
                                    });
                                });
                            </script>
                            <div class="form-group col-sm-2 row1">
                                <label for="">Size S:</label>
                                <input type="text" name="SizeSProduct" class="form-control">
                            </div>
                            <div class="form-group col-sm-2 row1">
                                <label for="">Size M:</label>
                                <input type="text" name="SizeMProduct" class="form-control">
                            </div>
                            <div class="form-group col-sm-2 row1">
                                <label for="">Size L:</label>
                                <input type="text" name="SizeLProduct" class="form-control">
                            </div>
                            <div class="form-group col-sm-2 row1">
                                <label for="">Size XL:</label>
                                <input type="text" name="SizeXLProduct" class="form-control">
                            </div>
                            <div class="form-group col-sm-2 row1">
                                <label for="">Size XXL:</label>
                                <input type="text" name="SizeXXLProduct" class="form-control">
                            </div>
                            <input type="text" name="action" value="add" hidden>
                            <button type="button"  onclick="submitFormAdd()" class="btn btn-primary">Update</button>

                        </form>
                    </div>

                </div>

<%--                <!-- Modal footer -->--%>
<%--                <div class="modal-footer">--%>
<%--                </div>--%>
                <script>
                    function submitFormAdd(){
                        Swal.fire({
                            title: 'Are you sure?',
                            text: "You won't be able to update this!",
                            icon: 'warning',
                            showCancelButton: true,
                            confirmButtonColor: '#3085d6',
                            cancelButtonColor: '#d33',
                            confirmButtonText: 'Yes, update it!'
                        }).then((result) => {
                            if (result.isConfirmed) {
                                Swal.fire(
                                    'Update!',
                                    'Your Product has been update.',
                                    'success'
                                )
                                $("#formSubmitAdd").submit();
                            }
                        })
                    }
                </script>

            </div>
        </div>
    </div>
    <table id="tableProduct" class="table table-striped table-bordered" style="width:100%">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name Product</th>
            <th>Category</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>IMG Product</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </thead>
        <tbody>
<c:forEach items='${requestScope["listProduct"]}'
           var="product">
        <tr>
            <td>${product.getProductId()}</td>
            <td>${product.getProductName()}</td>
            <td>${product.getCategoryId()}</td>
            <td>${product.getQuantity()}</td>
            <td>${product.getPrice()}</td>
            <td><img id="blah5" class="imgPreviewTable" src="${product.getImgMain()}"
            /></td>
            <td><button class="btn btn-info" data-toggle="modal" data-target="#editModal${product.getProductId()}">Edit</button></td>
            <td><form action="/admin/product" method="post" id="formDelete">
                <input type="text" name="action" value="delete" hidden>
                <input type="text" name="idProduct" value="${product.getProductId()}" hidden>
                <input type="submit" class="btn btn-danger" onclick="submitDelete()" value="delete">
<%--                <button class="btn btn-danger" id="${product.getProductId()}" onclick="submitDelete()">Delete</button>--%>
            </form>
            </td>

            <!-- The Modal -->
            <div class="modal fade" id="editModal${product.getProductId()}">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <!-- Modal Header -->
                        <div class="modal-header">
                            <h4 class="modal-title">Modal Heading</h4>
                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                        </div>

                        <!-- Modal body -->
                        <div class="modal-body">
                            <form action="/admin/product" id="formSubmit${product.getProductId()}" method="post">
                                <div class="form-group col-sm-4 row1">
                                    <label for="">ProductId:</label>
                                    <input type="text" name="productId"  class="form-control" value="${product.getProductId()}" readonly>
                                </div>
                                <div class="form-group col-sm-4 row1">
                                    <label for="">Product Name:</label>
                                    <input type="text" name="productName" class="form-control" value="${product.getProductName()}">
                                </div>
                                <div class="form-group col-sm-4 row1">
                                    <label for="">Category:</label>
                                    <select name="categoryProduct" class="form-control">
                                        <option value="${product.getCategoryId()}">${product.getCategoryId()}</option>
    <c:forEach items='${requestScope["listCategory"]}'
               var="category">
                                        <option value="${category.getCategoryId()}">${category.getNameCategory()}</option>

    </c:forEach>
                                    </select>
                                </div>
                                <div class="form-group col-sm-4 row1">
                                    <label for="">Quantity:</label>
                                    <input type="text" name="quantityProduct" class="form-control" value="${product.getQuantity()}">
                                </div>
                                <div class="form-group col-sm-4 row1">
                                    <label for="">Price:</label>
                                    <input type="text" name="priceProduct" class="form-control" value="${product.getPrice()}">
                                </div>
                                <div class="form-group col-sm-4 row1">
                                    <label for="">Description:</label>
                                    <input type="text" name="descriptionProdut" class="form-control" value="${product.getDescription()}">
                                </div>
                                <div class="form-group col-sm-4 row2">
                                    <label for="">Img Main:</label>
                                    <input type="text" name="imgMainProduct" id="imgInp1${product.getProductId()}" class="form-control" value="${product.getImgMain()}">
                                </div>
                                <div class="form-group col-sm-4 row2">
                                    <label for="">Img Child 1:</label>
                                    <input type="text" name="img1Product" id="imgInp2${product.getProductId()}" class="form-control" value="${product.getImg1()}">
                                </div>
                                <div class="form-group col-sm-4 row2">
                                    <label for="">Img Child 2:</label>
                                    <input type="text" name="img2Product" id="imgInp3${product.getProductId()}" class="form-control" value="${product.getImg2()}">
                                </div>
                                <div class="col-sm-4 row2">

                                    <img id="blah1${product.getProductId()}" class="imgPreview" src="${product.getImgMain()}"/>
                                </div>

                                <div class="col-sm-4 row2">
                                    <img id="blah2${product.getProductId()}" class="imgPreview" src="${product.getImg1()}"
                                    />
                                </div>

                                <div class="col-sm-4 row2">
                                    <img id="blah3${product.getProductId()}" class="imgPreview" src="${product.getImg2()}"
                                    />
                                </div>
                                <div class="form-group col-sm-6 row2">
                                    <label for="">Img Child 3:</label>
                                    <input type="text"  name="img3Product" id="imgInp4${product.getProductId()}" class="form-control" value="${product.getImg3()}">
                                </div>
                                <div class="form-group col-sm-6 row2">
                                    <label for="">Img Child 4:</label>
                                    <input type="text" name="img4Product" id="imgInp5${product.getProductId()}" class="form-control" value="${product.getImg4()}">
                                </div>
                                <div class="col-sm-6 row2">

                                    <img id="blah4${product.getProductId()}" class="imgPreview" src="${product.getImg3()}"
                                    />
                                </div>

                                <div class="col-sm-6 row2">
                                    <img id="blah5${product.getProductId()}" class="imgPreview" src="${product.getImg4()}"
                                    />
                                </div>

                                <div class="form-group col-sm-2 row1">
                                    <label for="">Size S:</label>
                                    <input type="text" name="SizeSProduct" class="form-control" value="${product.getSize_S()}">
                                </div>
                                <div class="form-group col-sm-2 row1">
                                    <label for="">Size M:</label>
                                    <input type="text" name="SizeMProduct" class="form-control" value="${product.getSize_M()}">
                                </div>
                                <div class="form-group col-sm-2 row1">
                                    <label for="">Size L:</label>
                                    <input type="text" name="SizeLProduct" class="form-control" value="${product.getSize_L()}">
                                </div>
                                <div class="form-group col-sm-2 row1">
                                    <label for="">Size XL:</label>
                                    <input type="text" name="SizeXLProduct"  class="form-control" value="${product.getSize_XL()}">
                                </div>
                                <div class="form-group col-sm-2 row1">
                                    <label for="">Size XXL:</label>
                                    <input type="text"  name="SizeXXLProduct" class="form-control" value="${product.getSize_XXL()}">
                                </div>
                                <input type="text" name="action" value="update" style="display: none">
<%--                                <div class="submmitButton col-sm-3">--%>
<%--                                    <input type="button" onclick="submitForm${product.getProductId()}()" class="btn btn-primary" value="Update">--%>
<%--                                </div>--%>
                            </form>
                        </div>
                        <!-- Modal footer -->
                        <div class="modal-footer">
                            <button type="button"  onclick="submitForm${product.getProductId()}()" class="btn btn-primary">Update</button>
                        </div>
                        <script>
                            function submitForm${product.getProductId()}(){
                                Swal.fire({
                                    title: 'Are you sure?',
                                    text: "You won't be able to update this!",
                                    icon: 'warning',
                                    showCancelButton: true,
                                    confirmButtonColor: '#3085d6',
                                    cancelButtonColor: '#d33',
                                    confirmButtonText: 'Yes, update it!'
                                }).then((result) => {
                                    if (result.isConfirmed) {
                                        Swal.fire(
                                            'Update!',
                                            'Your Product has been update.',
                                            'success'
                                        )
                                        $("#formSubmit${product.getProductId()}").submit();
                                    }
                                })
                            }
                        </script>
                    </div>
                </div>
            </div>
        </tr>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $('#imgInp1${product.getProductId()}').bind('input', function () {
                $('#blah1${product.getProductId()}').attr('src', $(this).val()); //concatinate path if required
            });
            $('#imgInp2${product.getProductId()}').bind('input', function () {
                $('#blah2${product.getProductId()}').attr('src', $(this).val()); //concatinate path if required
            });
            $('#imgInp3${product.getProductId()}').bind('input', function () {
                $('#blah3${product.getProductId()}').attr('src', $(this).val()); //concatinate path if required
            });
            $('#imgInp4${product.getProductId()}').bind('input', function () {
                $('#blah4${product.getProductId()}').attr('src', $(this).val()); //concatinate path if required
            });
            $('#imgInp5${product.getProductId()}').bind('input', function () {
                $('#blah5${product.getProductId()}').attr('src', $(this).val()); //concatinate path if required
            });
        });
    </script>
</c:forEach>

        </tbody>
        <tfoot>
        <tr>
            <th>Id</th>
            <th>Name Product</th>
            <th>Category</th>
            <th>Quantity</th>
            <th>Price</th>
            <th>IMG Product</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        </tfoot>
    </table>
</div>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/jquery.dataTables.min.js"></script>
<script type="text/javascript" src="https://cdn.datatables.net/1.10.22/js/dataTables.bootstrap4.min.js"></script>
<script>
    $(document).ready(function() {
        $('#tableProduct').DataTable();
    } );
</script>

<script>
    function submitDelete(){
        $("#formDelete").submit();
    }
    // function getID(idProduct){
    //     $.ajax({
    //         url: '/admin/product?idProductDelete='+idProduct+'&action=delete',
    //         data: {
    //             format: 'json'
    //         },
    //         error: function() {
    //             $('#info').html('<p>An error has occurred</p>');
    //         },
    //         dataType: 'jsonp',
    //         success: function(data) {
    //             alert("ok");
    //         },
    //         type: 'GET'
    //     });
    //     location.reload();
    // }
</script>
</body>
</html>
