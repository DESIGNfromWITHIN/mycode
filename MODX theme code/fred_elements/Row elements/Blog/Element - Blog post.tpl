<div class="{{ use_container ? 'container' }}">
	<div class="row {{rowp}} {{rowm}}">
		<div class="col-sm-12 col-md-9 col-lg-9">
			<div id="{{section_id}}">
				<h1 data-fred-name="blog_pagetitle" data-fred-target="pagetitle" data-fred-editable="true" data-fred-rte="true" data-fred-rte-config="simple">This is a stardard post with preview image</h1>
				[[$anylanding.blog_date.chunk]]
				<div class="blog_main_image">
					[[pthumb? &input=`{{blogMainImage}}` &options=`w=1200&h=600&zc=c&q=75` &toPlaceholder=`thumb`]]
					[[pthumb? &input=`{{blogMainImage}}` &options=`w=2400&h=1200&zc=c&q=75` &toPlaceholder=`thumb2x`]]
					[[pthumb? &input=`{{blogMainImageSmall}}` &options=`w=800&h=600&zc=c&q=75` &toPlaceholder=`thumbSmall`]]
					[[pthumb? &input=`{{blogMainImageSmall}}` &options=`w=1600&h=1200&zc=c&q=75` &toPlaceholder=`thumbSmall2x`]]
					<picture>
						<source media="(min-width: 992px)" srcset="[[+thumb]], [[+thumb2x]] 2x">
						<source media="(min-width: 0px)" srcset="[[+thumbSmall]], [[+thumbSmall2x]] 2x">
						<img src="[[+thumb]]" srcset="[[+thumb2x]] 2x" alt="{{blog_main_image_alt}}" data-fred-name="blogMainImage" data-fred-target="tv_blogMainImage" data-fred-editable="false">
					</picture>
				</div>
				<p><b data-fred-name="blog_introtext" data-fred-target="introtext" data-fred-editable="true" data-fred-rte="true" data-fred-rte-config="simple">Lorem ipsum dolor sit amet, consectetur adipiscing elit. </b></p>
				<div data-fred-name="blog_content" data-fred-editable="true" data-fred-rte="true">
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus lacus, rutrum sit amet placerat et, bibendum nec mauris</p>
				</div>
			</div>
			<hr>
			<p><a href="[[~[[++fred.anylanding.blog_page_id]]]]" class="button">Back to the overview</a></p>
		</div>
		<div class="col-sm-12 col-md-3 col-lg-3">
			<div id="blog_post_sidebar">
				<h3>Sidebar</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus lacus, rutrum sit amet placerat et, bibendum nec mauris</p>
			</div>
		</div>
	</div>
</div>