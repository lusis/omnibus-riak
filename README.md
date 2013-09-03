# omnibus-riak
This is a somewhat functional omnibus build of Riak.

## What kind of dumbass omnibus's Riak when it's already rebar'd?
The kind of poor soul who has to vendor everything to get around asinine enterprise requirements, that's who. Basically the only external dep that Riak really had outside of the rebar build was openssl. Unfortunately that was even too much.

## So why keep around Erlang after the fact?
This particular setup is actually going to be fitted into a mega-omnibus package that contains EVERYTHING we need except the JVM. This means RabbitMQ which hasn't discovered the world of rebar yet for some goddamn reason. I'm not an erlang dev so I have no idea how much modification is really needed to make it a reality or I would have already made a pull request.

Until then, Omnibus it is.
