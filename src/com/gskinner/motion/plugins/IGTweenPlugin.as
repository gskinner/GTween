﻿package com.gskinner.motion.plugins {		import com.gskinner.motion.GTween;		/**	* Defines the interface for GTween plugins. GTween does not use this interface	* internally (for better portability of the class), but it is recommended that	* plugin developers implement this interface in their plugins so that if changes	* are made to the interface, compile time errors will be generated for plugins	* that have not been updated.	* <p>	* Generally, plugins should also expose a static <code>.install()</code> method	* which registers an instance of the plugin using <code>GTween.registerPlugin()</code>.	* The easiest way to learn how to develop plugins is to look at the sample plugins.	* SnappingPlugin and AutoHidePlugin provide simple examples, whereas ColorAdjustPlugin	* provides a more advanced example.</p>	**/	public interface IGTweenPlugin {		/**		* This method will be called from the GTween init method when it is determining		* the initial values for a property. A plugin's init method should return the		* initial value of the specified property (often by just returning the value		* parameter without modifying it)		* or NaN to indicate that an initial value should not be set.		*		* @param tween The tween this plugin is being applied to.		* @param name The name of the property being tweened.		* @param value The current init value that will be applied to the specified property.		**/		function init(tween:GTween, name:String, value:Number):Number;				/**		* This method will be called from a GTween instance when it is rendering a new		* position value, and is tweening a property that this plugin is registered for.		* The plugin can affect the target directly, or it can modify and return the value		* parameter which will then be set on the target.<p>		* GTween will call the tween method of each plugin registered for the property,		* passing in the current calculated value for the property in the tween. Each plugin		* has the opportunity to return a modified value property, which will then be passed		* to subsequent plugins and ultimately set on the target, or it can return NaN to		* indicate that the value should not be set on the target by GTween (ex. because it		* has already been handled fully by the plugin).</p><p>		* For example, a value snapping plugin could simply round the value parameter and		* return it, whereas a blur plugin could work on the target's filters directly		* and return NaN to prevent GTween from attempting to set a nonexistent blur		* property on the target.</p>		*		* @param tween The tween this plugin is being applied to.		* @param name The name of the property being tweened.		* @param value The current value that will be applied to the specified property of the target. This is normally equal to <code>initValue+rangeValue*ratio</code>, unless it has been modified by a prior plugin.		* @param initValue The init value for the specified property.		* @param rangeValue The range between the initValue and end value for the property.		* @param ratio The current eased ratio of the tween. This is usually between 0-1.		* @param end This will be true if the tween is at its end (ie. will call the complete event handler at the end of this tick).		**/		function tween(tween:GTween, name:String, value:Number, initValue:Number, rangeValue:Number, ratio:Number, end:Boolean):Number;	}	}