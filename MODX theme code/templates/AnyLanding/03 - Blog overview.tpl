[[$head.chunk]]
  <body>
    [[$header.chunk]]
    <div id="blog_container" style="margin-top:[[++fred.anylanding.logo_height:add=`34`]]px;">
    	<div id="page_heading" data-fred-dropzone="page_heading">
    		[[*page_heading]]
    	</div>
		<div class="container">
			<div class="row">
				<div class="col-sm-12 col-md-8 col-lg-8">
					[[*content]]
					[[pdoResources?
					    &parents=`[[++fred.anylanding.blog_page_id]]`
					    &depth=`0`
					    &limit=`0`
					    &includeTVs=`blogMainImage,blogMainImageAlt`
					    &prepareTVs=`1`
					    &processTVs=`1`
					    &tvPrefix=``
					    &tpl=`anylanding.blog_row.chunk`
					]]
				</div>
				<div class="col-sm-12 col-md-4 col-lg-4">
					<h3>Sidebar</h3>
				</div>
			</div>
		</div>
    </div>
[[$footer.chunk]]