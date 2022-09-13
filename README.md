# Simple-App
Clone from
```
https://github.com/Mattible/Simple-App
```
A simple Node Js based web app involving a CI pipeline and testing.

[![Build Status](https://travis-ci.com/Mattible/Simple-App.svg?branch=master)](https://travis-ci.com/Mattible/Simple-App)

# Details

Language: Node Js

    Dependancies:
  
    - Express
    - Mocha
    - Chai
    - Chai-http

    Development Dependancies:

    - eslint
    - eslint plugin node

Endpoints:

``` / ```

Has the following http response:

```{"message":"Technical Challenge, please see /healthcheck for application information"}```


``` /healthcheck ```

Has the following http response:

```{
  "myapplication": [
    {
      "version": "1.0",
      "description" : "pre-interview technical test",
      "lastcommitsha": "abc57858585"
    }
  ]
}
```

# Overview


Each Stage:


	1. Getting Started
	2. local Node Js
		2.1 Prerequisites
		2.2 Running with Node Js
	3. local Docker
		3.1 Prequisites
		3.2 Running with Docker
	4. Travis Pipeline
	5. Limitations
	6. Future Improvements
  

# 1. Getting Started
  
The below instructions will illustrate how to start and run the simple web app in either a docker container locally or out of Node Js on the local host.


# 2. Local Node Js

Instructions to run with Node Js:

### 2.1 Prerequisites

  - Node Js (Tested on Node V12.1.0 and npm 6.9.0)
  - git


### 2.1 Running with Node Js

Clone the repository:

`git@github.com:Mattible/Simple-App.git`

Install the Node Js Dependancies:

`make install`

Test the Application:

`make test-app`

Start the Application:

`make start`

The App starts on port 8000, therefore the endpoints are available here:

http://localhost:8000


http://localhost:8000/healthcheck


# 3. Local Docker

Instructions to build/run inside docker containers:

### 3.1 Prerequisites

  - Docker 17.05+


### 3.1 Running with Docker


Build the docker image:

`make build`

Run the newly created docker image:

`make run`

The App starts on port 8000, therefore the endpoints are available here:

http://localhost:8000


http://localhost:8000/healthcheck

The Docker image is always tagged as mcallinan/simpleapp:latest.


# 4. Travis Pipeline

This project has a small CI pipeline that will test any new commits to ensure that the application still functions after any new updates, this is done by Travis CI and can be seen here:

Pipeline:
https://travis-ci.com/Mattible/Simple-App

Last Build: 
[![Build Status](https://travis-ci.com/Mattible/Simple-App.svg?branch=master)](https://travis-ci.com/Mattible/Simple-App)


# 5. Limitations:

Limitations:

  - No https support, only http support.
  - Test cases don't cover exceptions.
  - Test Coverage could be improved.
  - Docker image could be further optimized.

In order for this application to meet production readiness I would HIGHLY recommend having the above resolved.

# 6. Future Improvements:

Next improvements:

  - Git Branching strategy for future releases, such as Git Flow.
  - Better Test Coverage, including exception testing.
  - The use of a docker repository store to store and retrieve a custom docker image.
  - The use of a docker security scanning tool to verify the docker images.
  - Smaller Docker image (current ~97MB).
  - Https support.
  - Better logging and tracing for debugging.



 
