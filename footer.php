 <style>
#footer {
  background: #15161D;
  color: #B9BABC;
}

#bottom-footer {
  background: #1E1F29;
}

.footer {
  margin: 30px 0px;
}

.footer .footer-title {
  color: #FFF;
  text-transform: uppercase;
  font-size: 18px;
  margin: 0px 0px 30px;
}

.footer-links li+li {
  margin-top: 15px;
}

.footer-links li a {
  color: whitesmoke;
}

.footer-links li i {
  margin-right: 15px;
  color: #D10024;
  width: 14px;
  text-align: center;
}

.footer-links li a:hover {
  color: #E71C23;
}
</style>     
<footer id="footer">
    <div class="section">
        <div class="container">
            <div class="row">
				<div class="col-md-3 col-xs-6">
				    <div class="footer">
                        <h3 class="footer-title">About Us</h3>
						<p style="color:whitesmoke">This website is for online shopping with special features. The main objective of this New Wave website is to give a facility that clients or buyers can request their desired designs. They can send a request in the form of text, images, or sketches through the Request Button available on the New Wave website.</p>
                    </div>
                </div>
                <div class="col-md-6 text-center">
                    <div class="footer">
                        <h3 class="footer-title">Categories</h3>
                        <ul class="footer-links">
				            <li><a href="#">Men</a></li>
                            <li><a href="#">Women</a></li>
                            <li><a href="#">Kids</a></li>
                            <li><a href="#">Mobiles</a></li>
                            <li><a href="#">Laptops</a></li>
                        </ul>
                    </div>
				</div>
                <div class="col-md-3 col-xs-6">
				    <div class="footer">
                        <h3 class="footer-title">Contact Us</h3>
                        <ul class="footer-links">
                            <li><a href="#"><i class="fa fa-map-marker"></i>Vijayawada, A.P</a></li>
				            <li><a href="#"><i class="fa fa-phone"></i>+91-6304182136</a></li>
                            <li><a href="#"><i class="fa fa-envelope-o"></i>neelapusri@gmail.com</a></li>
                        </ul>
				    </div>
                </div>
				<div class="clearfix visible-xs"></div>
            </div>
        </div>
    </div>
</footer>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/nouislider.min.js"></script>
<script src="js/jquery.zoom.min.js"></script>
<script src="js/main.js"></script>
<script src="js/actions.js"></script>
<script src="js/sweetalert.min"></script>
<script src="js/jquery.payform.min.js" charset="utf-8"></script>
<script src="js/script.js"></script>
<script>
    var c = 0;
    function menu(){
        if(c % 2 == 0) {
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu active";    
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg active";    
            c++; 
        }
        else{
            document.querySelector('.cont_drobpdown_menu').className = "cont_drobpdown_menu disable";        
            document.querySelector('.cont_icon_trg').className = "cont_icon_trg disable";        
            c++;
        }
    }
</script>
<script type="text/javascript">
    $('.block2-btn-addcart').each(function(){
        var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
        $(this).on('click', function(){
            swal(nameProduct, "is added to cart !", "success");
			});
		});
		$('.block2-btn-addwishlist').each(function(){
			var nameProduct = $(this).parent().parent().parent().find('.block2-name').html();
			$(this).on('click', function(){
				swal(nameProduct, "is added to wishlist !", "success");
			});
		});
</script>
	