# Data Visualisation Excercise

## Canton data

Explored the [area covered by FBiH](http://global.mapit.mysociety.org/area/364681/covers.html).
Then downloaded GeoJSON representation for each canton:

```
wget http://global.mapit.mysociety.org/area/366099.geojson
wget http://global.mapit.mysociety.org/area/366100.geojson
wget http://global.mapit.mysociety.org/area/366101.geojson
wget http://global.mapit.mysociety.org/area/366102.geojson
wget http://global.mapit.mysociety.org/area/366103.geojson
wget http://global.mapit.mysociety.org/area/366104.geojson
wget http://global.mapit.mysociety.org/area/366105.geojson
wget http://global.mapit.mysociety.org/area/366106.geojson
wget http://global.mapit.mysociety.org/area/366107.geojson
wget http://global.mapit.mysociety.org/area/366108.geojson

```

A single MapIt GeoJSON file cotnains a single Polygon.
To convert it co TopoJSON we needed a `FeatureCollection`.
For that purpose there is "script/join_features.rb" script.
Invoke it like this:

```
script/join_features.rb $(ls geodata/cantons/*.geojson) > geodata/cantons.geojson
```

Now the data can be converted to TopoJSON using [topojson CLI](https://github.com/mbostock/topojson/wiki/Installation):

```
topojson -o geodata/cantons.json geodata/cantons.geojson
```

## Running the server

Run the local server from the parent directory. You can use Python's SimpleHTTPServer:

```
python -m SimpleHTTPServer 8000
```
