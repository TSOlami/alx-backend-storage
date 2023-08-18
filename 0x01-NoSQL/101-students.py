#!/usr/bin/env python3
""" returns all students sorted by average score"""

def top_students(mongo_collection):
    """
    The top must be ordered
    """
    pipeline = [
        {"$project": {
            "name": "$name",
            "averageScore": {"$avg": "$topics.score"}
        }},
        {"$sort": {"averageScore": -1}}
    ]

    return list(mongo_collection.aggregate(pipeline))