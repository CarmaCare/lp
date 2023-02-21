# LP

Lookup vehicles by License Plate.

## Setup

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

```
$ iex -S mix phx.server
```

## Request a vehicle by license plate:

```
$ curl -v "localhost:4000/api/vehicles?lp=abc123"
```

That will generate some output like:
```
*   Trying 127.0.0.1:4000...
* Connected to localhost (127.0.0.1) port 4000 (#0)
> GET /api/vehicles?lp=abc123 HTTP/1.1
> Host: localhost:4000
> User-Agent: curl/7.86.0
> Accept: */*
>
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< cache-control: max-age=0, private, must-revalidate
< content-length: 60
< content-type: application/json; charset=utf-8
< date: Tue, 21 Feb 2023 13:30:40 GMT
< server: Cowboy
< x-request-id: F0WxpOYpVnv3560AAMwG
<
* Connection #0 to host localhost left intact
{"make":"Toyota","model":"Corolla","state":"TX","year":2020}
```

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
