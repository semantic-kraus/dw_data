import uuid
from random import randint
from rdflib import URIRef, Literal, XSD


def date_to_literal(date_str):
    if len(date_str) == 4:
        return Literal(date_str, datatype=XSD.gYear)
    elif len(date_str) == 5 and date_str.startswith('-'):
        return Literal(date_str, datatype=XSD.gYear)
    elif len(date_str) == 7:
        return Literal(date_str, datatype=XSD.gYearMonth)
    elif len(date_str) == 10:
        return Literal(date_str, datatype=XSD.date)
    else:
        return Literal(date_str)


def make_uri(domain="https://sk.acdh.oeaw.ac.at/", version="v0"):
    return URIRef(f"{domain}{version}/{uuid.uuid1()}")