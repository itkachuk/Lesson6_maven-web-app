<%--
  Created by IntelliJ IDEA.
  User: itkachuk
  Date: 3/9/13
  Time: 6:24 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Page to display entered text</title>
</head>
<body>
    <div id="enter-text-form">
        <fieldset>
            <legend><b>Enter text</b></legend>
            <form method="post" action="/servlet">
                <table>
                    <tr>
                        <td><input type="text" size="30" name="textArea" value=""></td>
                        <td><input type="submit" name="submitTextButton" value="    Submit    "></td>
                    </tr>
                </table>
            </form>
        </fieldset>
    </div>

    <div id="display-saved-text-form">
        <fieldset>
            <legend><b>Saved text</b></legend>
            <c:if test="${savedText ne null}">
                <td><c:out value="${savedText.text}"/></td>
            </c:if>
        </fieldset>
    </div>
    <a href="filterText.jsp">Go to filtering text page</a>
</body>
</html>