<%-- 
    Document   : DetailedInvoice
    Created on : Dec 2, 2023, 3:25:03 PM
    Author     : phuqu
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <link href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css" integrity="sha512-z3gLpd7yknf1YoNbCzqRKc4qyor8gaKU1qmn+CShxbuBusANI9QpRohGBreCFkKxLhei6S9CQXFEbbKuqLg0DA==" crossorigin="anonymous" referrerpolicy="no-referrer" />

    </head>
    <body>
        <div class="card">
            <div class="card-body">
                <div class="container mb-5 mt-3 p-5 bg-light border border-secondary rounded-3">
                    <div class="row d-flex align-items-baseline">
                        <div class="col-xl-9">
                            <p style="color: #7e8d9f;font-size: 20px;"><a href="loadInvoiceAdmin?action=loadInvoice" class="text-secondary">Invoice</a> >> <strong>ID: #${invoice.invoiceID}</strong></p>
                        </div>
                        <div class="col-xl-3 float-end">
                            <!--                            <a class="btn btn-light text-capitalize border-0" data-mdb-ripple-color="dark"><i
                                                                class="fas fa-print text-primary"></i> Print</a>
                                                        <a class="btn btn-light text-capitalize" data-mdb-ripple-color="dark"><i
                                                                class="far fa-file-pdf text-danger"></i> Export</a>-->
                        </div>
                        <hr>
                    </div>

                    <div class="container">
                        <div class="col-md-12">
                            <div class="text-center">
                                <i class="fas fa-file-invoice-dollar fa-3x ms-0" style="color:#5d9fc5 ;"></i>
                                <p class="pt-0"><strong>STOCK&STOCK</strong></p>
                            </div>

                        </div>


                        <div class="row">
                            <div class="col-xl-8">
                                <ul class="list-unstyled">
                                    <li class="text-muted"><i class="fas fa-user-alt"></i> To: <span style="color:#5d9fc5 ;">${invoice.address.firstName} ${invoice.address.lastName}</span></li>
                                    <li class="text-muted col-6 col-md-4 col-lg-4"><i class="fas fa-house-user"></i> Address: ${invoice.address.toString()}</li>
                                    <li class="text-muted"><i class="fas fa-phone"></i> Phone: ${invoice.address.phoneNumber}</li>
                                </ul>
                            </div>
                            <div class="col-xl-4">
                                <p class="text-muted">Invoice</p>
                                <ul class="list-unstyled">
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="fw-bold">ID:</span>#${invoice.invoiceID}</li>
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="fw-bold">Creation Date: </span><fmt:formatDate value="${invoice.invoiceDate}" pattern="dd-MM-yyyy" /></li>
                                    <li class="text-muted"><i class="fas fa-circle" style="color:#84B0CA ;"></i> <span
                                            class="fw-bold">Payment Method: </span>${invoice.paymentMethod}</li>
                                </ul>
                            </div>
                        </div>

                        <div class="row my-2 mx-1 justify-content-center">
                            <table class="table table-striped table-borderless">
                                <thead style="background-color:#84B0CA ;" class="text-white">
                                    <tr>
                                        <th scope="col">#</th>
                                        <th scope="col">Description</th>
                                        <th scope="col">Qty</th>
                                        <th scope="col">Unit Price</th>
                                        <th scope="col">Amount</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach var="o" items="${invoice.productList}" varStatus="loop">
                                        <tr>
                                            <th scope="row">${loop.index+1}</th>
                                            <td>${o.product.productName}</td>
                                            <td>${o.quantity}</td>
                                            <td>${o.priceUnit}</td>
                                            <td>${o.amount}</td>
                                        </tr>
                                    </c:forEach>
                                </tbody>
                            </table>
                        </div>
                        <div class="row">
                            <div class="col-xl-8">

                            </div>
                            <div class="col-xl-3">
                                <ul class="list-unstyled">
                                    <li class="text-muted ms-3"><span class="text-black me-4">SubTotal</span>$${invoice.subTotal}</li>
                                    <li class="text-muted ms-3 mt-2"><span class="text-black me-4">Discount</span>$${invoice.discount}</li>
                                </ul>
                                <p class="text-black float-start"><span class="text-black me-3"> Total Amount</span><span
                                        style="font-size: 25px;">$${invoice.total}</span></p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-xl-10">
                                <p>Thank you for your purchase</p>
                            </div>
                            <div class="col-xl-2">
                                <a href="loadInvoiceAdmin?action=loadInvoice" class="btn btn-primary text-capitalize" style="background-color:#60bdf3 ;">Return</a>
                            </div>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
