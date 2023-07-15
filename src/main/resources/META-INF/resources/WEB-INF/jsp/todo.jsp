<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<html>
<head>
    <link href="webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet" >
    <title>Add Todo Page</title>
</head>
<body>
<div class="container flex-column" >
    <h1>Enter Todo Details</h1>
    <div>
        <form:form method="post" modelAttribute="todo">
            Description: <form:input type="text" path="description"
                                     required="required"/>

            <form:input type="hidden" path="id"/>
            <form:input type="hidden" path="done"/>
            <form:errors path="description" cssClass="text-warning"/>
            <div class="pt-3">
                <input type="submit" class="btn btn-success"/>
            </div>

        </form:form>

    </div>


</div>
<script src="webjars/bootstrap/5.1.3/js/bootstrap.min.js"></script>
<script src="webjars/jquery/3.6.0/jquery.min.js"></script>
</body>
</html>