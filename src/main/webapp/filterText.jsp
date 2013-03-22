<%--
  Created by IntelliJ IDEA.
  User: itkachuk
  Date: 3/10/13
  Time: 10:54 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Page to display filtered text</title>
</head>
<body>
    <div id="enter-text-filter-form">
        <fieldset>
            <legend><b>Enter text filter</b></legend>
            <form method="get" action="/servlet">
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
    <div id="display-filtered-text-form">
        <fieldset>
            <legend><b>Filtered text</b></legend>
            <c:if test="${filteredText ne null}">
                <td><c:out value="${filteredText.text}"/></td>
            </c:if>
        </fieldset>
    </div>
    <a href="enterText.jsp">Go to entering text page</a>
</body>
</html>