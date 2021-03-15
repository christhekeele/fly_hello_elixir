Hello Elixir
============

> ***Deploying a minimal Elixir web app to fly.io***

Commands
--------

<details>
    <summary>mix new hello_elixir --sup</summary>

```
* creating README.md
* creating .formatter.exs
* creating .gitignore
* creating mix.exs
* creating lib
* creating lib/hello_elixir.ex
* creating lib/hello_elixir/application.ex
* creating test
* creating test/test_helper.exs
* creating test/hello_elixir_test.exs

Your Mix project was created successfully.
You can use "mix" to compile it, test it, and more:

    cd hello_elixir
    mix test

Run "mix help" for more commands.
```

</details>

<details>
    <summary>cd hello_elixir</summary>
</details>

<details>
    <summary>mix deps.get</summary>

```
Resolving Hex dependencies...
Dependency resolution completed:
Unchanged:
  cowboy 1.1.2
  cowlib 1.0.2
  mime 1.5.0
  plug 1.11.1
  plug_cowboy 1.0.0
  plug_crypto 1.2.1
  ranch 1.3.2
  telemetry 0.4.2
All dependencies are up to date
```

</details>

<details>
    <summary>mix run --no-halt</summary>

    Open `http://localhost:4000/`
</details>

<details>
    <summary>docker-compose up</summary>

    Open `http://localhost:4000/`
</details>

<details>
    <summary>flyctl init</summary>

```
? App Name (leave blank to use an auto-generated name) hello-elixir

Automatically selected personal organization:

? Select builder: None
    (Do not set a builder)
? Select Internal Port: 4000
New app created
  Name         = hello-elixir
  Organization = personal
  Version      = 0
  Status       =
  Hostname     = <empty>

App will initially deploy to sea (Seattle, Washington (US)) region

Wrote config file fly.toml
```

</details>

<details>
    <summary>flyctl deploy</summary>

```Deploying hello-elixir
==> Validating App Configuration
--> Validating App Configuration done
Services
TCP 80/443 ⇢ 4000

Deploy source directory '/Users/keele/Projects/fly/guides/elixir/hello-elixir/hello_elixir'
==> Building with Dockerfile
Using Dockerfile Builder: /Users/keele/Projects/fly/guides/elixir/hello-elixir/hello_elixir/Dockerfile
Step 1/9 : FROM hexpm/elixir:1.11.3-erlang-23.2.7-alpine-3.13.2
 ---> 5fcccded4ea7
Step 2/9 : RUN mkdir /app
 ---> Using cache
 ---> dbb7875e7dc1
Step 3/9 : COPY . /app
 ---> 85f9524bf7b9
Step 4/9 : WORKDIR /app
 ---> Running in e67891934624
 ---> 4d9077360a69
Step 5/9 : RUN mix local.rebar --force
 ---> Running in 5c596713a4f6
* creating /root/.mix/rebar
* creating /root/.mix/rebar3
 ---> fd251d67518a
Step 6/9 : RUN mix local.hex --force
 ---> Running in 884456b2662b
* creating /root/.mix/archives/hex-0.21.1
 ---> 367ea726bfe6
Step 7/9 : RUN mix deps.get
 ---> Running in 0a3f4a29a2a0
Resolving Hex dependencies...
Dependency resolution completed:
Unchanged:
  cowboy 1.1.2
  cowlib 1.0.2
  mime 1.5.0
  plug 1.11.1
  plug_cowboy 1.0.0
  plug_crypto 1.2.1
  ranch 1.3.2
  telemetry 0.4.2
All dependencies are up to date
 ---> 69db70c6fe54
Step 8/9 : RUN mix compile
 ---> Running in 89d6f75b0686
 ---> 56608338e167
Step 9/9 : CMD ["mix", "run", "--no-halt"]
 ---> Running in 82757713c957
 ---> 0d4addca89ee
Successfully built 0d4addca89ee
Successfully tagged registry.fly.io/hello-elixir:deployment-1615831373
--> Building with Dockerfile done
Image: registry.fly.io/hello-elixir:deployment-1615831373
Image size: 76 MB
==> Pushing Image
The push refers to repository [registry.fly.io/hello-elixir]
ebf4fbb8fc3d: Pushed
6629b53ffcc7: Pushed
52101febb221: Pushed
eb089b1292e7: Pushed
c35db8fc4dbc: Layer already exists
4a2c2b2de25d: Layer already exists
75c2ce5e9e21: Layer already exists
8f1a814a1f30: Layer already exists
cb381a32b229: Layer already exists
deployment-1615831373: digest: sha256:1608c3ce6fb8c8fa4dece5d1f2f40193b3704a640253f22e801fb2f002a69024 size: 2210
--> Done Pushing Image
==> Creating Release
Release v1 created
Deploying to : hello-elixir.fly.dev

Monitoring Deployment
You can detach the terminal anytime without stopping the deployment

1 desired, 1 placed, 1 healthy, 0 unhealthy [health checks: 1 total, 1 passing]
--> v1 deployed successfully
```

</details>

<details>
    <summary>flyctl open</summary>

```
Opening http://hello-elixir.fly.dev/
```

</details>
