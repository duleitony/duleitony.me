---
layout:     post
title:      "Redis Install"
subtitle:   ""
date:       2017-10-18 21:00:00
author:     "Tony"
catalog: true
tag: [Database]
header-img: "img/blog-bg.jpg"
---

> Let's try Redis.

## Introduction

Redis is an open source (BSD licensed), in-memory data structure store, used as a database, cache and message broker.
It supports data structures such as strings, hashes, lists, sets, sorted sets with range queries, bitmaps, hyperloglogs
and geospatial indexes with radius queries. Redis has built-in replication, Lua scripting, LRU eviction, transactions and different levels of on-disk persistence,
and provides high availability via Redis Sentinel and automatic partitioning with Redis Cluster.

## Installation

Download, extract and compile Redis with:

```bash
$ wget http://download.redis.io/releases/redis-4.0.2.tar.gz
$ tar xzf redis-4.0.2.tar.gz
$ cd redis-4.0.2
$ make

```

Copy Redis server and cli command to bin:

```bash
$ sudo cp src/redis-server /usr/local/bin/
$ sudo cp src/redis-cli /usr/local/bin/
```

The binaries that are now compiled are available in the src directory. Run Redis with:

```bash
$ redis-server
```

You can interact with Redis using the built-in client:

```bash
127.0.0.1:6379> ping
PONG
$ redis-cli
127.0.0.1:6379> set foo bar
OK
127.0.0.1:6379> get foo
"bar"
```

Shutdown Redis server

```bash
$ redis-cli shutdown
```


## Create a database/table


## Java Client

