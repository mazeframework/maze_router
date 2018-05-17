require "spec"
require "../src/aaze_router"

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
