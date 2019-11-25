# placeholder

Placeholder service keep up the docker container without resource usage. Tool to setup controlled tests for build heavy applications or distributed systems.

#### Usage

Use the docker image as a builder.

```
FROM pumpkinseed/placeholder AS builder

FROM alpine
COPY --from=builder /go/bin/placeholder /bin/placeholder

RUN {yourservice} &

ENTRYPOINT ["placeholder"]
```

- It makes able to control the start/restart flow without the container stop, so when the development of clustered distributed system happens it makes you able to restart the nodes on a controlled flow.
- For that purpose you can use the `docker run -it ...` or there is a simplified solution, [invoker](github.com/PumpkinSeed/invoker).