<?php 
$ipAddress=$_SERVER['REMOTE_ADDR'];
$macAddr=false;

#run the external command, break output into lines
$arp=`arp -a $ipAddress`;
$lines=explode("\n", $arp);

#look for the output line describing our IP address
foreach($lines as $line)
{
   $cols=preg_split('/\s+/', trim($line));
   if ($cols[0]==$ipAddress)
   {
       $macAddr=$cols[1];
   }
}

var result = system('python phpConnect.py find ' + $macAddr , $retval);

if($result != "Not Found")
	if($macAddrFound) {
		header( 'Location: http://10.0.0.1/loggedIn.php' ) ;
	}

?>

<!doctype html>
<!-- paulirish.com/2008/conditional-stylesheets-vs-css-hacks-answer-neither/ -->
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="no-js ie9" lang="en"> <![endif]-->
<!-- Consider adding an manifest.appcache: h5bp.com/d/Offline -->
<!--[if gt IE 9]><!--> <html class="no-js" lang="en" itemscope itemtype="http://schema.org/Product"> <!--<![endif]-->
<head>
	<meta charset="utf-8">

	<!-- Use the .htaccess and remove these lines to avoid edge case issues.
			 More info: h5bp.com/b/378 -->
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">

	<title>1.1 Attendence System</title>
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="humans.txt">

	<link rel="shortcut icon" href="favicon.png" type="image/x-icon" />

	<!-- Facebook Metadata /-->
	<meta property="fb:page_id" content="" />
	<meta property="og:image" content="" />
	<meta property="og:description" content=""/>
	<meta property="og:title" content=""/>

	<!-- Google+ Metadata /-->
	<meta itemprop="name" content="">
	<meta itemprop="description" content="">
	<meta itemprop="image" content="">

	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">

	<!-- We highly recommend you use SASS and write your custom styles in sass/_custom.scss.
		 However, there is a blank style.css in the css directory should you prefer -->
	<link rel="stylesheet" href="css/gumby.css">
	<link rel="stylesheet" href="css/style.css">
	<!-- <link rel="stylesheet" href="css/style.css"> -->

	<script src="js/libs/modernizr-2.6.2.min.js"></script>
</head>

<body>
	<div class="navbar" id="nav" >
			<div class="row">
				<a class="toggle" gumby-trigger="#nav3 &gt; .row &gt; ul" href="#"><i class="icon-menu"></i></a>
				<h1 class="seven columns logo">
					<a href="#">
						<h3>Attendence System</h3>
					</a>
				</h1>
				<ul class="push_six two columns">
					<li><a href="#">Login</a></li>
					<li>
						<a href="#">Help</a>
					</li>
				</ul>
			</div>
		</div>
		<div class="row">
			<div class="header"><?php echo roomName; ?> 
				<div class='schoolName'><h1>University Of Manchester</h1></div>
				<div class="roomName"><h1>Toot 1.4</h1></div>
			</div>
		<div class="row">
			<div class="four columns sidebar"> 
				<h3 class="lead">Login</h3>
				<p>Please submit you're details to attend a lecture</p>
			</div>
			<div class="seven columns js">
				<form action="loggedIn.php" method="post">
				<ul>
				  <li class="field">
				    <input class="input" name="name" type="text" placeholder="Your Name (e.g. John Smith)" />
				  </li>
				  <li class="field">
				    <input class="input" name="studentID" type="text" placeholder="Your Student ID (e.g. 8323123)" />
				  </li>
				  <li class="field">
			 		<label class="checkbox checked" for="check1">
					    <input name="checkbox[]" id="check1" value="1" type="checkbox" checked="checked">
					    <span></span> I declare this is my computer, and I understand I cannot change these details once they are added.
					  </label>
				  </li>
				  </form>
				</ul>
				<input class="medium metro rounded btn primary"><a href="#">Submit</a></input>
			</div>

		</div>

	<!-- Grab Google CDN's jQuery, fall back to local if offline -->
	<!-- 2.0 for modern browsers, 1.10 for .oldie -->
	<script>
	var oldieCheck = Boolean(document.getElementsByTagName('html')[0].className.match(/\soldie\s/g));
	</script>
	<script>
	if(!window.jQuery) {
	if(!oldieCheck) {
	  document.write('<script src="js/libs/jquery-2.0.2.min.js"><\/script>');
	} else {
	  document.write('<script src="js/libs/jquery-1.10.1.min.js"><\/script>');
	}
	}
	</script>

	<!--
	Include gumby.js followed by UI modules followed by gumby.init.js
	Or concatenate and minify into a single file -->
	<script gumby-touch="js/libs" src="js/libs/gumby.js"></script>
	<script src="js/libs/ui/gumby.retina.js"></script>
	<script src="js/libs/ui/gumby.fixed.js"></script>
	<script src="js/libs/ui/gumby.skiplink.js"></script>
	<script src="js/libs/ui/gumby.toggleswitch.js"></script>
	<script src="js/libs/ui/gumby.checkbox.js"></script>
	<script src="js/libs/ui/gumby.radiobtn.js"></script>
	<script src="js/libs/ui/gumby.tabs.js"></script>
	<script src="js/libs/ui/gumby.navbar.js"></script>
	<script src="js/libs/ui/jquery.validation.js"></script>
	<script src="js/libs/gumby.init.js"></script>

	<!--
	Google's recommended deferred loading of JS
	gumby.min.js contains gumby.js, all UI modules and gumby.init.js

	Note: If you opt to use this method of defered loading,
	ensure that any javascript essential to the initial
	display of the page is included separately in a normal
	script tag.

	<script type="text/javascript">
	function downloadJSAtOnload() {
	var element = document.createElement("script");
	element.src = "js/libs/gumby.min.js";
	document.body.appendChild(element);
	}
	if (window.addEventListener)
	window.addEventListener("load", downloadJSAtOnload, false);
	else if (window.attachEvent)
	window.attachEvent("onload", downloadJSAtOnload);
	else window.onload = downloadJSAtOnload;
	</script> -->

	<script src="js/plugins.js"></script>
	<script src="js/main.js"></script>

	<!-- Change UA-XXXXX-X to be your site's ID -->
	<!--<script>
	window._gaq = [['_setAccount','UAXXXXXXXX1'],['_trackPageview'],['_trackPageLoadTime']];
	Modernizr.load({
	  load: ('https:' == location.protocol ? '//ssl' : '//www') + '.google-analytics.com/ga.js'
	});
	</script>-->

	<!-- Prompt IE 6 users to install Chrome Frame. Remove this if you want to support IE 6.
	   chromium.org/developers/how-tos/chrome-frame-getting-started -->
	<!--[if lt IE 7 ]>
	<script src="//ajax.googleapis.com/ajax/libs/chrome-frame/1.0.3/CFInstall.min.js"></script>
	<script>window.attachEvent('onload',function(){CFInstall.check({mode:'overlay'})})</script>
	<![endif]-->

  </body>
</html>
