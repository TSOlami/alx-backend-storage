#!/usr/bin/env python3
"""A Python function that inserts a new document
in a collection based on kwargs:

Prototype: def insert_school(mongo_collection, **kwargs):
mongo_collection will be the pymongo collection object
Returns the new _id
"""


import pymongo


def insert_school(mongo_collection, **kwargs):
    """
    Inserts a new document in a collection
    """
    new_document = mongo_collection.insert_one(kwargs)
    return new_document.inserted_id