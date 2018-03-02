# levy
Trying to make the levy curve. or 'pythagoras' curve.
Now reading: http://mathforum.org/mathimages/index.php/L%C3%A9vy's_C-curve
But, I was introduced to the Levy curve in *Fractals: Endlessly Repeated Geometrical Figures* by Hans Lauwerier

Here i am describing how I understand it:
https://www.youtube.com/watch?v=li_QMB4LCNg 

It turned out to be much easier than i was thinking!

* I finally understood how to determine the angle at which the line would move.
* I am now using two PVectors for position and velocity. This made the task much more manageable. 
* Also, I gave up trying to reproduce the example from the book I am working from-- which used Turbo Basic. 

After reading and thinking about other kinds of meandering fractals, it all made more sense. 

* *pos* is a given starting position at the center of the window. 

* we convert the line segment's number (n) to binary and count the number of 1s (s) in that binary string. 
* We then check s mod 4 and set velocity to one of four possible directions. 
* if s mod 4 == 0, we go right. For 1, we go down. For 2, we go left. For 3, we go up. 
* Each line segment is the same length, the higher our scale, the bigger and more intricate the pattern becomes-- because we keep replacing more and more lines with right angles. 

It is beautiful.
