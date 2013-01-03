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
  	<meta name="robots" content="index,follow,noydir,noodp" />

	<script src="js/jquery.1.7.2.min.js"></script>
	<script src="js/jquery-ui.js"></script>
	<!-- <script language="javascript" type="text/javascript" src="js/jquery.tablesorter.js"></script> -->
	<!-- <script src="js/jquery.fixedtableheader.min.js" type="text/javascript"> </script> -->
	
	<script>
	
	/*$(document).ready(function() {
        $('#package-list').fixedtableheader();
    });*/ 
    /*$(function() {
        $( "#tabs" ).tabs({
            collapsible: true,
			event: "mouseover"
        });
    });*/
	
	$(function() {
        $( document ).tooltip({
            track: true
        });
    });
	
	
	/*$(function() {
        $( ".closebutton" ).button({
            icons: {
                primary: "ui-icon-circle-close"
            },
            text: close
        });

        $( ".closebutton" ).click(function(e){
		    e.preventDefault();
            $(".ui-tabs-panel").hide();
        });
        
    });*/
	
	jQuery(document).ready(function() {
        jQuery(".expanded-info").hide();
		
        jQuery("li.package").click(function() {
		// to do - make the whole thing clickable!!
		console.log('sdfsdfsddsfsdfsdfsdff');
	        jQuery(this).children(".expanded-info").slideToggle(500); 
	    });
	});

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
					
					<div id="resortCount"></div>
					
					
					<div class="megadropdown grey">
						<ul>		
							<li class=" hasSubNav">
								<a href="javascript:;">Good for</a>
								<div class="subNav">	
									<div class="col">		
										<h3>Resort</h3>	
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
											<li><a target="_blank" href="http://themeforest.net">Theme Forest</a></li>
											<li><a target="_blank" href="http://codecanyon.net">Code Canyon</a></li>
											<li><a target="_blank" href="http://graphicriver.net">Graphic River</a></li>
											<li><a target="_blank" href="http://audiojungle.net">Audio Jungle</a></li>
										</ul>	
									</div><!-- .col -->
								</div><!-- .subNav -->					
							</li>
							<li class=" hasSubNav">
								<a href="javascript:;">Destinations</a>
								<div class="subNav threeCol">	
									<div class="col">		
										<h3>Europe</h3>	
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
									</div><!-- .col -->
					
									<div class="col">
									<h3>ROW</h3>
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
									</div><!-- .col -->
					
									<div class="col">
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
										<h3>Europe</h3>	
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
									<h3>ROW</h3>
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
									<h3>Ski Areas</h3>
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
										<h3>Resort</h3>	
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
                
                
                <div class="header row">
				    <div class="resort-header">Resort</div>
				    <div class="country-header">Country</div>
					<div class="height-header">Height<small>(metres)</small></div>
					<div class="snow-range-header">Snow Range<small>(metres)</small></div>
					<div class="rating-header">Order by</div>
				
				</div>
                
                
                
                <div id="package-list">

						<ul>
                        	<?php
							$sql = "SELECT resort_name, country_name, height_m, snow_range_m, beginners, intermediate, advanced, snowboarders 
									FROM destinations
									ORDER BY resort_name";

							$result = dbQuery($sql);
							
							while($row = dbFetchArray($result)){
								$classes = getClasses(mysql_real_escape_string($row['resort_name']));
								echo "	<li class=\"package ".$classes." row\">\n
											<div class='resort'><p><a class='external' href='#'>".$row['resort_name']."</a></p><img src='http://dummyimage.com/105x80/bfb8bf/424459.jpg'/></div>\n
											    
											        <div class='country'>".$row['country_name']."</div>\n
											        <div class='height'>".$row['height_m']."</div>\n
											        <div class='snow-range'>".$row['snow_range_m']."</div>\n													
													<div class='good-for'>\n
													<h3>Good for...</h3>\n
														<ul>\n
															<ol><div>Experts </div><span class='rating" . $row['beginners'] ."'> " . $row['beginners'] . "</span></ol>\n
															<ol><div>Intermediates </div><span class='rating" . $row['intermediate'] ."'> " . $row['intermediate'] . "</span></ol>\n
															<ol><div>Beginners </div><span class='rating" . $row['advanced'] ."'> " . $row['advanced'] . "</span></ol>\n
															<ol><div>Boarders </div><span class='rating" . $row['snowboarders'] ."'> " . $row['snowboarders'] . "</span></ol>\n
														</ul>\n
																							
														<span class='more-details'><p>More Details</p>\n
														</div>\n
													
													
													<div class='resort-bio'>\n
													    <p class='info'>".$row['country_name']." is one of blah's most picturesque villages - a true winter wonderland. <span class='more-details'>More Details</span></p>\n
													</div>\n
													<div class='expanded-info'><img src='images/offers.jpg'/></div>
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

		jQuery("#showHideFilters a").click(function(e){
			e.preventDefault();
			jQuery(".hide").slideToggle("fast");
			jQuery(this).toggleClass("close");
		});
						
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
    updateTextArea();
	//console.log($('.checkbox').click(updateTextArea));

});
    });
	
	(function() {
	    $('input').click(function()  {
			//var value = $('input').attr('value');
			var value = $(this).val();
			console.log(value);
			//var valueClicked = $(this).text();
			//console.log(valueClicked);
			
			
		});
	})();
		
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
					feedback = "<span> Showing </span> " + numDestinations + " <span>of</span> 150 resorts";
					break;
			default:
					//feedback = numDestinations + " <span>resorts found</span>";
					feedback = "<span> Showing </span> " + numDestinations + " <span>of</span> 150 resorts";
					break;			
		}
		jQuery("#resortCount").hide().html(feedback).fadeIn();
	}
    </script>
</body>
</html>
<?php
ob_end_flush();
?>
