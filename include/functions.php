<?php
require_once 'config.php';

function getList($logic, $sql, $field, $checkBoxType, $destinations_field="", $customQueryCounter=0){
	$counter = 0;
	$isHidden = "";
	$list = "";
	$totalNumber = "0";
	
	$result = dbQuery($sql);
	
	while ($row = dbFetchArray($result)){
	
		/*************************************************************************************************/
		switch($customQueryCounter){
			case 1: // Location
			  		$sqlCounter = "	SELECT resort_name   
									FROM destinations
									WHERE destination = '".$row[$field]."'";
			  		break;
			case 2: // Country
			  		$sqlCounter = "	SELECT resort_name   
									FROM destinations
									WHERE country_name = '".$row[$field]."'";
			  		break;
			case 3: // Ski Area
			  		$sqlCounter = "	SELECT resort_name   
									FROM destinations
									WHERE ski_area = '".$row[$field]."'";
			  		break;
			case 4: // Travel From
			  		$sqlCounter = "	SELECT resort_name   
									FROM destinations
									WHERE ".parseTravelString($row[$field])." = 'TRUE'";
			  		break;

			default: // Default
					if($destinations_field != ""){
						$sqlCounter = "	SELECT resort_name 
										FROM destinations
										WHERE ".$row[$destinations_field]." = 'TRUE'
										OR ".$row[$destinations_field]." != ''";
					}
			  		break;
		}
		/*************************************************************************************************/

		$resultCounter = dbQuery($sqlCounter);
		$totalNumber = dbNumRows($resultCounter);
		
		/*************************************************************************************************/
		
		if($counter > 2){
			//$isHidden = " hide";
		}else{
			$isHidden = "";
		}
			
		//$list .= "<li class='".$logic.$isHidden."'><label><input type='checkbox' name='".$checkBoxType."' rel='c_".parseString($row[$field])."' value='".$row[$field]."' /><span class='itemName'>".$row[$field]." <span class='itemCount'>[".$totalNumber."]</span></span></label></li>\n";
		$list .= "<li class='".$logic.$isHidden." ".str_replace(" ", "", $row[$field])."'><label><input type='checkbox' name='".$checkBoxType."' rel='c_".parseString($row[$field])."' value='".$row[$field]."' /><span class='itemName'>".$row[$field]." </span></label></li>\n";

		
		$counter++;
	}
	
	mysql_free_result($result);
	
	return $list;
}



