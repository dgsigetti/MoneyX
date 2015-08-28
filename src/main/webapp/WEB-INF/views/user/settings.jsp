<%@ page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>

<t:wrapper>
    <div class="row">
        <div class="col-md-6">
            <h2>${user.firstname} ${user.lastname}</h2>
            <p><i>${user.username}</i></p>
            <p>Your Friends</p>
        </div>
        <div class="col-md-6">
            <h2 class="form-signin-heading">Change your password</h2>
            <form:form class="form-signin form-horizontal" action="/update-settings" method="get">
                <div class="form-group">
                    <label for="oldpassword" class="col-md-2 control-label">Old</label>
                    <div class="col-md-10">
                        <input class="form-control" placeholder="Old Password" type="password" name="oldpassword">
                    </div>
                </div>
                <div class="form-group">
                    <label for="newpassword" class="col-md-2 control-label">New</label>
                    <div class="col-md-10">
                        <input class="form-control" placeholder="New Password" type="password" name="newpassword">
                    </div>
                </div>

                <div class="form-group">
                    <label for="confirmpassword" class="col-md-2 control-label">Confirm</label>
                    <div class="col-md-10">
                        <input class="form-control" placeholder="Confirm Password" type="password" name="confirmpassword">
                    </div>
                </div>
                <button class="btn btn-primary btn-block" type="submit">Update</button>
            </form:form>
        </div>
    </div>

</t:wrapper>