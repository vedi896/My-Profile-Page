<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>All Books</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 40px;
        }
        table {
            width: 60%;
            border-collapse: collapse;
            margin: auto;
            background: white;
            box-shadow: 0 2px 8px rgba(0,0,0,0.1);
        }
        th, td {
            padding: 12px;
            text-align: center;
            border-bottom: 1px solid #ddd;
        }
        th {
            background: #007bff;
            color: white;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .btn {
            display: block;
            width: 150px;
            margin: 20px auto;
            text-align: center;
            padding: 10px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
<h2>📚 Book List</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Author</th>
        <th>Price</th>
    </tr>
    <c:forEach var="book" items="${bookList}">
    <tr>
        <td>${book.bookId}</td>
        <td>${book.title}</td>
        <td>${book.author}</td>
        <td>${book.price}</td>
    </tr>
</c:forEach>

</table>

<a href="addBookForm" class="btn">➕ Add Another Book</a>
</body>
</html>
