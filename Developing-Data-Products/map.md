---
title: "Map using leaflet: Developing Data Products Programming Assignment 2(R Markdown and Leaflet)"
author: "Sifang Zhao"
date: "June 10 2020"
output:
    html_document:
        keep_md: true
---

# Date : June 10 2020.

### Average enrollment of UG students at IITs at any given time

This radius of the circle in the map is the measure of average number of UG students in that particular IIT at any given time. Inclucded icon as well as link for the website of the respective IIT.

```r
library(leaflet)
iit<- data.frame(lat = c(22.3149, 19.1334, 26.5123, 12.9908, 28.5450, 26.1903, 29.8649, 20.3036, 17.5952, 25.5358, 30.9759, 22.5216), 
                lng =c(87.3105, 72.9133, 80.2329, 80.2339, 77.1926, 91.6920, 77.8966, 85.8249, 78.1233, 84.8511, 76.5379, 75.9216))

iit%>% 
    leaflet()%>% 
    addTiles()%>%
    addCircles(weight =1, lat = iit$lat , lng = iit$lng, radius = c(6500*100,3400*100,3938*100,4000*100,3590*100,2567*100,4472*100,438*100,900*100,439*100,450*100,465*100)) %>%
    addMarkers(icon = iconList(makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/IIT_Kharagpur_Logo.svg/268px-IIT_Kharagpur_Logo.svg.png", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX= 33*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/thumb/5/58/IIT_Bombay_Logo.svg/300px-IIT_Bombay_Logo.svg.png", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/IIT_Kanpur_Logo.svg/299px-IIT_Kanpur_Logo.svg.png", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    icons<- makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/thumb/6/69/IIT_Madras_Logo.svg/300px-IIT_Madras_Logo.svg.png", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/6/66/IIT_Delhi_logo.gif", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/thumb/1/12/IIT_Guwahati_Logo.svg/297px-IIT_Guwahati_Logo.svg.png", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/b/bb/Iitroorkee2015.jpg", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/commons/3/37/IIT-BBS.png", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/thumb/0/0f/Indian_Institute_of_Technology_Hyderabad_logo.svg/300px-Indian_Institute_of_Technology_Hyderabad_logo.svg.png", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/thumb/5/52/Indian_Institute_of_Technology%2C_Patna.svg/301px-Indian_Institute_of_Technology%2C_Patna.svg.png", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/1/16/IIT_Ropar_Official_Logo.jpg", iconWidth = 33*215/230, iconHeight= 33, iconAnchorX = 31*215/230/2, iconAnchorY = 16),
    makeIcon(
    iconUrl="https://upload.wikimedia.org/wikipedia/en/thumb/d/df/IIT_Indore_logo.svg/273px-IIT_Indore_logo.svg.png", iconWidth = 31*215/230, iconHeight= 33, iconAnchorX = 33*215/230/2, iconAnchorY = 16)
    ), popup =c("<b><a href='http://iitkgp.ac.in'>IIT Kharagpur</a></b>", "<b><a href='http://www.iitb.ac.in'>IIT Bombay</a></b>", "<b><a href='	http://www.iitk.ac.in'>IIT Kanpur</a></b>", "<b><a href='http://www.iitm.ac.in'>IIT Madras</a></b>", "<b><a href='http://www.iitd.ac.in'>IIT Delhi</a></b>", "<b><a href='http://www.iitg.ac.in'>IIT Guwahati</a></b>","<b><a href='http://www.iitr.ac.in'>IIT Roorkee</a></b>","<b><a href='http://www.iitbbs.ac.in'>IIT Bhubaneswar</a></b>","<b><a href='http://www.iith.ac.in'>IIT Hyderabad</a></b>","<b><a href='http://www.iitp.ac.in'>IIT Patna</a></b>", "<b><a href='http://www.iitrpr.ac.in'>IIT Ropar</a></b>", "<b><a href='http://www.iiti.ac.in'>IIT Indore</a></b>"))
```