function getClasses($resort_name){
	$classes = "";
	
	$sql = "SELECT destination, country_name, ski_area, families, non_ski, nightlife, terrain_parks, crystal_childcare, ski_host, ski_plus, riders_lodge, finest, chalets, up_to_9_people, 10_to_14_people, 15_to_45_people, belfast_aldergrove, belfast_city, birmingham, bournemouth, bristol, doncaster_sheffield, dublin, east_midlands, edinburgh, exeter, glasgow, leeds_bradford, liverpool, london_gatwick, london_heathrow, london_all_airports, london_luton, london_stansted, manchester , newcastle, st_pancras, ashford_international, glaciers, fast_pass, ski_escort 
			FROM destinations
			WHERE resort_name = '".$resort_name."'";
	
	$result = dbQuery($sql);
	$items = dbFetchArray($result);
	
	$destination = parseString($items['destination']);
	$destination = ($destination != "" ? "c_".$destination : "");
	$countryname = parseString($items['country_name']);
	$countryname = ($countryname != "" ? "c_".$countryname : "");
	$skiarea = parseString($items['ski_area']);
	$skiarea = ($skiarea != "" ? "c_".$skiarea : "");
	$families = ($items['families'] == 'TRUE' ? "c_families " : "");
	$nonSki = ($items['non_ski'] == 'TRUE' ? "c_nonski " : "");
	$nightlife = ($items['nightlife'] == 'TRUE' ? "c_nightlife " : "");
	$terrainparks = ($items['terrain_parks'] > 0 ? "c_terrainparks " : "");
	$childcare = ($items['crystal_childcare'] == 'TRUE' ? "c_childcare " : "");
	$skihost = ($items['ski_host'] == 'TRUE' ? "c_skihost " : "");
	$skiplus = ($items['ski_plus'] == 'TRUE' ? "c_skiplus " : "");
	$riderslodge = ($items['riders_lodge'] == 'TRUE' ? "c_riderslodge " : "");
	$finest = ($items['finest'] == 'TRUE' ? "c_finest " : "");
	
	$chalets = ($items['chalets'] == 'TRUE' ? "c_chalets " : "");
	$uptonine = ($items['up_to_9_people'] == 'TRUE' ? "c_upto9people " : "");
	$tentofourteen = ($items['10_to_14_people'] == 'TRUE' ? "c_10to14people " : "");
	$fifteentofortyfive = ($items['15_to_45_people'] == 'TRUE' ? "c_15to45people " : "");
	
	$belfastaldergrove = ($items['belfast_aldergrove'] == 'TRUE' ? "c_belfastaldergrove " : "");
	$belfastcity = ($items['belfast_city'] == 'TRUE' ? "c_belfastcity " : "");
	$birmingham = ($items['birmingham'] == 'TRUE' ? "c_birmingham " : "");
	$bournemouth = ($items['bournemouth'] == 'TRUE' ? "c_bournemouth " : "");
	$bristol = ($items['bristol'] == 'TRUE' ? "c_bristol " : "");
	$doncastersheffield = ($items['doncaster_sheffield'] == 'TRUE' ? "c_doncastersheffield " : "");
	$dublin = ($items['dublin'] == 'TRUE' ? "c_dublin " : "");
	$eastmidlands = ($items['east_midlands'] == 'TRUE' ? "c_eastmidlands " : "");
	$edinburgh = ($items['edinburgh'] == 'TRUE' ? "c_edinburgh " : "");
	$exeter = ($items['exeter'] == 'TRUE' ? "c_exeter " : "");
	$glasgow = ($items['glasgow'] == 'TRUE' ? "c_glasgow " : "");
	$leedsbradford = ($items['leeds_bradford'] == 'TRUE' ? "c_leedsbradford " : "");
	$liverpool = ($items['liverpool'] == 'TRUE' ? "c_liverpool " : "");
	$londongatwick = ($items['london_gatwick'] == 'TRUE' ? "c_londongatwick " : "");
	$londonallairports = ($items['london_all_airports'] == 'TRUE' ? "c_londonallairports " : "");
	$londonheathrow = ($items['london_heathrow'] == 'TRUE' ? "c_londonheathrow " : "");
	$londonluton = ($items['london_luton'] == 'TRUE' ? "c_londonluton " : "");
	$londonstansted = ($items['london_stansted'] == 'TRUE' ? "c_londonstansted " : "");
	$manchester = ($items['manchester'] == 'TRUE' ? "c_manchester " : "");
	$newcastle = ($items['newcastle'] == 'TRUE' ? "c_newcastle " : "");
	$stpancras = ($items['st_pancras'] == 'TRUE' ? "c_stpancras " : "");
	$ashfordinternational = ($items['ashford_international'] == 'TRUE' ? "c_ashfordinternational " : "");
	
	$glaciers = ($items['glaciers'] == 'TRUE' ? "c_glaciers " : "");
	$fastpass = ($items['fast_pass'] == 'TRUE' ? "c_fastpass " : "");
	$skiescort = ($items['ski_escort'] == 'TRUE' ? "c_skiescort " : "");
	
	$classes = 	$destination.
				$countryname.
				$skiarea.
				$families.
				$nonSki.
				$nightlife.
				$terrainparks.
				$childcare.
				$skihost.
				$skiplus.
				$riderslodge.
				$finest.
				
				$chalets.
				$uptonine.
				$tentofourteen.
				$fifteentofortyfive.
				
				$belfastaldergrove.
				$belfastcity.
				$birmingham.
				$bournemouth.
				$bristol.
				$doncastersheffield.
				$dublin.
				$eastmidlands.
				$edinburgh.
				$exeter.
				$glasgow.
				$leedsbradford.
				$liverpool.
				$londongatwick.
				$londonallairports.
				$londonheathrow.
				$londonluton.
				$londonstansted.
				$manchester .
				$newcastle.
				$stpancras.
				$ashfordinternational.
				
				$glaciers.
				$fastpass.
				$skiescort;
				
	mysql_free_result($result);	
	
	return $classes;
}

function parseString($string){
	$newString ="";
	if($string != ""){
		$newString = str_replace(" ", "", $string);
		$newString = str_replace(".", "", $newString);
		$newString = str_replace("-", "", $newString);
		$newString = str_replace("_", "", $newString);
		$newString = str_replace("/", "", $newString);
		$newString = strtolower($newString)." ";
	}

	return $newString;
}

function parseTravelString($string){
	$newString ="";
	if($string != ""){
		$newString = str_replace(" ", "_", $string);
		$newString = str_replace(".", "", $newString);
		$newString = str_replace("-", "_", $newString);
		$newString = str_replace("/", "_", $newString);
		$newString = strtolower($newString);
	}

	return $newString;
}
?>