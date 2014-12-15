var myCenter = new google.maps.LatLng(54.312224, 48.394669);
var marker;

function initialize() {
	var mapProp = {
	  center: myCenter,
	  zoom:18,
	  mapTypeId:google.maps.MapTypeId.ROADMAP
	  };

	var map = new google.maps.Map(document.getElementById("map"),mapProp);

	marker=new google.maps.Marker({
	  position:myCenter,
	  animation:google.maps.Animation.BOUNCE
	});

	marker.setMap(map);
}

google.maps.event.addDomListener(window, 'load', initialize);