		<footer class="[[++fred.anylanding.footer__text_color]]">
			<div class="section-footer [[++fred.anylanding.footer__bg_color]]">
				<div class="container">
					<section class="footer-bottom row">
						<div class="col-sm-12 col-md-6 col-lg-5">
							[[++fred.anylanding.footer__content_01]]
							<div class="btn-group white">
							    [[++fred.anylanding.facebook:notempty=`<a class="btn btn-facebook" title="Facebook" target="_blank" href="[[++fred.anylanding.facebook]]"><i class="fab fa-facebook-f  fa-fw"></i></a>`]]
							    [[++fred.anylanding.instagram:notempty=`<a class="btn btn-instagram" title="Instagram" target="_blank" href="[[++fred.anylanding.instagram]]"><i class="fab fa-instagram  fa-fw"></i></a>`]]
							    [[++fred.anylanding.youtube:notempty=`<a class="btn btn-youtube" title="Youtube" target="_blank" href="[[++fred.anylanding.youtube]]"><i class="fab fa-youtube  fa-fw"></i></a>`]]
							    [[++fred.anylanding.twitter:notempty=`<a class="btn btn-twitter" title="Twitter" target="_blank" href="[[++fred.anylanding.twitter]]"><i class="fab fa-twitter  fa-fw"></i></a>`]]
							    [[++fred.anylanding.linkedin:notempty=`<a class="btn btn-linkedin" title="LinkedIn" target="_blank" href="[[++fred.anylanding.linkedin]]"><i class="fab fa-linkedin-in fa-fw"></i></a>`]]
							    [[++fred.anylanding.pinterest:notempty=`<a class="btn btn-pinterest" title="Pinterest" target="_blank" href="[[++fred.anylanding.pinterest]]"><i class="fab fa-pinterest fa-fw"></i></a>`]]
							</div>
						</div>
						<div class="col-sm-12 col-md-6 col-lg-4">
							<h5>[[++fred.anylanding.footer__nav_01_start_title]]</h5>
							[[pdoMenu?
							    &parents=`[[++fred.anylanding.footer__nav_01_start]]`
							    &level=`1`
							    &limit=`0`
							    &tplOuter=`@INLINE <ul class="[[+classnames]] list-unstyled">[[+wrapper]]</ul>`
							]]
						</div>
						<div class="col-sm-12 col-md-6 col-lg-3"> 
							[[++fred.anylanding.footer__content_02]]
						</div>
					</section>
				</div>
			</div>
			<div class="section-footer footer-bottom-low [[++fred.anylanding.footer__bg_color_2]]">
				<div class="container">
					<section class="footer-bottom row text-center">
						<div class="col-sm-12 col-md-12 col-lg-12">
							[[++fred.anylanding.footer__content_03]]
						</div>
					</section>
				</div>
			</div>
		</footer>
		<script type='text/javascript' src='assets/themes/anylanding/assets/production/main.js'></script>
	</body>
</html>