<!--html_preserve--><div id="htmlwidget-2760a7c7791c121cf1d3" style="width:672px;height:480px;" class="leaflet html-widget"></div>
<script type="application/json" data-for="htmlwidget-2760a7c7791c121cf1d3">{"x":{"options":{"crs":{"crsClass":"L.CRS.EPSG3857","code":null,"proj4def":null,"projectedBounds":null,"options":{}}},"calls":[{"method":"addTiles","args":["//{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",null,null,{"minZoom":0,"maxZoom":18,"tileSize":256,"subdomains":"abc","errorTileUrl":"","tms":false,"noWrap":false,"zoomOffset":0,"zoomReverse":false,"opacity":1,"zIndex":1,"detectRetina":false,"attribution":"&copy; <a href=\"http://openstreetmap.org\">OpenStreetMap<\/a> contributors, <a href=\"http://creativecommons.org/licenses/by-sa/2.0/\">CC-BY-SA<\/a>"}]},{"method":"addCircles","args":[[22.3149,19.1334,26.5123,12.9908,28.545,26.1903,29.8649,20.3036,17.5952,25.5358,30.9759,22.5216],[87.3105,72.9133,80.2329,80.2339,77.1926,91.692,77.8966,85.8249,78.1233,84.8511,76.5379,75.9216],[650000,340000,393800,400000,359000,256700,447200,43800,90000,43900,45000,46500],null,null,{"interactive":true,"className":"","stroke":true,"color":"#03F","weight":1,"opacity":0.5,"fill":true,"fillColor":"#03F","fillOpacity":0.2},null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null,null]},{"method":"addMarkers","args":[[22.3149,19.1334,26.5123,12.9908,28.545,26.1903,29.8649,20.3036,17.5952,25.5358,30.9759,22.5216],[87.3105,72.9133,80.2329,80.2339,77.1926,91.692,77.8966,85.8249,78.1233,84.8511,76.5379,75.9216],{"iconUrl":{"data":["https://upload.wikimedia.org/wikipedia/en/thumb/1/1c/IIT_Kharagpur_Logo.svg/268px-IIT_Kharagpur_Logo.svg.png","https://upload.wikimedia.org/wikipedia/en/thumb/5/58/IIT_Bombay_Logo.svg/300px-IIT_Bombay_Logo.svg.png","https://upload.wikimedia.org/wikipedia/en/thumb/a/a3/IIT_Kanpur_Logo.svg/299px-IIT_Kanpur_Logo.svg.png","https://upload.wikimedia.org/wikipedia/en/thumb/6/69/IIT_Madras_Logo.svg/300px-IIT_Madras_Logo.svg.png","https://upload.wikimedia.org/wikipedia/en/6/66/IIT_Delhi_logo.gif","https://upload.wikimedia.org/wikipedia/en/thumb/1/12/IIT_Guwahati_Logo.svg/297px-IIT_Guwahati_Logo.svg.png","https://upload.wikimedia.org/wikipedia/en/b/bb/Iitroorkee2015.jpg","https://upload.wikimedia.org/wikipedia/commons/3/37/IIT-BBS.png","https://upload.wikimedia.org/wikipedia/en/thumb/0/0f/Indian_Institute_of_Technology_Hyderabad_logo.svg/300px-Indian_Institute_of_Technology_Hyderabad_logo.svg.png","https://upload.wikimedia.org/wikipedia/en/thumb/5/52/Indian_Institute_of_Technology%2C_Patna.svg/301px-Indian_Institute_of_Technology%2C_Patna.svg.png","https://upload.wikimedia.org/wikipedia/en/1/16/IIT_Ropar_Official_Logo.jpg","https://upload.wikimedia.org/wikipedia/en/thumb/d/df/IIT_Indore_logo.svg/273px-IIT_Indore_logo.svg.png"],"index":[0,1,2,3,4,5,6,7,8,9,10,11]},"iconWidth":[30.8478260869565,30.8478260869565,30.8478260869565,30.8478260869565,30.8478260869565,30.8478260869565,30.8478260869565,30.8478260869565,30.8478260869565,30.8478260869565,30.8478260869565,28.9782608695652],"iconHeight":33,"iconAnchorX":[15.4239130434783,14.4891304347826,14.4891304347826,14.4891304347826,14.4891304347826,14.4891304347826,14.4891304347826,14.4891304347826,14.4891304347826,14.4891304347826,14.4891304347826,15.4239130434783],"iconAnchorY":16},null,null,{"interactive":true,"draggable":false,"keyboard":true,"title":"","alt":"","zIndexOffset":0,"opacity":1,"riseOnHover":false,"riseOffset":250},["<b><a href='http://iitkgp.ac.in'>IIT Kharagpur<\/a><\/b>","<b><a href='http://www.iitb.ac.in'>IIT Bombay<\/a><\/b>","<b><a href='\thttp://www.iitk.ac.in'>IIT Kanpur<\/a><\/b>","<b><a href='http://www.iitm.ac.in'>IIT Madras<\/a><\/b>","<b><a href='http://www.iitd.ac.in'>IIT Delhi<\/a><\/b>","<b><a href='http://www.iitg.ac.in'>IIT Guwahati<\/a><\/b>","<b><a href='http://www.iitr.ac.in'>IIT Roorkee<\/a><\/b>","<b><a href='http://www.iitbbs.ac.in'>IIT Bhubaneswar<\/a><\/b>","<b><a href='http://www.iith.ac.in'>IIT Hyderabad<\/a><\/b>","<b><a href='http://www.iitp.ac.in'>IIT Patna<\/a><\/b>","<b><a href='http://www.iitrpr.ac.in'>IIT Ropar<\/a><\/b>","<b><a href='http://www.iiti.ac.in'>IIT Indore<\/a><\/b>"],null,null,null,null,{"interactive":false,"permanent":false,"direction":"auto","opacity":1,"offset":[0,0],"textsize":"10px","textOnly":false,"className":"","sticky":true},null]}],"limits":{"lat":[12.9908,30.9759],"lng":[72.9133,91.692]}},"evals":[],"jsHooks":[]}</script><!--/html_preserve-->
