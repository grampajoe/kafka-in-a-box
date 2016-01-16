# Kafka in a Box

Run a simple Kafka broker with Docker:

    $ docker run --rm -it -p 9092:9092 -p 2181 grampajoe/kafka-in-a-box

That'll start a Kafka broker that's listening on `[docker machine ip]:9092`,
along with its own Zookeeper server at `[docker machine ip]:2181`.

**Only use this for testing and development! Maybe not even that! It's not
very good and you'll lose data!**

Kafka's scripts and stuff are available, too, e.g.

    $ docker run --rm -it grampajoe/kafka-in-a-box bin/kafka-topics.sh --list \
        --zookeeper zk-host:2181
