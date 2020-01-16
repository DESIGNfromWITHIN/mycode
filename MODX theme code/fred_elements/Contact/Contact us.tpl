<section id="{{ section_id }}" class="section-content {{ textcolor }} {{ headercolor }}" style="background-image: url({{ image }}); background-color:{{bg}};">
	{% if overlay %}
	<div class="overlay op{{olopacity}}" style="background: linear-gradient({{ overlay_angle }}deg, {{ overlay_start_color }} 0%, {{ overlay_end_color }} 100%);"></div>
	{% endif %}
	<div class="container">
		<div class="row {{rowpy}} {{rowmy}} {{ text_align }}">
		    <div class="offset-md-{{ col_offset }} col-md-{{ col_1_size }} {{ change_order ? 'order-last'}} {{padding}}">
		    	<div class="{{ contact_card }} {{ contact_card ? ' card'}}">
		        	[[$contact_form_outer.chunk]]
		        </div>
		    </div>
		    <div class="offset-md-{{ col_2_offset }} col-md-{{ col_2_size }} {{ change_order ? 'order-first'}} {{margin}} {{mx}} {{my}} {{ml}} {{mr}} {{mt}} {{mb}} {{padding}}" data-fred-name="rte-sidebar" data-fred-rte="true" data-fred-rte-config="simple">
		        <h3>Sidebar header title</h3>
		        <p>Default Content for this sidebar richt text field.</p>
		    </div>
		</div>
	</div>
</section>