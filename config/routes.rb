Rails.application.routes.draw do
  get("/", {:controller => "zebra", :action => "puppy"})

  get("/square/new", {:controller => "zebra", :action => "kitten"})

  get("/square/results", {:controller => "zebra", :action => "elephant"})

  get("/square_root/new", {:controller => "zebra", :action => "giraffe"})

  get("/square_root/results", {:controller => "zebra", :action => "tiger"})

  get("/random/new", {:controller => "zebra", :action => "hen"})

  get("/random/results", {:controller => "zebra", :action => "chicken"})

  get("/payment/new", {:controller => "zebra", :action => "deer"})

  get("/payment/results", {:controller => "zebra", :action => "moose"})

end
