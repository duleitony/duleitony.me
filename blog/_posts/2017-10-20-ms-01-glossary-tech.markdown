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


## Microservice Concerns

| Concerns| Responsibilites   | Required         |
|-------------	|-----------------	|----------------- |
| Service Register 	          | TBD    |Y    |
| Service Communication       | TBD    |Y    |
| API Gateway		          | TBD    |N    |
| Resilience&Fault Tolerance  | Circuit Breaker, Service Degradation, Current Limiting    |N    |
| Configuration Management    | TBD    |N    |
| Distributed Tracing         | TBD    |N    |
| Centralizing Logging	      | TBD    |N    |
| Monitoring                  | TBD    |N    |



## Microservices Concerns and Tech Stacks

| Concerns  	 | Dubbo            | Spring Cloud    | Other Solution |
|--------------	 |-----------------	|-----------------|-----------------|
| Service Register           |Zookeeper  |Netflix Eureka   | Hashicorp Consul|
| Service Communication      |RPC        |REST API         | Apache Thrift, gRPC|
| API Gateway                |N/A        |Netfix Zuul|     ||
| Resilience&Fault Tolerance |?          |Netflix Hystrix  |Turbine&Ribon|
| Load Balancing             |?          |Netflix Ribon||
| Configuration Management   |?          |Spring Config|Config Server, Consul, Netfix Archaius|
| Distributed Tracing        |?          |Spring Cloud Seulth |Zipkin, Pinpoint, Skywalking||
| Centralizing Logging       |?          |ELK Stack (LogStash)||
| Monitoring                 |?          |||
