---
layout:     post
title:      "Build a Private Maven Repo with Docker"
subtitle:   ""
date:       2017-11-13 17:00:00
author:     "Tony"
catalog: true
tag: [docker]
header-img: "img/blog-bg.jpg"
---

> Let's try building a private maven repository with Nexus by Docker.

## \u5B89\u88C5\u73AF\u5883
1. VPS\u4E00\u53F0 
2. Ubuntu 17.04 

## Installation

\u5B89\u88C5docker:

```bash
$ sudo apt install docker.io
$ xxx@localhost:~$ docker version
Client:
 Version:      1.12.6 
 API version:  1.24
 Git commit:   78d1802
 Built:        Tue Mar 14 09:47:15 2017
 OS/Arch:      linux/amd64
Cannot connect to the Docker daemon. Is the docker daemon running on this host?

```

\u542F\u52A8docker:

```bash
$ sudo systemctl start docker
$ sudo service docker start
```

\u67E5\u627Enexus
```bash
$ docker search nexus
NAME                                         DESCRIPTION                                     STARS     OFFICIAL   AUTOMATED
sonatype/nexus                               Sonatype Nexus                                  358                  [OK]
sonatype/nexus3                              Sonatype Nexus Repository Manager 3             254
sonatype/docker-nexus3                       Sonatype Nexus 3 [DEPRECATED]                   26                   [OK]
clearent/nexus                                                                               21
baselibrary/nexus                            ThoughtWorks Docker Image: nexus                7                    [OK]
bradbeck/nexus-https                         Dockerized version of Nexus Repo Manager 3...   5                    [OK]
accenture/adop-nexus                         ADOP Nexus                                      5                    [OK]
frekele/nexus                                docker run --rm --name nexus -p 8081:8081 ...   4                    [OK]
travix/sonatype-nexus                        Container to run Sonatype Nexus Profession...   3                    [OK]
shifudao/nexus3                              clone from nexus3 image but based from ope...   3                    [OK]
fabric8/nexus                                                                                2                    [OK]
madmuffin/nexus3                             Sonatype Nexus3 Milestone7 docker image         2                    [OK]
openshiftdemos/nexus                         Sonatype Nexus with JBoss Enterprise repos...   1
generix/nexus-data                           Data container for nexus                        1
mcreations/jenkins-with-nexus-support        Jenkins image with correct SSL config for ...   0                    [OK]
stangenberg/nexus                            Docker container featuring Sonatype's Nexu...   0                    [OK]
airdock/nexus                                Docker image for Nexus Repository Manager       0                    [OK]
ffung/nexus                                                                                  0
ocadotechnology/nexus-data-pipeline-backup   Backup Nexus3 with AWS Data Pipeline and E...   0                    [OK]
trialgrid/nexus-docker                       Nexus docker image                              0
atzoum/aarch64-nexus3                        Nexus3 for Arm 64bit Architecture               0                    [OK]
ccdevopsford/nexus-resource                                                                  0
nayarsystems/nexus                           Nexus RPC + RethinkDB                           0
openfrontier/nexus                           Official Nexus docker plus p2 plugins.          0                    [OK]
enieuw/nexus3-oss                            nexus3-oss                                      0                    [OK]
```

\u5B89\u88C5\u4E00\u4E2A\u5206\u6570\u6700\u9AD8\u7684:

```bash
$  sudo docker pull sonatype/nexus
```

\u542F\u52A8\u5BB9\u5668

```bash
$ sudo docker run -d -p 8081:8081 --name nexus sonatype/nexus
$ sudo docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
f84a4bb18aec        sonatype/nexus      "/bin/sh -c '${JAVA_H"   22 minutes ago      Up 22 minutes       0.0.0.0:8081->8081/tcp   nexus
```

\u8BBF\u95EE\u67E5\u770B\uFF0C admin admin123
http://127.0.0.1:8081/nexus