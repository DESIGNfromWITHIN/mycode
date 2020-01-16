<section id="{{ section_id }}" class="section-content {{ textcolor }} {{ headercolor }} {{ iconcolor }}" style="background-image: url({{ image }}); background-color:{{bg}};">
	{% if overlay %}
	<div class="overlay op{{olopacity}}" style="background: linear-gradient({{ overlay_angle }}deg, {{ overlay_start_color }} 0%, {{ overlay_end_color }} 100%);"></div>
	{% endif %}
	<div class="container">
		<div class="row {{rowpy}} {{rowmy}} {{ text_align }}">
		    {% for i in 0..(columns - 1) %}
		    <div class="col-{{ colwidth }} col-sm-{{ colsmwidth }} col-md-{{ colmdwidth }} col-lg-{{ collgwidth }} {{padding}}">
				<img src="http://via.placeholder.com/600x600" data-fred-name="content_image_{{i}}" data-fred-media-source="Uploads">
		    </div>
		    {% endfor %}
		</div>
	</div>
</section>
<section>
	<div class="container">
		<div class="row">
			<div class="col-12">
				<div class="owl-carousel owl-theme" data-fred-on-setting-change="owlCarousel">
				    <div class="item"><h4>1</h4></div>
				    <div class="item"><h4>2</h4></div>
				    <div class="item"><h4>3</h4></div>
				    <div class="item"><h4>4</h4></div>
				    <div class="item"><h4>5</h4></div>
				    <div class="item"><h4>6</h4></div>
				    <div class="item"><h4>7</h4></div>
				    <div class="item"><h4>8</h4></div>
				    <div class="item"><h4>9</h4></div>
				    <div class="item"><h4>10</h4></div>
				    <div class="item"><h4>11</h4></div>
				    <div class="item"><h4>12</h4></div>
				</div>
			</div>
		</div>
	</div>
</section>