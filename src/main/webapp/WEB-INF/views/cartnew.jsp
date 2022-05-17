<div class="container">
<div class="row">




<link href="css/myapp.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<div class="container">
	<table id="cart" class="table table-hover table-condensed">
    				<thead>
						<tr>
							<th style="width:50%">Product</th>
							<th style="width:10%">Price</th>
							<th style="width:8%">Quantity</th>
							<th style="width:22%" class="text-center">Subtotal</th>
							<th style="width:10%"></th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${cartItem}" var="cat">
						<tr>
							<td data-th="Product">
								<div class="row">
									<div class="col-sm-2 hidden-xs"><img src="upload/${cat.imageName}" alt="..." class="img-responsive"/></div>
									<div class="col-sm-10">
										<h4 class="nomargin">${cat.name}</h4>
										<p>${cat.discription}</p>
									</div>
								</div>
							</td>
							<td data-th="Price">$${cat.price}</td>
							<td data-th="Quantity">
								<input type="number" class="form-control text-center" value="1">
							</td>
							<td data-th="Subtotal" class="text-center">${q}${cat.price}</td>
							<td class="actions" data-th="">
								<button onclick="location.href='/${cat.name}'"  class="btn btn-info btn-sm"><i class="fa fa-refresh"></i></button>
								
								<button onclick="location.href='/remove${cat.name}'"class="btn btn-danger btn-sm"><i class="fa fa-trash-o"></i></button>								
							</td>
						</tr>
					</c:forEach>
					</tbody>
				
						<tr class="visible-xs">
							<td class="text-center"><strong></strong></td>
						</tr>
						
						<tr>
							<td><a href="/" class="btn btn-warning"><i class="fa fa-angle-left"></i> Continue Shopping</a></td>
							<td colspan="2" class="hidden-xs"></td>
							<td class="hidden-xs text-center"><strong>${cartTotal}</strong></td>
							<td><a href="/addressform" class="btn btn-success btn-block">Checkout <i class="fa fa-angle-right"></i></a></td>
						</tr>
					</tfoot>
				</table>
</div>

</div>
</div>