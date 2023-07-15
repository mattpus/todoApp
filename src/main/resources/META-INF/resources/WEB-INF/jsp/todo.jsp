<%@include file="common/header.jsp" %>
<%@include file="common/navigation.jsp" %>
<div class="container flex-column">
    <h1>Enter Todo Details</h1>
    <div>
        <form:form method="post" modelAttribute="todo">
            <fieldset class="mb-3">
                <form:label path="description">Description</form:label>
                <form:input type="text" path="description" required="required"/>
                <form:errors path="description" cssClass="text-warning"/>
            </fieldset>
            <fieldset class="mb-3">
                <form:label path="targetDate">Target Date</form:label>
                <form:input type="text" path="targetDate" required="required"/>
                <form:errors path="targetDate" cssClass="text-warning"/>
            </fieldset>
            <form:input type="hidden" path="id"/>
            <form:input type="hidden" path="done"/>
            <div class="pt-3">
                <input type="submit" class="btn btn-success"/>
            </div>

        </form:form>

    </div>
</div>
<%@include file="common/footer.jsp" %>
<script type="text/javascript">
    $('#targetDate').datepicker({
        format: 'yyyy-mm-dd'
    });
</script>