<div class="container">
	<div class="row">

<html>
<head>
 <link href="css/jquery.dataTables.mina.css" rel="stylesheet"/>
<script src="js/jquery-3.3.1a.js"></script>
        <script src="js/jquery.dataTables.mina.js"></script>
  <script type="text/javascript">
  $(document).ready(function() {
	    var table = $('#example').DataTable();
	 
	    $('#example tbody').on( 'click', 'tr', function () {
	        if ( $(this).hasClass('selected') ) {
	            $(this).removeClass('selected');
	        }
	        else {
	            table.$('tr.selected').removeClass('selected');
	            $(this).addClass('selected');
	        }
	    } );
	 
	    $('#button').click( function () {
	        table.row('.selected').remove().draw( false );
	    } );
	} );
  </script>
</head>
<body>


<table id="example" class="display" style="width:100%">
			<thead>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Category</th>
					<th>Stock</th>
					<th>Description</th>
					<th>Image</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${cate}" var="cat">
					<tr>
						<td>${cat.id}</td>
						<td>${cat.name}</td>
						<td>${cat.price}</td>
						<td>${cat.typeOfProduct}</td>
						<td>${cat.quantity}</td>
						<td>${cat.discription}</td>
						<td><img src="upload/${cat.imageName}" width="60px"
							height="40px" /></td>

					</tr>

				</c:forEach>


			</tbody>
			<tfoot>
				<tr>
					<th>Id</th>
					<th>Name</th>
					<th>Price</th>
					<th>Category</th>
					<th>Stock</th>
					<th>Description</th>
					<th>Image</th>
				</tr>
			</tfoot>
		</table>
 

</body>
</html>

	</div>
</div>