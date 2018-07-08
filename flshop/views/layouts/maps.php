<!DOCTYPE html>
<html>
  <head>
  <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
       #map {
        height: 585px;
        width: 600px;
        margin-bottom: 100px;
       }
    </style>
  </head>
  <body>
    <div style="margin-left:0px; " id="map"></div>
   <script>
 function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    zoom: 10,
    center: {lat: 50.44, lng: 30.45},
    mapTypeId: 'terrain'
  });

  // Define the LatLng coordinates for the polygon's path.
  var triangleCoords = [
    {lat: 50.41, lng: 30.41},
    {lat: 50.505, lng: 30.412},
    {lat: 50.5, lng: 30.6},
    {lat: 50.42, lng: 30.616},
    {lat: 50.39, lng: 30.55}
  ];

  // Construct the polygon.
  var bermudaTriangle = new google.maps.Polygon({
    paths: triangleCoords,
    strokeColor: 'green',
    // strokeOpacity: 0.7,
    strokeWeight: 2,
    fillColor: '#4682B4',
    fillOpacity: 0.25
  });

  bermudaTriangle.setMap(map);
  var first = {lat:50.444, lng:30.49}, second = {lat:50.42, lng:30.53}, third = {lat:50.40, lng:30.50};

  var marker = new google.maps.Marker({
          position: first,
          map: map,
          //  
        });
        var marker2 = new google.maps.Marker({
          position: second,
          map: map,
          // icon: '/image.jpg'
        });
        var marker3 = new google.maps.Marker({
          position: third,
          map: map,
          //  
        });
        var InfoWindow = new google.maps.InfoWindow({
        content: '<h4>Квіти</h4> <br> вул.Старовокзальна, 9'
       });
        var InfoWindow2 = new google.maps.InfoWindow({
        content: '<h4>Квіти Святошин</h4> <br> вул.Борщагівська, 10'
       });
        var InfoWindow3 = new google.maps.InfoWindow({
        content: '<h4>Квіти Хрещатик</h4> <br> вул.Глибочинська, 12'
       });
       marker.addListener('click', function(){
        InfoWindow.open(map, marker);
       })
        marker2.addListener('click', function(){
        InfoWindow2.open(map, marker2)
       })
        marker3.addListener('click', function(){
        InfoWindow3.open(map, marker3);
       })
      

}
    </script>


    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCrzVqYtdMSyOShHIC-nUZNRkI6Gxo5VaM&callback=initMap">
    </script>
  </body>
</html>