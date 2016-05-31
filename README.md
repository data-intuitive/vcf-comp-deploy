# Variant comparison

Prerequisites:

- `docker-compose`: This may change later, but for now it's handy.
- 5GB of RAM at a minimum[^1].

In order to keep an eye on resource utilization, you can use `docker stats`:

```
CONTAINER           CPU %               MEM USAGE / LIMIT     MEM %               NET I/O               BLOCK I/O             PIDS
3db00a919552        15.64%              2.63 GB / 5.193 GB    50.65%              819.6 MB / 9.793 MB   78.03 MB / 15.53 MB   166
```

[^1]: Make sure Docker can use this 5GB of RAM. On a Mac this may involve some virtualBox configuration. With the new Docker beta for Mac, the memory limit can be set via the task bar.


Quickstart:

```
git clone xxxx
cd xxxx
docker-compose up
```

Now, connect to <localhost:9000> in your browser. Please note that on Mac, you may need to use `boot2docker` if you did not yet sign up for the Docker beta on Mac!

