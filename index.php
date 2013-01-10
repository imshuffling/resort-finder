<?php
ob_start('ob_gzhandler');
require_once 'include/config.php';
require_once 'include/functions.php';
?>
<!DOCTYPE html>
<head>
	<meta charset="utf-8">
	<meta http-equiv="pragma" content="no-cache" />
	
	<title>Crystal Ski Destinations</title>
	<meta name="description" content="" />
	<link rel="stylesheet" type="text/css" href="css/main.css" media="screen"/>
	<link rel="stylesheet" type="text/css" href="css/megadropdown.css" media="screen"/>
	<link rel="stylesheet" type="text/css" href="css/ie7.css" media="screen"/>
	<link rel="stylesheet" type="text/css" href="css/smoothness/jquery-ui-1.9.2.custom.css"/>
    		
	<meta name="expires" content="never" />
  	<meta name="robots" content="no-index,no-follow,noydir,noodp" />
	<!-- <script type='text/javascript' src='https://ajax.googleapis.com/ajax/libs/prototype/1/prototype.js'></script>-->
	<script src="js/jquery.1.7.2.min.js"></script>
	<script src="js/jquery-ui.js"></script>	
	<script>
	
	/*jQuery(document).ready(function() {	
	$("ul.packages-list li").bind("mousemove", function(event) {
			$(this).find(".more-information").css({
				top: event.pageY + 5 + "px",
				left: event.pageX + 5 + "px"
			}).show();
		}).bind("mouseout", function() {
		$(".more-information").hide();
	});
	});	*/
	
	/*jQuery(document).ready(function() {	
		$(function() {
			$("ul.packages-list li h3").hover(function() {
				$(this).next("div").fadeIn("slow");
			},function(){
				$(this).next("div").fadeOut("slow");
			});
		});
	});*/
	
	/*TO DO TOOLTIPS*/
	
	/*jQuery(document).ready(function() {
        jQuery(".more-information").hide();		
        jQuery("ul.packages-list li h3").click(function() {
		// Where to go slide-section.
		
	        jQuery(this).show(".more-information"); 
	    });
	});*/

	
	jQuery(document).ready(function() {
        jQuery(".accordian-resort").hide();		
        jQuery("#where-to-go ul li").click(function() {
		// Where to go slide-section.
	        jQuery(this).toggleClass("active").children(".accordian-resort").slideToggle(500); 
	    });
	});
	
	
	/*$(function() {

		// This sticks resort header to top of the page..
		var nav = $(".header.row");
		var navHomeY = nav.offset().top;
		var isFixed = false;
		var $w = $(window);
		$w.scroll(function() {
			var scrollTop = $w.scrollTop();
			var shouldBeFixed = scrollTop > navHomeY;
			if (shouldBeFixed && !isFixed) {
				nav.css({
					position: "fixed",
					top: 0,
					margin: 0,
					left: nav.offset().left,
					width: nav.width(),
					borderBottom: '1px solid #ccc'
				});
				isFixed = true;
			}
			else if (!shouldBeFixed && isFixed)
			{
				nav.css({
					position: "static",
					marginLeft: 5,
					borderBottom: 0
				});
				isFixed = false;
			}
		});
	});*/
	
    </script>
	
</head>

