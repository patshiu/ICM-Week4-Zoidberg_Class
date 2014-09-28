#ICM-Week4 Assignment Part 1 — Zoidberg Class
========================

## [Week 4 Assignment](https://github.com/ITPNYU/ICM-2014/wiki/Homework-Shiffman-Tuesday#week-4)

- DO: Design a sketch in an object-oriented fashion.  Try to eliminate all code from the main tab (setup() and draw()) except for the core requirements (size(), background(), etc.) and calls to objects.
    - For example: Consider building a [particle system](http://en.wikipedia.org/wiki/Particle_system).  A particle system can be used to simulate: rain, snow, fireworks, explosions, smoke, etc.  For this week, you would create a Particle class to describe a single particle and try to get two particles on the screen using separate variables. (Then next week, after we learn arrays, you would visualize hundreds/thousands of particles on the screen.)
    - E-mail the code for a class to your assigned partner on the wiki.  You'll get one from them too.  Try incorporating the class sent to you into your sketch.   Write some thoughts about this process on your blog: Did anything not work?  Could you follow your partner's code / documentation?  Were comments helpful?  (If you are feeling saucy, you could try to use github for this collaboration.)


========================
### Description

Functions Included in File
#### For Setup Purposes
- setupZoidbergsArray()
- setupImages()

#### For Animation Purposes
- birthZoidberg( locX, locY)
- animateAllZoidbergs()

Class Included in File
- Zoidberg
