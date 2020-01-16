<div id="{{section_id}}" class="{% if image %}page_bg{% endif %} {{margin_top_row}} {{margin_bottom_row}}" style="background-image: url({{image}}); {% if force_row_height %}height:{{row_height}}vh;{% endif %}">
	{% if overlay %}
	<div class="overlay op{{olopacity}} {{bg_color}}"></div>
	{% endif %}
	<div class="{{use_container ? 'container'}}">
		<div class="row {{padding_row}} {{row_text_align}} {{textcolor}} {{headercolor}}">
		    <div class="{{vertical_align}} offset-md-{{ col_offset }} col-md-{{ col_1_size }} {{padding}}">
		        <div id="accordion">
		        	{% for i in 0..(accordions - 1) %}
					<div class="card">
						<div class="card-header" id="headingOne">
							<h5 class="mb-0">
								<button class="btn btn-link" data-toggle="collapse" data-target="#collapse{{i}}" aria-expanded="false" aria-controls="collapse{{i}}" data-fred-name="accordion_title_{{i}}" contenteditable="true">
									Accordeon header {{i}}
								</button>
							</h5>
						</div>
						<div id="collapse{{i}}" class="collapse" aria-labelledby="heading{{i}}" data-parent="#accordion">
							<div class="card-body" data-fred-name="accordion_{{i}}" data-fred-rte="true" data-fred-rte-config="simple">
								<p>Accordeon content {{i}} Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et.</p>
							</div>
						</div>
					</div>
					{% endfor %}
				</div>
		    </div>
		    <div class="{{vertical_align}} offset-md-{{ col_2_offset }} col-md-{{ col_2_size }} {{ change_order ? 'order-first'}} {{margin}} {{mx}} {{my}} {{ml}} {{mr}} {{mt}} {{mb}} {{padding}}" data-fred-name="rte-sidebar" data-fred-rte="true" data-fred-rte-config="simple">
		        <h3>Sidebar header title</h3>
		        <p>Default Content for this sidebar richt text field.</p>
		    </div>
		</div>
	</div>
</div>