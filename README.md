This is not a rails app! This is an EXPERIENCE!
To run through the exercise: 
  1. terminal: `gem install sinatra puma ldclient-rb:5.5.6`
  2. open feature.rb and add the LAUNCH_DARKLY_SDK_KEY into the obvious place
  3. terminal `puma`
  4. in browser, go to localhost:9210. See "Hello World"
  5. at localhost:9210/brand, See "Hello Negotiators" OR "Hello Orderizers" (depending on feature flag)
  6. Uncomment in demo_app.rb, line #8. Restart puma
  7. Now, flag changes in Launch Darkly do not work. 
