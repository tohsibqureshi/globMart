<head>
 <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <!-- Page level plugin CSS-->
  <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
  <!-- Custom styles for this template-->
  <link href="css/sb-admin.css" rel="stylesheet">
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet"/>
  <!-- Demo scripts for this page-->
  <script src="js/demo/datatables-demo.js"></script>
  <script src="js/demo/chart-area-demo.js"></script>
  <style>
  #btnSearch,
#btnClear{
    display: inline-block;
    vertical-align: top;
}
  </style>
</head>

<%@include file="./share/sidebar.jsp" %>
<br>
<br>
<div class="container">
	<div class="row">

		<div class="col-md-offset-2 col-md-8">
			<div class="panel panel-primary">
				<div class="panel-heading">
					<h4><b>Create Issue</h4>
				</div>
				<div class="panel-body"></div>
<form class="form-horizontal" action="addproducts" method="post" enctype="multipart/form-data">


<div class="form-group">
<label class="control-label col-md-3" for="name">Project:</label>
<div class="col-md-8">
<select type="text"  id="name" class="form-control">
<option>Bug Tracking and Project Monitoring Tool</option>
</select>

</div>
</div>
<div class="form-group">
<label class="control-label col-md-3" for="name">Issue Type:</label>
<div class="col-md-8">
<select type="text"  id="name" class="form-control">
<option>Bug</option>
<option>Feature</option>
</select>

</div>
</div>

<div class="form-group">
<label class="control-label col-md-3" for="name">Summary:</label>
<div class="col-md-8">
<input type="text"  id="name" placeholder="Error during integration testing" class="form-control"/>

</div>
</div>


<div class="form-group">
<label class="control-label col-md-3" for="name">Desciptoin:</label>
<div class="col-md-8">

 
  <textarea class="form-control" rows="5" id="comment"></textarea>
</div> 

</div>



<div class="form-group">
<label class="control-label col-md-3" for="name">Priority:</label>
<div class="col-md-8">
<select type="text"  id="name" class="form-control">
<option>Major</option>
<option>Minor</option>
<option>Critical</option>
<option>Blocker</option>
</select>

</div>
</div>

<div class="form-group">
<label class="control-label col-md-3" for="name">Due Date</label>
<div class="col-md-8">
<input class="form-control"  type="date"  itemLabel="name" itemValue="id"/>
</div>
</div>


<div class="form-group">
<label class="control-label col-md-3" for="name">Assignee</label>
<div class="col-md-8">
<select class="form-control" id="categoryId"  itemLabel="name" itemValue="id">
<option>Automatic<option>
</select>

</div>

</div>


<div class="form-group">
<label class="control-label col-md-3" for="name">Reporter</label>
<div class="col-md-8">
<select class="form-control" id="categoryId"  itemLabel="name" itemValue="id">
<option>Rajkumar</option>
<option>Shailesh</option>
<option>Rahul</option>
</select>
</div>
</div>



<div class="form-group">
<label class="control-label col-md-3" for="name">Screen Shots</label>
<div class="col-md-8">
<input type="file" />
</div>
</div>



<div class="row">
    <div class="col-sm-12 text-center">
        <button id="btnSearch" class="btn btn-primary btn-md center-block" Style="width: 100px;">Create</button>
         <button id="btnClear" class="btn btn-danger btn-md center-block" Style="width: 100px;">Cancel</button>
     </div>
</div>


</form>


			</div>
		</div>

	</div>
</div>

<%@ include file="./share/footer.jsp"%>