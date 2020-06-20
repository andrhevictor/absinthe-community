FROM elixir:1.10-slim

RUN apt update \
  && apt install -y inotify-tools curl build-essential 

RUN mix local.hex --force \
  && mix local.rebar --force

CMD ["mix", "phx.server"]
