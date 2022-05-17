<%@taglib uri="http://www.springframework.org/tags/form" prefix="s"%>

<div class="container">
	<div class="row">


		<head>
<link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet"
	type="text/css">
<!-- Page level plugin CSS-->
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<!-- Custom styles for this template-->
<link href="css/sb-admin.css" rel="stylesheet">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<!-- Bootstrap core JavaScript-->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Page level plugin JavaScript-->
<script src="vendor/chart.js/Chart.min.js"></script>
<script src="vendor/datatables/jquery.dataTables.js"></script>
<script src="vendor/datatables/dataTables.bootstrap4.js"></script>

<!-- Custom scripts for all pages-->
<script src="js/sb-admin.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css"
	rel="stylesheet" />
<!-- Demo scripts for this page-->
<script src="js/demo/datatables-demo.js"></script>
<script src="js/demo/chart-area-demo.js"></script>
<style>
#btnSearch, #btnClear {
	display: inline-block;
	vertical-align: top;
}
</style>
		</head>

		<br> <br>
		<div class="container">
			<div class="row">

				<div class="col-md-offset-2 col-md-8">
					<div class="panel panel-primary">
						<div class="panel-heading">
							<h4>
								<b>Product Entry 
							</h4>
						</div>
						<div class="panel-body"></div>
						<form class="form-horizontal" action="/addproduct" method="post"
							enctype="multipart/form-data">



							<div class="form-group">
								<label class="control-label col-md-3" for="name">Name:</label>
								<div class="col-md-8">
									<input type="text" id="name" name="name"
										placeholder="Enter name of product" class="form-control" />

								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-md-3" for="name">Quantity:</label>
								<div class="col-md-8">
									<input type="number" id="name" name="quantity"
										placeholder="Enter Stock" class="form-control" />

								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3" for="name">Price:</label>
								<div class="col-md-8">
									<input type="number" id="name" name="price"
										placeholder="Enter Product price" class="form-control" />

								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-md-3" for="name">Description:</label>
								<div class="col-md-8">


									<textarea class="form-control" rows="5" name="discription"
										id="comment"></textarea>
								</div>

							</div>



							<div class="form-group">
								<label class="control-label col-md-3" for="name">Category:</label>
								<div class="col-md-8">
									<select type="text" id="name" name="typeOfProduct"
										class="form-control">
										<option value="Laptop">Laptop</option>
										<option value="Mobile">Mobile</option>
										<option value="T.V.">T.V</option>
										<option value="Furniture">Furniture</option>
										<option value="Maternity Wear">Maternity Wear</option>
										<option value="Video Games">Video Games</option>
										<option value="Phone Accessories">Phone Accessories</option>
										<option value="Watches">Watches</option>
										<option value="LEGOs">LEGOs</option>
										<option value="Videos and Courses">Videos and Courses</option>
										<option value="Bags">Bags</option>
										<option value="eBooks">eBooks</option>
										<option value="Portable Lights">Portable Lights</option>
										<option value="Custom-made Jewelry">Custom-made
											Jewelry</option>
										<option value="Photographs">Photographs</option>
										<option value="Books">Books</option>
										<option value="Rock-n-Roll Apparel">Rock-n-Roll
											Apparel</option>
									</select>

								</div>
							</div>





							<div class="form-group">
								<label class="control-label col-md-3" for="name">Upload
									Image</label>
								<div class="col-md-8">
									<input type="file" name="file" />
								</div>
							</div>



							<div class="row">
								<div class="col-sm-12 text-center">
									<button id="btnSearch"
										class="btn btn-primary btn-md center-block"
										Style="width: 100px;">Submit</button>
									<button id="btnClear"
										class="btn btn-danger btn-md center-block"
										Style="width: 100px;">Cancel</button>
								</div>
							</div>


						</form>


					</div>
				</div>

			</div>
		</div>


	</div>
</div>