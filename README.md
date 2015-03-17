## ElasticSearch Dockerfile

[ElasticSearch](http://http://www.elasticsearch.org/) [Dockerfile](https://www.docker.io/learn/dockerfile/).  Also published to public [Docker Registry](https://index.docker.io/).

### Installation

1. Install [Docker](https://www.docker.io)

1. Download image from public Docker Registry:

  ```
  docker pull dockerize/logstash
  ```

   or build an image from the Dockerfile:

   ```
   docker build -t dockerize/logstash github.com/dockerize/logstash
   ```

### Usage

```
docker run -d -v <data-dir>:/data dockerize/logstash
```

#### Attach persistent/shared directories

1. Create a mountable data directory <data-dir> on the host.

1. Create Logstash config file at <data-dir>/logstash.conf.

1. Start a container by mounting data directory and specifying the custom configuration file:

```
docker run -d -v <data-dir>:/data doockerize/logstash /logstash/bin/logstash agent -f <logstash.conf>
```