<body id="browser">

	<div id="wrapper">
        <div id="header">
            <div id="logo"><a href="#" title="Crystal Ski &amp; Snowboard"><img src="images/header_06.jpg" alt="Crystal Ski &amp; Snowboard" /></a>
            </div>
            <div id="navigation">
                <ul id="nav">
                    <li><a href="#" title="Home">Home
                        <span class="nav-item-bg-l"></span>
                        <span class="nav-item-bg-r"></span></a>
                    </li>
                    <li class="current_nav_item"><a href="#" title="Ski resorts">Ski resorts
                        <span class="nav-item-bg-l"></span>
                        <span class="nav-item-bg-r"></span></a>
                  </li>
                    <li><a href="#" title="Ski deals">Ski deals
                        <span class="nav-item-bg-l"></span>
                        <span class="nav-item-bg-r"></span></a>
                  </li>
                    <li><a href="#" title="Our ski holidays">Our ski holidays
                        <span class="nav-item-bg-l"></span>
                        <span class="nav-item-bg-r"></span></a>
                  </li>
                    <li><a href="#" title="Ski extras">Ski extras
                        <span class="nav-item-bg-l"></span>
                        <span class="nav-item-bg-r"></span></a>
                  </li>
                    <li><a href="#" title="Brochures">Brochures
                        <span class="nav-item-bg-l"></span>
                        <span class="nav-item-bg-r"></span></a>
                    </li>
                </ul>
            </div>

            
            <div id="breadcrumb">
                You are here: <a href="#" title="Destinations">Home</a> &gt; Destinations
            </div>
            
        </div> <!-- End header -->
      
        <div id="content-body">
		       
            <div id="main">
			
                <form action="">
                <div id="offers">
                	<h2>Destinations</h2>
					
				<div id="where-to-go">
						<h3>Already know where you want to go?</h3>
					<ul>
						<li>
							<p>European Destinations</p>
							<div class="accordian-resort"><img src="images/accordian-resort.png"/></div>
						</li>
						<li>
							<p>Worldwide Destinations</p>
							<div class="accordian-resort"><img src="images/accordian-resort.png" /></div>
						</li>
					</ul>
				</div><!-- End Where-to-go -->
					
				<div class="resortWrapper">	
					<h3 class="heading">Find your perfect resort.</h3>
				</div>	
					
					<div class="megadropdown grey">
						<ul>		
							<li class=" hasSubNav">
								<a href="javascript:;">Good for</a>
								<div class="subNav">	
									<div class="col">									
										<ul>
											<?php						
												$sql = "SELECT resort_type, resort_type_field   
												FROM resorttypes
												ORDER BY order_id";
												$resort_list = getList("AND", $sql, 'resort_type', 'resorts', 'resort_type_field');
												echo $resort_list;
											?>
										</ul>					
									</div><!-- .col -->
								</div><!-- .subNav -->					
							</li>
							<li class=" hasSubNav">
								<a href="javascript:;">Accomodation</a>
								<div class="subNav twoCol">	
									<div class="col">		
										<h3>Chalet size</h3>	
										<ul>
											<?php
												$sql = "SELECT accommodation, accommodation_field    
												FROM accommodationtypes
												ORDER BY order_id";
												$accommodation_list = getList("AND", $sql, 'accommodation', 'accommodation', 'accommodation_field');
												echo $accommodation_list;
											?>
										</ul>					
									</div><!-- .col -->
					
									<div class="col">
									<h3>Accomodation type</h3>
										<ul>
											<?php
												$sql = "SELECT accommodation, accommodation_field    
												FROM accommodationtypes
												ORDER BY order_id";
												$accommodation_list = getList("AND", $sql, 'accommodation', 'accommodation', 'accommodation_field');
												echo $accommodation_list;
											?>
										</ul>	
									</div><!-- .col -->
								</div><!-- .subNav -->					
							</li>
							<li class=" hasSubNav">
								<a href="javascript:;">Destinations</a>
								<div class="subNav threeCol">	
									<div class="col">		
										<ul>
											<?php
												$sql = "SELECT location_name   
												FROM locations
												WHERE location_group = 1
												ORDER BY id";
												$location_list = getList("OR", $sql, 'location_name', 'location', '', 1);
												echo $location_list;
											?>
										</ul>					
									</div><!-- .col -->
					
									<div class="col">
										<ul>
											<?php
												$sql = "SELECT location_name   
												FROM locations
												WHERE location_group = 2
												ORDER BY id";
												$location_list = getList("OR", $sql, 'location_name', 'location', '', 2);
												echo $location_list;
											?>
										</ul>	
									</div><!-- .col -->
					
									<div class="col last">
									<h3>Ski Areas</h3>
										<ul>
											<?php
												$sql = "SELECT location_name   
												FROM locations
												WHERE location_group = 3
												ORDER BY location_name";
												$location_list = getList("OR", $sql, 'location_name', 'location', '', 3);
												echo $location_list;
											?>
										</ul>	
									</div><!-- .col -->
								</div><!-- .subNav -->					
							</li>
							<li class=" hasSubNav">
								<a href="javascript:;">Departing from</a>
								<div class="subNav threeCol">	
									<div class="col">		
										<ul>
										<?php
											$sql = "SELECT depart_from, depart_field   
                                            FROM departurepoint
											WHERE depart_group = 1
                                            ORDER BY order_id";
											$departure_list = getList("AND", $sql, 'depart_from', 'departures', '', 1);
											echo $departure_list;
										?>
										</ul>					
									</div><!-- .col -->
									<div class="col">		
										<ul>
										<?php
											$sql = "SELECT depart_from, depart_field   
                                            FROM departurepoint
											WHERE depart_group = 2
                                            ORDER BY order_id";
											$departure_list = getList("AND", $sql, 'depart_from', 'departures', '', 2);
											echo $departure_list;
										?>
										</ul>					
									</div><!-- .col -->
									<div class="col">		
										<ul>
										<?php
											$sql = "SELECT depart_from, depart_field   
                                            FROM departurepoint
											WHERE depart_group = 3
                                            ORDER BY order_id";
											$departure_list = getList("AND", $sql, 'depart_from', 'departures', '', 3);
											echo $departure_list;
										?>
										</ul>					
									</div><!-- .col -->
								</div><!-- .subNav -->
							</li>
							<li class="right hasSubNav">
								<a href="javascript:;">Ski Features</a>
								<div class="subNav">	
									<div class="col">		
										<ul>
											<?php
												$sql = "SELECT features, features_field  
												FROM skifeatures
												ORDER BY order_id";
												$features_list = getList("AND", $sql, 'features', 'features', 'features_field');
												echo $features_list;
											?>
										</ul>					
									</div><!-- .col -->
								</div><!-- .subNav -->					
							</li>
						</ul>
					</div>
                    <div id="filter-holder">
                        <div class="filters">
                        	<div class="filter">
                                <span>Location</span>
                                <ul>
                                    <?php
                                    $sql = "SELECT location_name   
                                            FROM locations
                                            WHERE location_group = 1
                                            ORDER BY location_name";
                                                
                                    $location_list = getList("OR", $sql, 'location_name', 'location', '', 1);
                                    echo $location_list;
                                    ?>
                                </ul>
                            </div>
                            
                            <div class="filter hide">
                                <span>Country</span>
                                <ul>
                                    <?php
                                    $sql = "SELECT location_name   
                                            FROM locations
                                            WHERE location_group = 2
                                            ORDER BY location_name";
                                    $location_list = getList("OR", $sql, 'location_name', 'location', '', 2);
                                    echo $location_list;
                                    ?>
                                </ul>
                            </div>
                            
                            <div class="filter hide">
                                <span>Ski Area</span>
                                <ul>
                                    <?php
                                    $sql = "SELECT location_name   
                                            FROM locations
                                            WHERE location_group = 3
                                            ORDER BY location_name";
                                    $location_list = getList("OR", $sql, 'location_name', 'location', '', 3);
                                    echo $location_list;
                                    ?>
                                </ul>
                           </div>
                        </div>
                        
                        <div class="filters">
                        	<div class="filter">
                                <span>Resort</span>
                                <ul>
                                    <?php						
                                    $sql = "SELECT resort_type, resort_type_field   
                                            FROM resorttypes
                                            ORDER BY order_id";
                                    $resort_list = getList("AND", $sql, 'resort_type', 'resorts', 'resort_type_field');
                                    echo $resort_list;
                                    ?>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="filters">
                        	<div class="filter">
                                <span>Accommodation</span>
                                <ul>
                                    <?php
                                    $sql = "SELECT accommodation, accommodation_field    
                                            FROM accommodationtypes
                                            ORDER BY order_id";
                                    $accommodation_list = getList("AND", $sql, 'accommodation', 'accommodation', 'accommodation_field');
                                    echo $accommodation_list;
                                    ?>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="filters">
                        	<div class="filter">
                                <span>Travel From</span>
                                <ul>
                                    <?php
                                    $sql = "SELECT depart_from, depart_field   
                                            FROM departurepoint
                                            ORDER BY order_id";
                                    $departure_list = getList("AND", $sql, 'depart_from', 'departures', '', 4);
                                    echo $departure_list;
                                    ?>
                                </ul>
                            </div>
                        </div>
                        
                        <div class="filters">
                        	<div class="filter">
                                <span>Ski Features</span>
                                <ul>
                                    <?php
                                    $sql = "SELECT features, features_field  
                                            FROM skifeatures
                                            ORDER BY order_id";
                                    $features_list = getList("AND", $sql, 'features', 'features', 'features_field');
                                    echo $features_list;
                                    ?>
                                </ul>
                             </div>
                        </div>
                        
                        <div id="showHideFilters"><a href="">Show all options</a></div>
                    </div>
                    <div id="destinationCount">
					    <ul id="display_text_here"></ul>
                    	
                        <div id="clearFilters"><a href="">Reset all filters</a></div>
                    </div>
					<div id="resortCount"></div>
					
					
	
                </div>
                </form>
                
                <!--<div class="header-wrap">
					<div class="header row">
						<div class="resort-header">Resort</div>
						<div class="country-header">Country</div>
						<div class="height-header">Height<small>(metres)</small></div>
						<div class="snow-range-header">Snow Range<small>(metres)</small></div>
						<div class="rating-header">Order by</div>
					
					</div>
				</div>--><!-- END header-wrap -->	
                
                
                
                <div id="package-list">

						<ul class="packages-list">
                        	<?php
							$sql = "SELECT resort_name, country_name, height_m, snow_range_m, beginners, intermediate, advanced, snowboarders 
									FROM destinations
									ORDER BY resort_name";

							$result = dbQuery($sql);
							
							while($row = dbFetchArray($result)){
								$classes = getClasses(mysql_real_escape_string($row['resort_name']));
								
								$row['snow_range_m'] = str_replace("-","-<br/>", $row['snow_range_m']);

								echo "	<li class=\"resort-package ".$classes." row\">\n
											<h3><strong>".$row['resort_name'].",</strong> ".$row['country_name']."</h3>
											<div class='more-information'>
												<img src='images/105x80.jpg' />
												<p>Austria is one of blah's most picturesque villages - a true winter wonderland. More Details</p>
											</div>

											<ul class='details'>
												<ol><span>Height</span><strong>".$row['height_m']."</strong></ol>
												<ol><span>Range</span><strong>".$row['snow_range_m']."</strong></ol>
												<ol class='rating beg'><span>Beg</span><strong class='ratings stars".$row['beginners']."'>".$row['beginners']."</strong></ol>
												<ol class='rating int'><span>Int</span><strong class='ratings stars".$row['intermediate']."'>".$row['intermediate']."</strong></ol>
												<ol class='rating exp'><span>Exp</span><strong class='ratings stars".$row['advanced']."'>".$row['advanced']."</strong></ol>
												<ol class='rating board'><span>Board</span><strong class='ratings stars".$row['snowboarders']."'>".$row['snowboarders']."</strong></ol>
											</ul>
											<img src='images/extras.png' />
										</li>\n";		
										
							}
							mysql_free_result($result);
							?>
						</ul>	
                </div>
				                
            </div> <!-- End main -->
            
            <div id="sidebar">
                <div class="sidebar-title">Ski Holiday Search</div>
            </div> <!-- End sidebar -->
            
        </div> <!-- End content-body -->
    </div> <!-- End wrapper -->
    
    <script>
    jQuery(document).ready(function (){
		
		jQuery("#clearFilters a").click(function(e){
			e.preventDefault();
			jQuery("input").attr('checked', false);
			sortDestinations();
			updateTextArea();
		});

		/*jQuery("#showHideFilters a").click(function(e){
			e.preventDefault();
			jQuery(".hide").slideToggle("fast");
			jQuery(this).toggleClass("close");
		});*/
						
		/*jQuery("#package-list").tablesorter({sortList: [[0,0]], locale: 'en', widgets: ['zebra'], useUI: true}); 
		sortDestinations();*/
		
        jQuery("input[type=checkbox]").change(function(e){
            e.preventDefault();
			sortDestinations();	
        });

function updateTextArea () {
    var allVals = [],
        toDisplay = '';
		
    $('#display_text_here').empty();
		$('#:checked').each(function () {
            
			toDisplay = $(this).val();
            allVals.push(toDisplay);
        
            var li = $('<li></li>').text(toDisplay);
            $('#display_text_here').append(li);
        });	

}

$(document).ready(function () {
    $('.checkbox').click(updateTextArea);
	sortDestinations();
    updateTextArea();
	//console.log($('.checkbox').click(updateTextArea));

});
    });
	
	/*(function() {
	    $('input').click(function()  {
			var value = $('input').attr('value');
			var value = $(this).val();
			console.log(value);
			var valueClicked = $(this).text();
			console.log(valueClicked);
		});
	})();*/
			
	function sortDestinations(){
		var filterQuery = "";
		var numDestinations = 0;
		var checkedBoxes = jQuery("input[type='checkbox']:checked").length;
		var classes = "";
		var classesOR = "";
		var classesAND = "";
		var destArr=[];
		var destANDArr=[];
		var destORArr=[];
		
		jQuery("input[type='checkbox']:checked").each(function(){
			destArr.push("."+jQuery(this).attr('rel'));
						
			if(jQuery(this).closest("li").hasClass("OR")){
				destORArr.push("."+jQuery(this).attr('rel'));
			}else if(jQuery(this).closest("li").hasClass("AND")){
				destANDArr.push("."+jQuery(this).attr('rel'));
			}
		});
		
		jQuery.each(destArr, function(){
			classes = classes + this;
		});
		
		jQuery.each(destORArr, function(){
			classesOR = classesOR + this;
		});
		
		jQuery.each(destANDArr, function(){
			classesAND = classesAND + this;
		});
				
		classes = classes.replace(/\s+/g, '');
		classesOR = classesOR.replace(/\s+/g, '');
		classesAND = classesAND.replace(/\s+/g, '');


		var counter = 0;
		if(jQuery(destORArr).length > 0){
			jQuery.each(destORArr, function(){
				if(counter > 0){
					filterQuery = filterQuery + ".add('"+this+classesAND+"')";
				}else{
					filterQuery = "jQuery('"+this+classesAND+"')";
				}
				counter++;
			});
		}else{
			filterQuery = "jQuery('"+classes+"')";
		}
		
		filterQuery = filterQuery.replace(/\s+/g, '');		
		
		jQuery("#package-list ul li").hide();
		//console.log('wtf');


		if(checkedBoxes > 0){
			var promises = eval(filterQuery).map(function() {
				var dfrd = jQuery.Deferred();
				jQuery(this).fadeIn('fast', dfrd.resolve);
				return dfrd.promise();
			}).get();
			
			jQuery.when.apply(null, promises).then(function() {
				numDestinations = jQuery("#package-list ul li:visible").length;
				destinationsFound(numDestinations);
			});
		}else{
			var promises = jQuery("#package-list ul li").map(function() {
				var dfrd = jQuery.Deferred();
				jQuery(this).fadeIn('fast', dfrd.resolve);
				return dfrd.promise();
			}).get();
			
			jQuery.when.apply(null, promises).then(function() {
				numDestinations = jQuery("#package-list ul li:visible").length;
				destinationsFound(numDestinations);
			});
		}
	}
	
	function destinationsFound(numDestinations){
		var feedback;
		switch(numDestinations){
			case 0:
					feedback = "<span>No resorts found</span></div>";
					break;
			case 1:
					//feedback = numDestinations + "<span>resort found</span>";
					feedback = "<span> Showing </span> " + numDestinations + " <span>of</span> 146 resorts";
					break;
			default:
					//feedback = numDestinations + " <span>resorts found</span>";
					feedback = "<span> Showing </span> " + numDestinations + " <span>of</span> 146 resorts";
					break;			
		}
		jQuery("#resortCount").html(feedback).fadeIn("slow");
	}
    </script>
</body>
</html>
<?php
ob_end_flush();
?>
