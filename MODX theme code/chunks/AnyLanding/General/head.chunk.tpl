<!doctype html>
<html class="no-js" lang="[[++cultureKey]]" dir="ltr">
	<head>
		<base href="[[!++site_url]]" />
		[[*id:is=`[[++site_start]]`:then=`<title>[[*longtitle:default=`[[++site_name]]`]]</title>`:default=`<title>[[*longtitle:default=`[[*pagetitle]]`]] | [[++site_name]]</title>`]]
		[[*description:notempty=`
		<meta name="description" content="[[*description]]"/>
		`]]
		<meta charset="utf-8">
		<meta http-equiv="x-ua-compatible" content="ie=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
		<meta name="robots" content="[[+seoTab.robotsTag]]">
		<meta property="og:title" content="[[*longtitle:default=`[[*pagetitle]] | [[++site_name]]`]]" />
		<meta property="og:type" content="[[*id:eq=`[[++site_start]]`:then=`website`:else=`article`]]" />
		<meta property="og:url" content="[[~[[*id]]? &scheme=`full`]]" />
		[[*social_media_image:notequalto=``:then=`
		<meta property="og:image" content="[[*social_media_image:pthumb=`w=1200&h=630&zc=1`]]" />
		`:else=`
		<meta property="og:image" content="[[++fred.anylanding.social_media_image_default:pthumb=`w=1200&h=630&zc=1`]]" />
		`]]
		<meta property="og:site_name" content="[[++site_name]]" />
		<meta property="og:description" content="[[*description:default=`[[*introtext]]`]]" />
		[[++fred.anylanding.twitter:notempty=`[[$social_media_twitter_meta]]`]]
		[[++fred.anylanding.main_bg_color:notempty=`
		<meta name="msapplication-TileColor" content="#[[++fred.anylanding.main_bg_color]]">
		<meta name="theme-color" content="#[[++fred.anylanding.main_bg_color]]">
		<meta name="msapplication-navbutton-color" content="#[[++fred.anylanding.main_bg_color]]">
		`]]
		<meta name="msapplication-TileImage" content="assets/themes/anylanding/assets/images/metro-icon-win8.png">
		<link rel="apple-touch-icon" sizes="144x144" href="assets/themes/anylanding/assets/images/touch-icon.png" />
		<link href="assets/themes/anylanding/assets/production/style.css" rel="stylesheet">
		<link href="assets/components/csssweet/custom/anylanding_css.min.css" rel="stylesheet">
		<link rel="shortcut icon" type="image/ico" href="[[++fred.anylanding.favicon_icon]]" />
		[[++fred.anylanding.google_font_use:is=`true`:then=`
		<link href="https://fonts.googleapis.com/css?family=[[++fred.anylanding.google_font]]&display=swap" rel="stylesheet">
		`]]
		[[++fred.anylanding.google_font_headers_use:is=`true`:then=`
		<link href="https://fonts.googleapis.com/css?family=[[++fred.anylanding.google_font_headers]]&display=swap" rel="stylesheet">
		`]]
		[[++fred.anylanding.ua:notempty=`
	    <script type='text/javascript' src='assets/themes/anylanding/assets/js/anyscreensize/analyticstracker.js'></script>
	    <script type="text/javascript">
			var _gaq = _gaq || [];
			_gaq.push(['_setAccount', '[[++fred.anylanding.ua]]']);
			_gaq.push(['_trackPageview']);

			(function() {
			var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
			ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
			var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
			})();
	    </script>
	  	`]]
	</head>