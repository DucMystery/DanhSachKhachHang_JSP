<%@ page import="java.util.ArrayList" %>
<%@ page import="customer.Customer" %>
<%@ page import="java.util.List" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <style>
      table{
        border: 1px solid gray;
        padding: 5px;
      }
      tr{
        border: 1px solid gray;
        padding: 5px;
      }
      td{
        border: 1px solid gray;
        padding: 5px;
      }
    </style>
  </head>
  <body>
  <h1>
    Our Customers
    <%
      List<Customer> list = new ArrayList<>();
      list.add(new Customer("Tô Như Đức","13/09/1997","Hà Tĩnh"));
      list.add(new Customer("Nguyễn Công Đức","16/08/1997","Hà Tĩnh"));
      list.add(new Customer("Trần Công Hoan","13/01/1987","Hà Nội"));
      list.add(new Customer("Hoàng Thanh Hằng","20/10/1969","Huế"));
      //  pageContext.setAttribute("list",list);
    %>
  </h1>
  <table>
    <tr>
      <th colspan="4" style="border: 1px solid gray">Danh Sách Khách Hàng</th>
    </tr>
    <tr>
      <th>Name</th>
      <th>Ngày Sinh</th>
      <th>Address</th>
    </tr>

    <% for(int i = 0; i < list.size(); i++){ %>
    <tr>
      <td><%= list.get(i).getName()%></td>
      <td><%=list.get(i).getDate()%></td>
      <td><%=list.get(i).getAddress()%></td>
    </tr>
    <%}%>
    <%--      <c:forEach items="${list}" var="customer">--%>

    <%--          <tr>--%>
    <%--              <td>${customer.name}</td>--%>
    <%--&lt;%&ndash;              <td><c:out value="${customer.getName()}"/></td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;              <td><c:out value="${customer.getId()}"/></td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;              <td><c:out value="${customer.getAddress()}"/></td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;              <td><c:out value="${customer.getDob()}"/></td>&ndash;%&gt;--%>
    <%--          </tr>--%>
    <%--      </c:forEach>--%>
  </table>
  </body>
</html>
