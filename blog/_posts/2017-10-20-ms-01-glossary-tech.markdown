---
layout:     post
title:      "Microservices Glossary and Tech Stack"
subtitle:   "Microservice-01"
date:       2017-10-20 14:00:00
author:     "Tony"
catalog: true
tag: [Microservice]
header-img: "img/blog-bg.jpg"
---

## Microservice

Normally, when people say Microservice, it means Microservice Architecture.
Here is the definition by Martin:
> The term "Microservice Architecture" has sprung up over the last few years to describe a particular way of designing software applications as suites of independently deployable services.
> While there is no precise definition of this architectural style,
> there are certain common characteristics around organization around business capability,
> automated deployment, intelligence in the endpoints, and decentralized control of languages and data.


## Components in Microservice

| Component  	| Responsibilites   | Required         |
|-------------	|-----------------	|----------------- |
| Service Register 	    | TBD    |Y    |
| Service Communication | TBD    |Y    |
| API Gateway		    | TBD    |N    |
| Circuit Breaker	    | TBD    |N    |
| Load Balancing      	| TBD    |N    |
| Config            	| TBD    |N    |
| Distributed Tracing   | TBD    |N    |
| Centralizing Logging	| TBD    |N    |
| Monitoring            | TBD    |N    |




## Microservices Components and Tech Stacks

| Component  	 | Dubbo            | Spring Cloud    | Open-source |
|--------------	 |-----------------	|-----------------|-----------------|
| Service Register      |Zookeeper  |Netflix Eureka   | Cousel|
| Service Communication |RPC        |REST API         | Apache Thrift, gRPC|
| API Gateway           |N/A        |Netfix Zuul|     ||
| Circuit Breaker       |?          |Netflix Hystrix  ||
| Load Balancing        |?    |||
| Config                |?    |Spring Config||
| Distributed Tracing   |?    |Spring Cloud Seulth |Zipkin, Pinpoint, Skywalking||
| Centralizing Logging  |?    |ELK Stack (LogStash)||
| Monitoring            |?    |||
