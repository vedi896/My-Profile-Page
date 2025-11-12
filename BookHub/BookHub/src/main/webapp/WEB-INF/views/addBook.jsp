<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head><title>Add Book</title></head>
<body>
<h2>Add a New Book</h2>
<form:form action="addBook" modelAttribute="book" method="post">
    <table>
        <tr><td>Title:</td><td><form:input path="title"/></td></tr>
        <tr><td>Author:</td><td><form:input path="author"/></td></tr>
        <tr><td>Price:</td><td><form:input path="price"/></td></tr>
        <tr><td colspan="2"><input type="submit" value="Add Book"/></td></tr>
    </table>
</form:form>
<a href="viewBooks">View All Books</a>
</body>
</html>
