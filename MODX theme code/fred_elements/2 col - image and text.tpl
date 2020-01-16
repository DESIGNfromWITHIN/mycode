<section id="{{ section_id }}" class="section-content {{ textcolor }} {{ headercolor }}" style="background-image: url({{ image }}); background-color:{{bg}};">
	{% if overlay %}
	<div class="overlay op{{olopacity}}" style="background: linear-gradient({{ overlay_angle }}deg, {{ overlay_start_color }} 0%, {{ overlay_end_color }} 100%);"></div>
	{% endif %}
	<div class="container">
		<div class="row {{text_align}} {{rowpy}} {{rowmy}} d-flex">
		    <div class="offset-md-{{ col_offset }} col-md-{{ col_1_size }} {{ change_order ? 'order-last'}} {{padding}}">
		        <img src="http://via.placeholder.com/900x600" data-fred-name="content_image" data-fred-media-source="Uploads">
		    </div>
		    <div class="{{vertical_align}} offset-md-{{ col_2_offset }} col-md-{{ col_2_size }} {{ change_order ? 'order-first'}} {{margin}} {{mx}} {{my}} {{ml}} {{mr}} {{mt}} {{mb}} {{padding}}" data-fred-name="rte-sidebar" data-fred-rte="true" data-fred-rte-config="AnyLanding RTE">
		        <h3>Sidebar header title</h3>
		        <p>Default Content for this sidebar richt text field.</p>
		    </div>
		</div>
	</div>
</section>