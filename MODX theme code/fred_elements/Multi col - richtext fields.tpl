<section id="{{ section_id }}" class="section-content {{ textcolor }} {{ headercolor }} {{ iconcolor }}" style="background-image: url({{ image }}); background-color:{{bg}};">
	{% if overlay %}
	<div class="overlay op{{olopacity}}" style="background: linear-gradient({{ overlay_angle }}deg, {{ overlay_start_color }} 0%, {{ overlay_end_color }} 100%);"></div>
	{% endif %}
	<div class="container">
		<div class="row {{rowpy}} {{rowmy}} {{text_align}} d-flex">
		    {% for i in 0..(columns - 1) %}
		    <div class="{{vertical_align}} col-{{colwidth}} col-sm-{{colsmwidth}} col-md-{{colmdwidth}} col-lg-{{ collgwidth }} {{padding}}">
		    	{% if icon %}
		    	<i class="far fa-gem fa-4x" data-fred-name="icon_{{i}}"></i>
		    	{% endif %}
		    	<div data-fred-name="rte-content_{{i}}" data-fred-rte="true" data-fred-rte-config="simple">
		        	<h2>Header title {{ collgwidth }}</h2>
		        	<p>Default Content for this richt text field.</p>
		        </div>
		    </div>
		    {% endfor %}
		</div>
	</div>
</section>