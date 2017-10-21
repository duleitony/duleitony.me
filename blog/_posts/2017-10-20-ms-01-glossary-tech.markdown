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

| Component  	| Responsibilites   | Required         |Stack             |
|-------------	|-----------------	|----------------- |----------------- |
| Service Regisger&Discovery 	| TBD    | Y| Netflix Eureka, Zookeeper, HashicorpConsul|
| API Gateway		|  TBD      |N|Netfix Zuul|
| Load Balancing			| TBD  |N|Netfix Ribon|
| Centralizing Logging			| TBD  |N|ELK Stack (LogStash)|
| Disbributed Tracing			| TBD  |N|Spring Cloud Seulth, Zipkin, Pinpoint, Skywalking|
| Monitor 	| TBD			|Y||




## Microservices Concerns and Tech Stacks

In Microservice, what protocol should be used to build Microservices is a hot topic.
Basically, focusing on these two options: RPC or RESTful

### RPC - Remote Procedure Call

| Framework  	| Features List     	|
|-------------	|-----------------	|
| Apache Thrift 	| 	数据定义／RPC服务			|
| Dubbo 	| 无			|
| Google Protobuf		|  数据定义      |
| gRPC			| RPC服务  |

### RESTful

* Spring Cloud



