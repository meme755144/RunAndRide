<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="testGoogle.aspx.cs" Inherits="RunAndRide.testGoogle" %>

<!DOCTYPE html>

<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <title></title>
    <script async defe
            src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAKGYtwEkhZEgZFXyyrCCDyDqQhLhGCXuo&callback=initMap">
    </script>
    <style>
        html,
        body {
            height: 100%;
            margin: 0;
            padding: 0;
        }

        #map-canvas {
            height: 100%;
            width: 100%;
        }
    </style><!--CSS-->
</head>

<body>
    <div id="map-canvas"></div> <!--標籤-->
</body>
</html>
<script>
    function initMap() {
        var pointA = new google.maps.LatLng(22.66957, 120.3007054),
            pointB = new google.maps.LatLng(22.6193241, 120.2936823),
            myOptions = {
                zoom: 7,
                center: pointA
            },
            map = new google.maps.Map(document.getElementById('map-canvas'), myOptions),
            // Instantiate a directions service.
            directionsService = new google.maps.DirectionsService,
            directionsDisplay = new google.maps.DirectionsRenderer({
                map: map
            }),
            markerA = new google.maps.Marker({
                //position: pointA,

                animation: google.maps.Animation.BOUNCE,
                map: map
            }),
            markerB = new google.maps.Marker({
                //position: pointB,

                animation: google.maps.Animation.BOUNCE,
                map: map
            });

        // get route from A to B
        calculateAndDisplayRoute(directionsService, directionsDisplay, pointA, pointB);

    }



    function calculateAndDisplayRoute(directionsService, directionsDisplay, pointA, pointB) {
        directionsService.route({
            origin: pointA,
            destination: pointB,
            travelMode: google.maps.TravelMode.DRIVING
        }, function (response, status) {
            if (status == google.maps.DirectionsStatus.OK) {
                directionsDisplay.setDirections(response);
            } else {
                window.alert('Directions request failed due to ' + status);
            }
        });
    }

    initMap();
</script> <!--JavaScript-->
