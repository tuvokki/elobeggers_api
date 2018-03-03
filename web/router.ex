defmodule ElobeggersApi.Router do
  use ElobeggersApi.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ElobeggersApi do
    pipe_through :api
  end
end
