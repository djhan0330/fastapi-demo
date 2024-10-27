#!/usr/bin/env python3

from fastapi import FastAPI
from typing import Optional
from pydantic import BaseModel
import json
import os

app = FastAPI()

@app.get("/")  # zone apex
def zone_apex():
    return {"Today is": "Saturday!"}

@app.get("/add/{a}/{b}")
def add(a: int, b: int):
    return {"sum": a + b}

@app.get("/square/{c}")
def square(c: int):
    return {"square": c * c}

@app.get("/multiply/{d}/{e}")
def add(a: int, b: int):
    return {"multiply": d * e}
