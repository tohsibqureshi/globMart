<div class="container">
	<div class="row">

		<div class="container">
			<div class="row">

				<script src="js/jquery-3.3.1.js"></script>
				<script src="js/jquery.dataTables.min.js"></script>
				<link href="css/jquery.dataTables.min.css" rel="stylesheet" />
				<script>
					$(document).ready(
							function() {
								var table = $('#example').DataTable();

								$('#example tbody').on('click', 'tr',
										function() {
											$(this).toggleClass('selected');
										});

								$('#button').click(
										function() {
											alert(table.rows('.selected')
													.data().length
													+ ' row(s) selected');
										});
							});
				</script>

				<form action="addproduct" method="post"
					enctype="multipart/form-data">

					<table id="example" class="display">
						<thead>
							<tr>

								<th>Name:</th>
								<td>${item.name}</td>

							</tr>
							<tr>

								<th>Price:</th>
								<td>${item.price}</td>

							</tr>
							<tr>

								<th></th>
								<td></td>
								<img src="upload/${item.imageName}" width="500" height="300" />
							</tr>
							<tr>

								<th>Stock:</th>
								<td>${item.quantity}</td>

							</tr>

							<tr>

								<th>Description:</th>
								<td>${item.discription}</td>

							</tr>

						</thead>
						<tbody>


							<tr>
							
							
							
							
			
								<center>
									<a href="/${item.name}"><input type="button"
										value="Add To Cart" class="btn btn-primary"></a>
								</center>
							</tr>


						</tbody>

					</table>

				</form>
				<div id="disqus_thread"></div>
				<script>
					/**
					 *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
					 *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
					/*
					 var disqus_config = function () {
					 this.page.url = PAGE_URL;  // Replace PAGE_URL with your page's canonical URL variable
					 this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page's unique identifier variable
					 };
					 */
					(function() { // DON'T EDIT BELOW THIS LINE
						var d = document, s = d.createElement('script');
						s.src = 'https://online-shop-my-tohsib.disqus.com/embed.js';
						s.setAttribute('data-timestamp', +new Date());
						(d.head || d.body).appendChild(s);
					})();
				</script>
				<noscript>
					Please enable JavaScript to view the <a
						href="#">comments powered byTohsib Qureshi.</a>
				</noscript>


			</div>
		</div>



	</div>
</div>