<section id="{{ section_id }}" class="icon_row section-content {{icon_logo_grey}} {{ textcolor }} {{ headercolor }} {{ iconcolor }}" style="background-image: url({{ image }}); background-color:{{bg}};">
	{% if overlay %}
	<div class="overlay op{{olopacity}}" style="background: linear-gradient({{ overlay_angle }}deg, {{ overlay_start_color }} 0%, {{ overlay_end_color }} 100%);"></div>
	{% endif %}
	<div class="{{icon_slider_container}}">
		<div class="row {{rowpy}} {{rowmy}} {{ text_align }}">
		    <div class="col-{{icon_slider_width}} offset-md-{{icon_slider_col_offset}} {{padding}}" data-fred-on-drop="owlCarouselReset" data-fred-on-setting-change="owlCarouselReset">
				<div class="owl-carousel owl-theme" data-responsive='{"0":{"items":"{{icon_slider_icons_small}}"},"600":{"items":"{{icon_slider_icons_medium}}"},"1000":{"items":"{{icon_slider_icons_large}}"}}'>
					{% for i in 0..(icon_slider_icons - 1) %}
				    <div class="item">
				    	<img src="http://via.placeholder.com/600x600" data-fred-name="icon_row_img_{{i}}" data-fred-media-source="Uploads">
				    </div>
				    {% endfor %}
				</div>
		    </div>
		</div>
	</div>
</section>