#!/bin/bash
docker run -d -p 5432:5432 -e POSTGRES_USER=dudu -e POSTGRES_PASSWORD=luciferus666 -e POSTGRES_DBNAME=apppy postgres:15.1
docker build -t dudu:1.0  .
docker run -d dudu:1.0 -p 3000:8080 