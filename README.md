# TestApp

versions: phx 1.4.1 , Elixir 1.7.4 , Erlang/OTP 20 [erts-9.2]

To reproduce the issue:

  elixir --name start@127.0.0.1 --cookie cookie   -S  mix phx.server

  Then, a worker will print after 10 seconds an info log of :init.get_status() which will show {:starting, :started}


If you try starting it with 
iex --name start@127.0.0.1 --cookie cookie   -S  mix phx.server

it will show {:started, :started}
