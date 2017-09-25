<%@ page contentType="text/html; utf-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<table>
    <thead><tr><td>Username</td></tr></thead>
    <tbody>
        <c:forEach items="${usernames}" var="username" varStatus="status">
            <tr>
                <td>${username}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>