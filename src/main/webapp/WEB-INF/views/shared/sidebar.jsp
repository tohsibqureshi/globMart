<p class="lead">Glob Mart</p>
<div class="list-group">
  <c:forEach items="${productType}" var="cat">
    <a href="/category${cat}" class="list-group-item">${cat}</a>
  </c:forEach>
</div>
