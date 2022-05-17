/**
 * 
 */
$(function(){
	switch(menu){
	case 'Contact Us':
		$('#contact').addClass('active');
		break;
	case 'About Us':
		$('#about').addClass('active');
		break;
	case 'Admin':
		$('#admin').addClass('active');
		break;
	case 'All Products':
		$('#listproduct').addClass('active');
		break;
	default:
		$('#home').addClass('active');
	}
});