$(document).ready(function(){
  handler = Gmaps.build('Google');
  handler.buildMap({ 
    internal: { id: 'map', auto_zoom: "false", zoom: 4}
    
  }, function(){
  if(navigator.geolocation)
    navigator.geolocation.getCurrentPosition(displayOnMap);
  });
  
  handler.getMap().setZoom(13);
  
  function displayOnMap(position){
    var marker = handler.addMarker({
      lat: position.coords.latitude,
      lng: position.coords.longitude
    });
    handler.map.centerOn(marker);
  };
});
