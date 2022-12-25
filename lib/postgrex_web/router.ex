defmodule PostgrexWeb.Router do
  use PostgrexWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", PostgrexWeb do
    pipe_through :api

    post "/postgrex", PostgrexController, :info
  end
end
