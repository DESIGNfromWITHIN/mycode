<div id="{{section_id}}" class="{{use_container ? 'container'}} {% if image %}page_bg{% endif %} {{margin_top_row}} {{margin_bottom_row}} row_section" style="background-image: url({{image}}); {% if force_row_height %}height:{{row_height}}vh;{% endif %}">
	{% if overlay %}
	<div class="overlay op{{olopacity}} {{bg_color}}"></div>
	{% endif %}
	<div class="row {{padding_row}} {{row_text_align}} {{textcolor}} {{headercolor}}">
		<div class="offset-sm-{{col_1_offset_sm}} offset-md-{{col_1_offset_md}} offset-lg-{{col_1_offset_lg}} offset-xl-{{col_1_offset_xl}} col-sm-{{col_1_size_sm}} col-md-{{col_1_size_md}} col-lg-{{col_1_size_lg}} col-xl-{{col_1_size_xl}} {{centerer_vertically_col_1 ? 'my-auto'}}">
			<div data-fred-dropzone="three_col_one">
        		<div class="fred_placeholder">
        			<p data-fred-render="false">Drop elements here</p>
        		</div>
        	</div>
		</div>
		<div class="offset-sm-{{col_2_offset_sm}} offset-md-{{col_2_offset_md}} offset-lg-{{col_2_offset_lg}} offset-xl-{{col_2_offset_xl}} col-sm-{{col_2_size_sm}} col-md-{{col_2_size_md}} col-lg-{{col_2_size_lg}} col-xl-{{col_2_size_xl}} {{centerer_vertically_col_2 ? 'my-auto'}}">
			<div data-fred-dropzone="three_col_two">
        		<div class="fred_placeholder">
        			<p data-fred-render="false">Drop elements here</p>
        		</div>
        	</div>
		</div>
		<div class="offset-sm-{{col_3_offset_sm}} offset-md-{{col_3_offset_md}} offset-lg-{{col_3_offset_lg}} offset-xl-{{col_3_offset_xl}} col-sm-{{col_3_size_sm}} col-md-{{col_3_size_md}} col-lg-{{col_3_size_lg}} col-xl-{{col_3_size_xl}} {{centerer_vertically_col_3 ? 'my-auto'}}">
			<div data-fred-dropzone="three_col_three">
        		<div class="fred_placeholder">
        			<p data-fred-render="false">Drop elements here</p>
        		</div>
        	</div>
		</div>
	</div>
</div>