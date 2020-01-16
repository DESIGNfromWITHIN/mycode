<body class="relative">
	<header class="section-header">
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<nav class="navbar navbar-landing navbar-expand-lg">
						<div class="navbar-header">
							<a href="[[~[[++site_start]]]]" class="navbar-brand mr-auto">
								<img class="logo" src="[[++fred.anylanding.logo_path]]">
								[[++fred.anylanding.logo_show_name:is=`true`:then=`
								<h2 class="logo-text">[[++site_name]]</h2>
								`]]
							</a>
						</div>
						<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
						[[pdoMenu?
							&parents=`0`
							&level=`2`
							&tplOuter=`nav_main_outer.chunk`
							&tpl=`nav_main_row.chunk`
							&tplParentRow=`nav_main_row_parent.chunk`
							&tplInnerRow=`nav_main_row_inner.chunk`
							&tplInner=`nav_main_inner.chunk`
						]]
					</nav>
				</div>
			</div>
		</div>
	</header>