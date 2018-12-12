defmodule FrbWeb.Router do
  use FrbWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", FrbWeb do
    pipe_through :browser

    get "/", PageController, :index
  end

  # Other scopes may use custom stacks.
  # scope "/api", FrbWeb do
  #   pipe_through :api
  # end

  forward "/graphql",
          Absinthe.Plug,
          schema: Frb.Schema

  # For the GraphiQL interactive interface, a must-have for happy frontend devs.
  forward "/graphiql",
          Absinthe.Plug.GraphiQL,
          schema: Frb.Schema,
          interface: :simple
end
