## GTween

GTween is a small but extremely robust ActionScript 3 library for programmatic tweening, animation, and transitions, built by Grant Skinner of [gskinner.com](http://www.gskinner.com/). It is currently comprised of 3 key classes:

* **GTween (3.5kb)**. A robust tweening engine, packed full of innovative features.
* **GTweenTimeline (1kb)**. A powerful virtual timeline that extends GTween to enable you to sequence tweens and actions.
* **GTweener (0.5kb)**. A static interface to GTween.

It also comes with a variety of plug-ins and easing classes. 

GTween is licensed under the **MIT license**, so it can be used and modified with **almost no restrictions in commercial projects** beyond maintaining the header in the source files.

> What about TweenLite? I am also working with Jack Doyle on the phenomenal TweenLite library. If you're curious how these two efforts intersect, please read my [blog post on the topic](http://www.gskinner.com/blog/archives/2009/11/gtween_v2_what.html). - Grant Skinner.

## Features

### Size & Performance

Despite it's broad feature set, GTween is very small at only about 3.5kb compiled. GTweenTimeline optionally adds about 1kb, GTweener about 0.5kb, and plugins range from about 0.2-1kb.

GTween also demonstrates high performance, able to create and run 5000 tweens per second at up to 20fps on a 2.5ghz Macbook Pro.

### Developer Oriented

GTween is built for ActionScript 3 developers from the ground up. It uses a more conventional instance-oriented model, rather than a static interface (though one is supported through GTweener).

It also supports both callbacks and AS3 events. The former are faster, while the latter provide more control and consistency with AS3 standards.

### Flexible

([3D demo](http://www.gskinner.com/libraries/gtween/demos/GTween3D.swf))

GTween works with **any numeric property of any object**.
You can use it to tween the volume of a sound, the size of an AIR window, **3D properties** in PaperVision or Flash player 10, or the value of "foo" on a custom object type, as easily as you would tween the x property of a Sprite.

You can set up a tween in a **single line of code**, or stick to using strictly typed properties. You can maintain references to your tweens, or create them and forget them - GTween intelligently manages tweens to prevent them from being garbage collected while they are active.

```ActionScript
// unreferenced tween, in one line:
new GTween(myTarget, 2, {x:50, alpha:1}, {ease:Sine.easeInOut});

// referenced tween, typed properties:
var myTween:GTween = new GTween(myTarget, 2);
myTween.setValue("x",50);
myTween.setValue("alpha",1);
myTween.ease = Sine.easeInOut;

// you can also do referenced tweens in one line.
```

### Proxy

GTween provides a unique proxy property that allows you to work with tween destination values the same way you would work with them on the target object.
The proxy object effectively "**stands in**" for your target object.

This simple example shows how you can use the proxy to tween the target object 100 pixels to the right of its current position.

```ActionScript
myTween.proxy.x += 100;
```

### Sequencing

([timeline demo](http://www.gskinner.com/libraries/gtween/demos/GTweenTimelineDemo.swf) | [animation demo](http://www.gskinner.com/libraries/gtween/demos/GTweenRunDemo.swf))

GTweenTimeline lets you set up complex animations or transitions on a **virtual timeline**.
In addition to tweens, you can add actions and labels at specified positions.
Pause, reverse, and jump to the start or end of the full timeline as easily as you would with a single tween.
You can even **nest timelines** in each other, just like you can do on the Flash timeline.

GTween even lets you **synchronize frame based animations** to time based programmatic tweens.
Even if you pause the tween, or change the framerate, your awesome animated effects will stay perfectly timed.

```ActionScript
var myTween:GTween = new GTween(myTarget, 2, {x:50, alpha:1}, {ease:Sine.easeInOut});
myTimeline.addTween(1, myTween);
myTimeline.addCallback(3, myCallback, [param1, param2]);
```

### Interrupt

([interrupt demo](http://www.gskinner.com/libraries/gtween/demos/GTweenInterrupt.swf))

Modify your tween while it is playing, and it will attempt to accommodate those changes.

### Control

([timeline demo](http://www.gskinner.com/libraries/gtween/demos/GTweenTimelineDemo.swf) - position slider, pause)

GTween offers an unprecedented level of control over your tweens.
You can **pause one or all tweens**.
You can specify how many times a tween repeats, and whether it should reflect on each repeat (play backwards).
You can **jump to any position** in your tween at any time.

### Timing

GTween supports both frame and time based tweens on a per tween basis. You can specify positions and durations in either frames or seconds.

### Extensibility

([color adjust plugin demo](http://www.gskinner.com/libraries/gtween/demos/GTweenColorAdjust.swf))

The code base for GTween is straightforward and easy to read, extend, and modify. It also supports an easy to use, robust plug-in model which makes it easy to add and share custom functionality without having to modify or extend the core classes.

### Etcetera

Here's a quick list of a few more features you might find interesting:

* plug-ins for common tasks like synchronizing timeline animations, calculated motion blur, adjusting color, snapping values, and more.
* simple sequencing with nextTween.
* delay the start of your tween with the delay property.
* slow down or speed up (even reverse) one tween or all tweens with time scaling.
* associate arbitrary data with your tween (handy for storing temporary transition related values).
* swap start and end values easily.
* calculate the optimal duration for a timeline based on the tweens and callbacks in it.
* change, init, and complete callbacks.

The best place to learn about these and other features is by checking out the included demos, and flipping through the API documentation.

## Demos

All source code for these demos is included with the download.

* [Advanced Sequencing Demo](http://www.gskinner.com/libraries/gtween/demos/GTweenTimelineDemo.swf)
* [Timeline Animation Synchronization Demo](http://www.gskinner.com/libraries/gtween/demos/GTweenRunDemo.swf)
* [4kb 3D Image Wall Demo](http://www.gskinner.com/libraries/gtween/demos/GTween3D.swf)
* [Tween Interrupt Demo](http://www.gskinner.com/libraries/gtween/demos/GTweenInterrupt.swf)
* [Color Adjust Plugin Demo](http://www.gskinner.com/libraries/gtween/demos/GTweenColorAdjust.swf)
* [Motion Blur and Simple Sequencing Demo](http://www.gskinner.com/libraries/gtween/demos/GTweenSimpleSequencing.swf)

## Download

[Download latest build of GTween](https://github.com/gskinner/GTween/releases/download/v2.01/GTween_v2_01.zip). (Version 2.01)

Or include the SWC as a Maven dependency:

```XML
<dependency>
	<groupId>com.gskinner</groupId>
	<artifactId>gtween</artifactId>
	<version>2.0.1</version>
	<type>swc</type>
</dependency>
```

## Feedback

Found a bug? Report an [issue](https://github.com/gskinner/GTween/issues).

Want to extend the library? Submit a [pull request](https://github.com/gskinner/GTween/pulls).

Or, follow [@gskinner](http://twitter.com/gskinner/) on Twitter and send a tweet to the author.
