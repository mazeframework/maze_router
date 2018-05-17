require "spec"
require "../src/maze_router"

def build
  Maze::Router::RouteSet(Symbol).new.tap do |router|
    router.add "/get", :root
  end
end

def build(&block)
  router = build
  with router yield
  router
end
