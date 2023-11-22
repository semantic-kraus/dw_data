# bin/bash

echo "delete namedgraphs"
curl -D- -X DELETE \
    -u $R_USER_V \
    'https://varuna.arz.oeaw.ac.at:8080/sk/sparql?c=<https://sk.acdh.oeaw.ac.at/project/dritte-walpurgisnacht>&c=<https://sk.acdh.oeaw.ac.at/provenance>&c=<https://sk.acdh.oeaw.ac.at/model>&c=<https://sk.acdh.oeaw.ac.at/general>'
sleep 300

echo "add namedgraph data.trig"
curl -u $R_USER_V \
    $R_ENDPOINT_V \
    -H 'Content-Type: application/x-trig; charset=UTF-8' \
    -H 'Accept: text/boolean' \
    -d @rdf/data.trig
sleep 600

echo "add namedgraph quotes.trig"
curl -u $R_USER_V \
    $R_ENDPOINT_V \
    -H 'Content-Type: application/x-trig; charset=UTF-8' \
    -H 'Accept: text/boolean' \
    -d @rdf/quotes.trig
sleep 600

echo "add namedgraph persons.trig"
curl -u $R_USER_V \
    $R_ENDPOINT_V \
    -H 'Content-Type: application/x-trig; charset=UTF-8' \
    -H 'Accept: text/boolean' \
    -d @rdf/persons.trig
sleep 600

echo "add namedgraph texts.trig"
curl -u $R_USER_V \
    $R_ENDPOINT_V \
    -H 'Content-Type: application/x-trig; charset=UTF-8' \
    -H 'Accept: text/boolean' \
    -d @rdf/texts.trig