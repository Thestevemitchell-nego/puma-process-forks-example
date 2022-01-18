This is not a rails app!
To run: 
  1. terminal: `gem install sinatra puma ldclient-rb:5.5.6`
  2. open feature.rb and add the LAUNCH_DARKLY_SDK_KEY into the obvious place
  3. terminal `puma`
  4. in browser, go to localhost:9210. See "Hello World"
  5. at localhost:9210/brand, See "Hello Negotiators" OR "Hello Orderizers" (depending on feature flag)
