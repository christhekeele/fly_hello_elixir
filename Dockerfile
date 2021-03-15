# Use exact versions selected in .tool-versions
FROM hexpm/elixir:1.11.3-erlang-23.2.7-alpine-3.13.2

# Copy the project into a working directory
RUN mkdir /app
COPY . /app
WORKDIR /app

# Install erlang package manager
RUN mix local.rebar --force
# Install Elixir package manager
RUN mix local.hex --force

# Fetch dependencies
RUN mix deps.get

# Build the project
RUN mix compile

# Run our application
CMD ["mix", "run", "--no-halt"]
