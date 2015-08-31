<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags"%>

<t:auth>
	<c:if test="${param.error != null}">
		<div class="alert alert-danger alert-dismissible" role="danger">
			<button type="button" class="close" data-dismiss="danger"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>Error:</strong> Invalid username and/or password<br />
		</div>
	</c:if>

	<c:if test="${param.logout != null}">
		<div class="alert alert-info alert-dismissible" role="logout">
			<button type="button" class="close" data-dismiss="logout"
				aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			You have been logged out.
		</div>
	</c:if>

	<form:form class="form-signin" action="/login" modelAttribute="user"
		method="post">
		<h2 class="form-signin-heading">Please sign in</h2>

		<label for="username" class="sr-only">Username</label>
		<input type="text" id="username" name="username" class="form-control"
			placeholder="Username" required autofocus>

		<label for="password" class="sr-only">Password</label>
		<input type="password" id="password" name="password"
			class="form-control" placeholder="Password" required>

		<div class="checkbox">
			<label><input type="checkbox" value="remember-me">
				Remember me</label>
		</div>
		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign
			in</button>
	</form:form>

	<div class="btn-group">
		<a href="/register" class="btn btn-primary">Register</a>
		<a href="/forgot-password" class="btn btn-primary">Forgot Password</a>
	</div>
</t:auth>