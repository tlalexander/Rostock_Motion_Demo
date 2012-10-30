Rostock Motion Demo
===========================

This generates motion demo gcode for your rostock or other printer. It just sends the machine through a vertical spiral that repeats.

It its very quickly written code and even if it doesn't initially break your machine, letting it run for long periods of time can cause screws to loosen that may damage your printer.

As such, don't run this code unless you're able to quickly shut things down in the event of a problem! This code can break your machine if you are not careful.

Tested on a Rostock with no extruder, using a hacked together firmware for the printrboard. Other printers may require different settings!

The resulting code isn't totally clear on what you'll get, so check the processing window for information on the extends of the travel and check the resulting gcode file in a text editor before trying on a machine!

Feel free to fork this and add changes as necessary. I'll license this with the Apache license, which I think means "do whatever you want".