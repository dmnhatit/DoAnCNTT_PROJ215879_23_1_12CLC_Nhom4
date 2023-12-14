<%-- 
    Document   : ManagerProduct
    Created on : Dec 28, 2020, 5:19:02 PM
    Author     : trinh
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Stock&Stock</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Edit <b>User</b></h2>
                        </div>
                        <div class="col-sm-6">
                        </div>
                    </div>
                </div>
            </div>
            <div id="editEmployeeModal">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <form action="editUser" method="post">
                            <!--<input type="hidden" name="action" value="editUser"/>-->
                            <div class="modal-header">						
                                <h4 class="modal-title">Edit User</h4>
                                <button type="submit" class="close" data-dismiss="modal" aria-hidden="true" name="action" value="closeUser">&times;</button>
                            </div>
                            <div class="modal-body">					
                                <div class="form-group">
                                    <label>ID</label>
                                    <input value="${user.userId}" name="id" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Email</label>
                                    <input value="${user.email}" name="email" type="text" class="form-control" readonly required>
                                </div>
                                <div class="form-group">
                                    <label>Password</label>
                                    <input value="${user.password}" name="password" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>FirstName</label>
                                    <input value="${user.firstName}" name="firstName" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>LastName</label>
                                    <input value="${user.lastName}" name="lastName" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>PhoneNumber</label>
                                    <input value="${user.phoneNumber}" name="phone" type="text" class="form-control" required>
                                </div>
                                <div class="form-group">
                                    <label>Role</label>
                                    <select name="role" class="form-select" aria-label="Default select example">
                                        <option value="0" <c:if test="${user.isAdmin == 0}">selected</c:if>>User</option>
                                        <option value="1" <c:if test="${user.isAdmin == 1}">selected</c:if>>Admin</option>
                                    </select>
                                </div>


                            </div>
                            <div class="modal-footer">
                                <input type="submit" class="btn btn-success" name="action" value="editUser">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div>


        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>