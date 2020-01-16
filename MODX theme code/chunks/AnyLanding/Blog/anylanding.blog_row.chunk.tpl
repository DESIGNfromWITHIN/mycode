<article role="article" class="mb-5 [[++fred.anylanding.use_card_styling:is=`true`:then=`card`]]">
	[[pthumb? &input=`[[+blogMainImage]]` &options=`w=1200&h=600&zc=c&q=75` &toPlaceholder=`thumb`]]
	[[pthumb? &input=`[[+blogMainImage]]` &options=`w=2400&h=1200&zc=c&q=75` &toPlaceholder=`thumb2x`]]
	<a href="[[~[[+id]]]]">
		<picture class="blog_main_image [[++fred.anylanding.use_card_styling:is=`true`:then=`card-img-top`:else=`mb-1`]]">
			<source media="(min-width: 0px)" srcset="[[+thumb]], [[+thumb2x]] 2x">
			<img src="[[+thumb]]" srcset="[[+thumb2x]] 2x" alt="[[+pagetitle]]">
		</picture>
	</a>
	<section class="[[++fred.anylanding.use_card_styling:is=`true`:then=`card-body`:else=`m-3`]]">
		<h2 class="[[++fred.anylanding.use_card_styling:is=`true`:then=`card-title`]]"><a href="[[~[[+id]]]]">[[+pagetitle]]</a></h2>
		<p>[[+introtext]]</p>
		<p><a href="[[~[[+id]]]]" class="btn btn-primary">Read more</a></p>
	</section>
	<footer role="contentinfo" class="anylanding_blog_contentinfo text-muted [[++fred.anylanding.use_card_styling:is=`true`:then=`card-footer`:else=`m-3`]]">
		[[++fred.anylanding.use_card_styling:is=`true`:then=``:else=`<hr>`]]
        <span>[[++fred.anylanding.use_blog_icons:is=`true`:then=`<i class="far fa-user"></i>`]] Posted by [[+createdby:userinfo=`fullname`]] </span>
        <span>[[++fred.anylanding.use_blog_icons:is=`true`:then=`<i class="far fa-calendar"></i>`]] on <time itemprop="published" pubdate datetime="[[+publishedon:date=`%Y-%m-%d`]]">[[+publishedon:date=`%d %b %Y`]]</time> </span>
        <span>[[++fred.anylanding.use_blog_icons:is=`true`:then=`<i class="far fa-folder"></i>`]] in <a rel="tag" href="#">Design</a></span>
    </footer>
</article>