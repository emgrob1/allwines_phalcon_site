
<!-- Developed with the power of phalcon php 2.0
 * Author: Evan Grob
 * Date: May 8, 2016 -->
<!DOCTYPE html>
<html>
		
	<?php
	$getHeader = new HeaderController();
	$getHeader->getHeaderSub();	
	?>
	<body >
<div id="wrapper">
<div id="header">
<div id="headerbanner"><a href="http://evangrob.com/allwines/"><img src="http://evangrob.com/allwines/images/banner1.png" width="1200" height="125" /></a></div><?php
$menu = new MenuController();
$menu->getMenu();
?>

<div id="main">
<div id="content">
<p>All Grapes</p>

{% for grape in grapes %}

<div class="spacer" style="height:120px;">
<div style="font-weight:bold;">{{grape.Name}} -  {{grape.Color}}</div> 
 <div id="grapeImage"  style="float:left;margin-left:25px;"><img src="http://evangrob.com/allwines/images/{{grape.Image}}" width="50" height ="50" style="margin-right:8px;"></div>


  

<div style="text-align:left;">
  {{grape.Description}}
  </div>
  <br>
  
 </div>
	{% endfor %}
</div>
</div>
<div id="sidebar">
	
<h2 >Additional Information</h2>


 
</div>
<div id="footer">
<?php
	$getFooter = new FooterController();
	$getFooter->getFooter();
	
	?>
	</div>

</div>
</body>

	
	
</html>