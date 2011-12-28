# Reasonable Ruby

This little repository contains some of the code samples that I used in my
presentation at RubyConf 2011 titled "Keeping Ruby Reasonable". You can find the
slides for the presentation
[here](http://www.slideshare.net/jballanc/keeping-ruby-reasonable), and the
video of the presentation is available from Confreaks
[here](http://confreaks.com/videos/671-rubyconf2011-keeping-ruby-reasonable).


## Contents

### Greetings

This is a simple example of the potential danger of Ruby's first-class
environments. Since every closure in Ruby captures all elements of its
environment, and since the captured environment is live and mutable, it is
possible to "rewrite" parts of a program if you have a handle to a closure.

### Capture the Flag

This is a simple little game to demonstrate the difference between Proc objects
and Method objects in Ruby. Both can be used to extract first-class
environments, but only those extracted from Proc objects can be used to modify
the defining scope.
