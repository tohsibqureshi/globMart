<p class="lead">Glob Mart</p>
<div class="list-group">
  <c:forEach items="${cate}" var="cat">
    <a href="/show/category/${cat.id}" class="list-group-item">${cat.name}</a>
  </c:forEach>
</div>
