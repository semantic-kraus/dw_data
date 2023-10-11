# bin/bash

# bin/bash

curl -D- -X DELETE \
    -u $R_USER \
    --data-urlencode 'c=<https://sk.acdh.oeaw.ac.at/project/dritte-walpurgisnacht>' \
    --data-urlencode 'c=<https://sk.acdh.oeaw.ac.at/provenance>' \
    --data-urlencode 'c=<https://sk.acdh.oeaw.ac.at/model>' \
    --data-urlencode 'c=<https://sk.acdh.oeaw.ac.at/general>' \
    $R_ENDPOINT

curl -u $R_USER \
    $R_ENDPOINT \
    -H 'Content-Type: application/x-trig; charset=UTF-8' \
    -H 'Accept: text/boolean' \
    -d @rdf/data.trig

curl -u $R_USER \
    $R_ENDPOINT \
    -H 'Content-Type: application/x-trig; charset=UTF-8' \
    -H 'Accept: text/boolean' \
    -d @rdf/quotes.trig

curl -u $R_USER \
    $R_ENDPOINT \
    -H 'Content-Type: application/x-trig; charset=UTF-8' \
    -H 'Accept: text/boolean' \
    -d @rdf/persons.trig

curl -u $R_USER \
    $R_ENDPOINT \
    -H 'Content-Type: application/x-trig; charset=UTF-8' \
    -H 'Accept: text/boolean' \
    -d @rdf/texts.trig