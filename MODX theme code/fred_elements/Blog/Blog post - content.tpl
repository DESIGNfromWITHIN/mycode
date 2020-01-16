<div class="{{ use_container ? 'container' }}">
	<div class="row {{rowp}} {{rowm}}">
		<div class="col-sm-12 col-md-9 col-lg-9">
			<div id="{{section_id}}">
				<h1 data-fred-name="blog_longtitle" data-fred-target="longtitle" data-fred-editable="true" data-fred-rte="true" data-fred-rte-config="simple">This is a stardard post with preview image</h1>
				[[$anylanding.blog_date.chunk]]
				<div class="blog_main_image">
					<img src="http://via.placeholder.com/1820x900" alt="Default Alt" data-fred-name="Blog main image" data-fred-attrs="alt,title">
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
			<div data-fred-name="blog_post_sidebar" data-fred-editable="true" data-fred-rte="true">
				<h3>Sidebar</h3>
				<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur lectus lacus, rutrum sit amet placerat et, bibendum nec mauris</p>
			</div>
		</div>
	</div>
</div>