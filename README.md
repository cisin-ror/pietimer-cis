pietimer-cis 
=================

With the help of this gem you can easily have the counter as a pie for your application  on load(page load). :-)

INSTALLTION

First thing you need to do is the installation , you can follow the below mentioned steps to install the gem inside your rails application.
You need to add sudo if you are not using rvm(ruby version manager)

```
gem install pietimer-cis -v 0.0.5
```

 
Add this following line in your Gemfile and then run bundle install. 
```
gem "pietimer-cis", "~> 0.0.5"
```



USAGE

Once you have installed this gem you can do the following :-

#Call generater for required js of pietimer-cis.
```
rails generate pietimer_cis:install
```

#application.html.haml
```
  #demo
```

# 'pietimer_tag' put where you want the pietimer.
```
  = pietimer_tag(:id=>"demo",:time=>10,:color=>'green',:callback=>"function(){alert('Hello World')}") 
```
here,in pietimer_tag we can set any time period,color and can call any function but that must be defined.

OR

```
  = pietimer_tag(:id=>"demo",:time=>10,:color=>'green',:callback=>"function(){test();}")
```
 
```Javascript
function test(){
	alert("This is testing");
}
```

