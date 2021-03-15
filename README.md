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
