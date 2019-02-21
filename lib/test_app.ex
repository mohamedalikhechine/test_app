defmodule TestApp do
  use GenServer
  require Logger

  def child_spec(_) do
    Supervisor.Spec.supervisor(__MODULE__, [])
  end

  def start_link() do
    GenServer.start_link(__MODULE__, [])
  end

  def init(_) do
    Process.send_after(self(), :get_data, 10000)
    {:ok, 1}
  end

  def handle_info(:get_data, state) do
    Logger.info(" #{inspect(:init.get_status())}")
    {:noreply, state}
  end
end