Rails.application.routes.draw do
  get("/", {:controller => "zebra", :action => "puppy"})

  get("/square/new", {:controller => "zebra", :action => "kitten"})

  get("/square/results", {:controller => "zebra", :action => "elephant"})
end
