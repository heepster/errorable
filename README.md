Errorable
=========

Pronounced like 'adorable' :D

This gem adds ActiveRecord-like error tracking to standard ruby classes.  It's super lightweight and requires zero dependencies.  

# Installation

If you're using Rails/Bundle, include `Errorable` in your Gemfile:
```
gem 'errorable'
```

Otherwise, you can install it from rubygems.org:
```
gem install errorable
```

# Usage

Include the `Errorable` module in your class: 

```
class MyClass
  include Errorable
end
```

Errorable gives you access to these methods: 

1.  `get_errors`
2.  `add_error`
3.  `flush_errors`
4.  `errors?`

You can now add/retrieve errors:

```
@my_class = MyClass.new
@my_class.add_error("Hello, there was a problem!")
@my_class.add_error("Oh no, another problem!")
@my_class.get_errors
=> [ "Hello, there was a problem!", "Oh no, another problem!" ]
```

`flush_errors` returns the errors and empties out the cache of errors.

`errors?` returns a boolean to tell you if there are errors or not.

