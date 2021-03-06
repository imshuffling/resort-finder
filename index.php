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
    		
	<meta name="expires" content="never" />
  	<meta name="robots" content="index,follow,noydir,noodp" />

	<script src="js/jquery.1.7.2.min.js"></script>
	<script language="javascript" type="text/javascript" src="js/jquery.tablesorter.js"></script>
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
                    	<div id="resortCount"></div>
                        <div id="clearFilters"><a href="">Clear all filters</a></div>
                    </div>
                </div>
                </form>
                
                
                
                
                
                
                <div id="packages">
                	<table id="package-list" border="0">
                    	<thead>
                    		<tr>
                   				<th>Resorts</th>
                    			<th>Country</th>
                                <th>Height</th>
                                <th>Snow Range</th>
                                <th>Pistes</th>
                                <th>Beg</th>
                                <th>Int</th>
                                <th>Adv</th>
                                <th>Snb</th>
                                <th>Shortest Transfer Time</th>
                    		</tr>
                        </thead>
                        <tbody>
                        	<?php
							$sql = "SELECT resort_name, country_name, height_m, snow_range_m, pistes_kms, beginners, intermediate, advanced, snowboarders, shortest_transfer_time 
									FROM destinations
									ORDER BY resort_name";

							$result = dbQuery($sql);
							
							while($row = dbFetchArray($result)){
								$classes = getClasses(mysql_real_escape_string($row['resort_name']));
								echo "	<tr class=\"".$classes."\">\n
											<td>".$row['resort_name']."</td>\n
											<td>".$row['country_name']."</td>\n
											<td>".$row['height_m']."</td>\n
											<td>".$row['snow_range_m']."</td>\n
											<td>".$row['pistes_kms']."</td>\n
											<td>".$row['beginners']."</td>\n
											<td>".$row['intermediate']."</td>\n
											<td>".$row['advanced']."</td>\n
											<td>".$row['snowboarders']."</td>\n
											<td>".$row['shortest_transfer_time']."</td>\n
										</tr>\n";
							}
							mysql_free_result($result);
							?>
                        </tbody>
                    </table>
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
		});

		jQuery("#showHideFilters a").click(function(e){
			e.preventDefault();
			jQuery(".hide").slideToggle("fast");
			jQuery(this).toggleClass("close");
		});
		
		jQuery("#package-list").tablesorter(); 
		sortDestinations();
		
        jQuery("input[type=checkbox]").change(function(e){
            e.preventDefault();
			sortDestinations();
        });
    });
	
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
		
		jQuery("#package-list tbody tr").hide();


		if(checkedBoxes > 0){
			var promises = eval(filterQuery).map(function() {
				var dfrd = jQuery.Deferred();
				jQuery(this).fadeIn('fast', dfrd.resolve);
				return dfrd.promise();
			}).get();
			
			jQuery.when.apply(null, promises).then(function() {
				numDestinations = jQuery("#package-list tbody tr:visible").length;
				destinationsFound(numDestinations);
			});
		}else{
			var promises = jQuery("#package-list tbody tr").map(function() {
				var dfrd = jQuery.Deferred();
				jQuery(this).fadeIn('fast', dfrd.resolve);
				return dfrd.promise();
			}).get();
			
			jQuery.when.apply(null, promises).then(function() {
				numDestinations = jQuery("#package-list tbody tr:visible").length;
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
					feedback = numDestinations + " <span>resort found</span>";
					break;
			default:
					feedback = numDestinations + " <span>resorts found</span>";
					break;			
		}
		jQuery("#destinationCount #resortCount").hide().html(feedback).fadeIn();
	}
    </script>
</body>
</html>
<?php
ob_end_flush();
?>
