
To test:

Run `docker compose up` then examine the json output at:

- curl http://localhost:5000/collections/USGS/Things/items/'AR008-331856091114601'
- curl http://localhost:5000/collections/Exploration/Things/items/'AR008-331856091114601'

## Output after applying template
```json
{
    "@context":{
        "@vocab":"https://schema.org/",
        "xsd":"https://www.w3.org/TR/xmlschema-2/#",
        "rdfs":"http://www.w3.org/2000/01/rdf-schema#",
        "dc":"http://purl.org/dc/terms/",
        "dcat":"https://www.w3.org/ns/dcat#",
        "freq":"http://purl.org/cld/freq/",
        "qudt":"http://qudt.org/schema/qudt/",
        "qudt-units":"http://qudt.org/vocab/unit/",
        "qudt-quantkinds":"http://qudt.org/vocab/quantitykind/",
        "gsp":"http://www.opengis.net/ont/geosparql#",
        "locType":"http://vocabulary.odm2.org/sitetype",
        "odm2var":"http://vocabulary.odm2.org/variablename/",
        "odm2varType":"http://vocabulary.odm2.org/variabletype/",
        "hyf":"https://www.opengis.net/def/schema/hy_features/hyf/",
        "skos":"https://www.opengis.net/def/schema/hy_features/hyf/HY_HydroLocationType",
        "ssn":"http://www.w3.org/ns/ssn/",
        "ssn-system":"http://www.w3.org/ns/ssn/systems/"
    },
    "@id":"http://localhost:5000/collections/Exploration/Things/items/'AR008-331856091114601'",
    "@type":[
        "hyf:HY_HydrometricFeature",
        "hyf:HY_HydroLocation",
        "locType:stream"
    ],
    "hyf:HydroLocationType":"hydrometric station",
    "sameAs":{
        "@id":"https://geoconnex.us/ref/gages/"
    },
    "identifier":{
        "@type":"PropertyValue",
        "propertyID":"USGS site number",
        "value":"331856091114601"
    },
    "name":"AR008-331856091114601",
    "description":"Stream/River Site",
    "provider":{
        "url":"https://waterdata.usgs.gov",
        "@type":"GovernmentOrganization",
        "name":"U.S. Geological Survey Water Data for the Nation"
    },
    "geo":{
        "@type":"schema:GeoCoordinates",
        "schema:longitude":-91.1969333333333,
        "schema:latitude":33.3169611111111
    },
    "gsp:hasGeometry":{
        "@type":"http://www.opengis.net/ont/sf#Point",
        "gsp:asWKT":{
            "@type":"http://www.opengis.net/ont/geosparql#wktLiteral",
            "@value":"POINT (-91.1969333333333 33.3169611111111)"
        },
        "gsp:crs":{
            "@id":"http://www.opengis.net/def/crs/OGC/1.3/CRS84"
        }
    },
    "hyf:referencedPosition":{
        "hyf:HY_IndirectPosition":{
            "hyf:linearElement":{
                "@id":"https://geoconnex.us/ref/mainstems/"
            }
        }
    },
    "subjectOf":{
        "@type":"Dataset",
        "name":"Discharge data from USGS Monitoring Location AR008-331856091114601",
        "description":"Discharge data from USGS Streamgage at 16S01W10CC1 CH-32 WU",
        "provider":{
            "url":"https://waterdata.usgs.gov",
            "@type":"GovernmentOrganization",
            "name":"U.S. Geological Survey Water Data for the Nation"
        },
        "url":"https://waterdata.usgs.gov/monitoring-location/08282300/#parameterCode=00060",
        "variableMeasured":{
            "@type":"PropertyValue",
            "name":"discharge",
            "description":"Discharge in cubic feet per second",
            "propertyID":"https://www.wikidata.org/wiki/Q8737769",
            "url":"https://en.wikipedia.org/wiki/Discharge_(hydrology)",
            "unitText":"cubic feet per second",
            "qudt:hasQuantityKind":"qudt-quantkinds:VolumeFlowRate",
            "unitCode":"qudt-units:FT3-PER-SEC",
            "measurementTechnique":"observation",
            "measurementMethod":{
                "name":"Discharge Measurements at Gaging Stations",
                "publisher":"U.S. Geological Survey",
                "url":"https://doi.org/10.3133/tm3A8"
            }
        },
        "dc:accrualPeriodicity":"freq:daily",
        "dcat:temporalResolution":{
            "@value":"PT15M",
            "@type":"xsd:duration"
        },
        "distribution":[
            {
                "@type":"DataDownload",
                "name":"USGS Instantaneous Values Service",
                "contentUrl":"https://waterservices.usgs.gov/nwis/iv/?sites=08282300&parameterCd=00060&format=rdb",
                "encodingFormat":[
                    "text/tab-separated-values"
                ],
                "dc:conformsTo":"https://pubs.usgs.gov/of/2003/ofr03123/6.4rdb_format.pdf"
            },
            {
                "@type":"DataDownload",
                "name":"USGS SensorThings API",
                "contentUrl":"https://labs.waterdata.usgs.gov/sta/v1.1/Datastreams('0adb31f7852e4e1c9a778a85076ac0cf')?$expand=Thing,Observations",
                "encodingFormat":[
                    "application/json"
                ],
                "dc:conformsTo":"https://labs.waterdata.usgs.gov/docs/sensorthings/index.html"
            }
        ]
    }
}

```


