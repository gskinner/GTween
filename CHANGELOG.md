## master

Changes:
- migrated to github
- Flex SDK 4.6+ asdoc compatibility
- FlashDevelop 4+ build env. support
- included asdoc metadata inside .swc
- reorganized samples
- simplified usage via Maven: added pom.xml, deployed to Maven Central

## 2.01 (Dec 10, 2009)

Version 2.01 of GTween adds AS3 event support and incorporates bug fixes / minor feature updates based on user feedback.
It also includes a SWC file with the distribution. 

[Blog entry](http://www.gskinner.com/blog/archives/2009/12/gtween_v201_rel.html)

Changes:
- added GTween.version property. (thanks to Colin Moock for the request)
- added .dispatchEvents and GTween.defaultDispatchEvents properties, so you can enable AS3 events. (thanks to Colin Moock for the request)
- fixed a problem with tweens in a timeline initing at the wrong time, and added support for position values less than -delay. (thanks to Erik Blankinship for the bug report)
- fixed a problem with tween values being set to NaN before the controlling timeline started playing. (thanks to Erik for the bug report)
- added support for multiple callbacks at a single position to GTweenTimeline. (thanks to sharvey, edzis for the feature request)
- fixed issue with callbacks being called again when a timeline completes. (thanks to edzis for the bug report)

## 2 (Nov 4, 2009)

Version 2 of GTween is a ground up rewrite of the library.
It focuses on performance, size, extensibility, and improving the readability of the code base. 

[Blog entry](http://www.gskinner.com/blog/archives/2009/11/gtween_v2_relea.html)

Changes:
- smaller core size (3.5kb)
- much faster - can tween 5000 particles at the same FPS as beta 5 could tween 2000
- introduction of a simple but robust plugin model, and a number of plugins for common tasks
- a lot of secondary capabilities have been moved to plugins (ex. autoHide, smartRotation, filter support, etc)
- addition of a set of easing equations that are optimized for GTween (based on Robert Penner's equations)
- much of the API has changed to be more understandable and consistent, see the docs for information
- addition of GTweener - an experimental static interface for GTween with override support

# Beta 5 Release (Feb 2, 2009)

Beta 5 constitutes a major rewrite of the GTween library, providing massively enhanced functionality.
It also includes the addition of GTweenTimeline, GTweeny, and better demo files. 

Because this was such a major rewrite, I anticipate new bugs.
Please report them in the comments on the blog entry (link below). 

[Blog entry](http://www.gskinner.com/blog/archives/2009/02/gtween_beta_5_r.html)

Changes:
- low level rewrite of positioning logic, to make position handling fully deterministic
- removed .clone();
- removed .useSetSize and related functionality
- removed activate event
- removed .addProgressPoint functionality (use GTweenTimeline with .addCallback instead)
- removed .addChild and related functionality (use GTweenTimeline with .addTween instead)
- removed .assignmentTarget and .assignmentProperty in favour of .setAssignment()
- removed .autoReverse property, use repeat and reflect instead
- renamed BEGINNING, DELAY_PHASE, and TWEEN_PHASE to START, DELAY, and TWEEN respectively
- renamed .useSmartRotation to .autoRotation
- renamed .autoHide to .autoVisible
- renamed .useSnapping to .snapping
- added .repeat property, which lets you specify the number of times the tween should repeat
- added .reflect, which causes the tween to play backwards when it repeats
- added .reversed property, which causes the tween to play backwards
- added .getProperties(), which returns a hash table of end values
- added .setStartProperties(), allows you to manually specify the start values
- added .getStartProperties(), which returns the start values
- added .lockStartProperties, which prevents start values from re-initing
- added .tweenPosition, which provides a calculate position between 0 and duration
- added .setPosition, which allows you to specify whether to suppress events when manually setting position
- the .state property is now calculated on demand
- reduced size to under 4.5kb for GTween
- addition of GTweenTimeline and GTweeny

## Beta 4 Release (December 15, 2008)

Beta 4 incorporates an enhanced synchronization model, fixes a number of issues, cleans up the documentation, and includes the GTweenFilter and MultiTween classes. 

[Blog entry](http://www.gskinner.com/blog/archives/2008/12/gtween_beta_3_t.html)

Changes:
- fixed a bug with autoHide (thanks to JTtheGeek)
- fixed a bug with useSmartRotation and destination values over 360 (thanks to radicalFish)
- added propertyTarget and getPropertyTarget(), to support GTweenFilter and other potential subclasses
- renamed the static "ticker" property to "activeTicker" to prevent issues in some editors due to it being named the same as the instance property. (thanks to Thomas Brekelmans)
- fixed a problem with progressPoints set to a position of 0 not firing (thanks to Toby Skinner)
- moved event meta tags to before class declaration, so they show up properly in the API documentation (thanks to Jordi Boggiano)
- updated .clone() to support .useSetSize and .useSnapping properties
- modified .addChild() to accept GTween.TWEEN_PHASE, GTween.END, GTween.DURATION, GTween.BEGINNING as a second parameter, allow more complex synchronization options.
- included GTweenFilter and MultiTween in package.


## Beta 3 Release (Nov 4, 2008)

Beta 3 incorporates a number of new features, API tweaks, and minor bug fixes based on feedback from the beta 2 release. 

[Blog entry](http://www.gskinner.com/blog/archives/2008/11/gtween_beta_3_a.html)

Changes:
- fixed a bug with smart rotation
- added rotationProperties static property to specify properties to apply smartRotation to
- fixed bug with proxy method calls not returning the return value (thanks to Matus Laco)
- added a few semi colons :) (thanks to Matus Laco)
- roundValues renamed to useSnapping
- added snappingProperties static property to specify properties to apply snapping to.
- fixed a bug that could cause setSize to be called twice
- fixed a problem with copyInitProperties firing too many times
- made the data parameter on addProgressPoint optional
- changed removeProgressPoint to accept an optional data parameter
- rewrote the progress point logic, fixing a problem that would prevent progress point events from firing if more than one progress point was passed in a single tick.
- progress points will no longer fire when doing manual positioning, including using position=value, beginning() and end().
- made it so that .autoHide only applies while tweening alpha. (thanks to Randy Troppman)
- added a defaultEase static property, which allows you to define the default easing function for all new tweens (thanks to Quentin)
- made linearEase a public static method
- added useSetSize property to allow you to turn off the setSize behaviour if necessary (thanks to jwopitz)


## Beta 2 Release (Sep 3, 2008)

Beta 2 incorporates a number of new features, API tweaks, and minor bug fixes based on feedback from the beta 1 release. 

[Blog entry](http://www.gskinner.com/blog/archives/2008/09/gtween_beta_2_a.html)

Changes:
- fixed a bug with autoHide (thanks to JTtheGeek)
- fixed a bug with useSmartRotation and destination values over 360 (thanks to radicalFish)
- added propertyTarget and getPropertyTarget(), to support GTweenFilter and other potential subclasses
- renamed the static "ticker" property to "activeTicker" to prevent issues in some editors due to it being named the same as the instance property. (thanks to Thomas Brekelmans)
- fixed a problem with progressPoints set to a position of 0 not firing (thanks to Toby Skinner)
- moved event meta tags to before class declaration, so they show up properly in the API documentation (thanks to Jordi Boggiano)
- updated .clone() to support .useSetSize and .useSnapping properties
- modified .addChild() to accept GTween.TWEEN_PHASE, GTween.END, GTween.DURATION, GTween.BEGINNING as a second parameter, allow more complex synchronization options.
- included GTweenFilter and MultiTween in package.

## Beta 1 Release (Aug 18, 2008)

GTween is initially being released as a beta to solicit feedback.
The library is not fully tested, and the API may change based on input from the community during the beta period. 

[Blog entry](http://www.gskinner.com/blog/archives/2008/08/gtween_a_new_tw.html)