## Raw jsonld output before template

```json
{
    "@context":[
        {
            "schema":"https://schema.org/",
            "type":"@type",
            "gsp":"http://www.opengis.net/ont/geosparql#"
        }
    ],
    "type":"schema:Place",
    "id":"'AR008-331856091114601'",
    "@iot.selfLink":"https://labs.waterdata.usgs.gov/sta/v1.1/Things('AR008-331856091114601')",
    "name":"AR008-331856091114601",
    "description":"Well",
    "Locations":[
        {
            "@iot.selfLink":"https://labs.waterdata.usgs.gov/sta/v1.1/Locations('8416841e-2d1b-11ec-ac1b-a32405a27bb1')",
            "@iot.id":"8416841e-2d1b-11ec-ac1b-a32405a27bb1",
            "name":"AR008-331856091114601",
            "description":"Well",
            "encodingType":"application/vnd.geo+json",
            "location":{
                "type":"Point",
                "coordinates":[
                    -91.1969333333333,
                    33.3169611111111
                ]
            }
        }
    ],
    "Datastreams":[
        {
            "@iot.selfLink":"https://labs.waterdata.usgs.gov/sta/v1.1/Datastreams('177000bd9f6c45e5909c1729e4aab7b0')",
            "@iot.id":"177000bd9f6c45e5909c1729e4aab7b0",
            "name":"177000bd9f6c45e5909c1729e4aab7b0",
            "description":"Flow rate, well / AR008-331856091114601-177000bd9f6c45e5909c1729e4aab7b0",
            "observationType":"Instantaneous",
            "unitOfMeasurement":{
                "name":"UNKNOWN",
                "symbol":"US Gal/min",
                "definition":""
            },
            "observedArea":{
                "type":"Point",
                "coordinates":[
                    -91.1969333,
                    33.3169611
                ]
            },
            "phenomenonTime":"2024-06-30T09:15:00Z/2024-07-10T22:00:00Z",
            "properties":{
                "Thresholds":[
                    {
                        "Name":"Operational limit (minimum)",
                        "Type":"ThresholdBelow",
                        "Periods":[
                            {
                                "EndTime":"9999-12-31T23:59:59.9999999+00:00",
                                "StartTime":"0001-01-01T00:00:00.0000000+00:00",
                                "SuppressData":true,
                                "ReferenceValue":-0.01,
                                "ReferenceValueToTriggerDisplay":null
                            }
                        ],
                        "ReferenceCode":"Operational limit - low-Public"
                    },
                    {
                        "Name":"Operational limit (maximum)",
                        "Type":"ThresholdAbove",
                        "Periods":[
                            {
                                "EndTime":"9999-12-31T23:59:59.9999999+00:00",
                                "StartTime":"0001-01-01T00:00:00.0000000+00:00",
                                "SuppressData":true,
                                "ReferenceValue":20000,
                                "ReferenceValueToTriggerDisplay":15000
                            }
                        ],
                        "ReferenceCode":"Operational limit - high-Public"
                    }
                ],
                "ParameterCode":"00058",
                "StatisticCode":"00011"
            }
        },
        {
            "@iot.selfLink":"https://labs.waterdata.usgs.gov/sta/v1.1/Datastreams('9aa77f35cea344a4a0e5715e05d057c3')",
            "@iot.id":"9aa77f35cea344a4a0e5715e05d057c3",
            "name":"9aa77f35cea344a4a0e5715e05d057c3",
            "description":"Precipitation, total, inches / AR008-331856091114601-9aa77f35cea344a4a0e5715e05d057c3",
            "observationType":"Instantaneous",
            "unitOfMeasurement":{
                "name":"in",
                "symbol":"in",
                "definition":""
            },
            "observedArea":{
                "type":"Point",
                "coordinates":[
                    -91.1969333,
                    33.3169611
                ]
            },
            "phenomenonTime":"2024-06-30T09:15:00Z/2024-07-10T22:00:00Z",
            "properties":{
                "ParameterCode":"00045"
            }
        }
    ],
    "Locations@iot.navigationLink":"https://labs.waterdata.usgs.gov/sta/v1.1/Things('AR008-331856091114601')/Locations",
    "HistoricalLocations@iot.navigationLink":"https://labs.waterdata.usgs.gov/sta/v1.1/Things('AR008-331856091114601')/HistoricalLocations",
    "Datastreams@iot.navigationLink":"https://labs.waterdata.usgs.gov/sta/v1.1/Things('AR008-331856091114601')/Datastreams",
    "state":"Arkansas",
    "county":"Chicot County",
    "country":"United States of America",
    "mapScale":24000,
    "stateCode":"AR",
    "wellDepth":"80.0",
    "agencyCode":"AR008",
    "countryFIPS":"US",
    "hydrologicUnit":"08050002",
    "decimalLatitude":33.3169611111111,
    "decimalLongitude":-91.1969333333333,
    "monitoringLocationUrl":"https://waterdata.usgs.gov/monitoring-location/331856091114601",
    "monitoringLocationName":"16S01W10CC1 CH-32 WU",
    "monitoringLocationType":"Well",
    "monitoringLocationNumber":"331856091114601",
    "locationHUCTwelveDigitCode":"080500020302",
    "decimalLatitudeStandardized":33.3169611111111,
    "decimalLongitudeStandardized":-91.1969333333333,
    "geometry":{
        "type":"Point",
        "coordinates":[
            -91.1969333333333,
            33.3169611111111
        ]
    },
    "gsp:hasGeometry":{
        "@type":"http://www.opengis.net/ont/sf#Point",
        "gsp:asWKT":{
            "@type":"http://www.opengis.net/ont/geosparql#wktLiteral",
            "@value":"POINT (-91.1969333333333 33.3169611111111)"
        }
    },
    "schema:geo":{
        "@type":"schema:GeoCoordinates",
        "schema:longitude":-91.1969333333333,
        "schema:latitude":33.3169611111111
    },
    "@id":"http://localhost:5000/collections/USGS/Things/items/'AR008-331856091114601'",
    "links":[
        {
            "type":"application/json",
            "rel":"root",
            "title":"The landing page of this server as JSON",
            "href":"http://localhost:5000?f=json"
        },
        {
            "type":"text/html",
            "rel":"root",
            "title":"The landing page of this server as HTML",
            "href":"http://localhost:5000?f=html"
        },
        {
            "rel":"alternate",
            "type":"application/geo+json",
            "title":"This document as JSON",
            "href":"http://localhost:5000/collections/USGS/Things/items/'AR008-331856091114601'?f=json"
        },
        {
            "rel":"self",
            "type":"application/ld+json",
            "title":"This document as RDF (JSON-LD)",
            "href":"http://localhost:5000/collections/USGS/Things/items/'AR008-331856091114601'?f=jsonld"
        },
        {
            "rel":"alternate",
            "type":"text/html",
            "title":"This document as HTML",
            "href":"http://localhost:5000/collections/USGS/Things/items/'AR008-331856091114601'?f=html"
        },
        {
            "rel":"collection",
            "type":"application/json",
            "title":"USGS Things",
            "href":"http://localhost:5000/collections/USGS/Things"
        }
    ]
}

```

## Notes

- previously the jsonld was being applied to another templates that weren't in the location/dataset oriented format
- old templates are now removed. So jsonld will output canonical format with @ that can then be applied to the new template

