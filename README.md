# SuperPowers Corp Elm Coding Challenge

As you probably know by now, here at SPC we are huge fans of Elm and want to
use it wherever possible, not just on the web.

In that spirit, our challenge to you is to design and implement a command line
argument parsing library for Elm.  Something in the vein of
[optparse](https://docs.python.org/2/library/optparse.html) or
[argparse](https://docs.python.org/3/library/argparse.html) for python,
[commons CLI](https://commons.apache.org/proper/commons-cli/) or
[Args4j](http://args4j.kohsuke.org/) for java, or
[docopt](https://github.com/docopt) for 20+ languages.

Please include a README.md with brief instructions on how to use your library.

We leave it up to your discretion and taste what a good Elm command line parser
might look like.  There are no specific requirements, but the problem you're
trying to solve is the same as any of the example libraries listed, so you
should target a similar feature set (positional arguments, long opts, short
opts, boolean flags vs flags that take an argument, etc).

The idea behind this challenge is to provide a problem that can be completed in
a reasonable amount of time but is complex enough that the solutions offer
insight into how candidates think about and solve real world problems.  It is
designed to be similar to the actual type of problem you encounter in a startup
in that there is some "generally obvious" thing that needs to be done, but no
concrete specs of any kind are available.

We are interested not just in your ability to solve this challenge but in how
you solve it. When much of your time is spent on open-ended tasks, as it often
is in a startup, the way you approach these types of tasks really makes a
difference in the long run.

We think an experienced full stack engineer with previous Elm experience should
be able to finish this over two to three days working on it an hour or two a
day.  That being said, we know not everyone has Elm experience and there are
any number of issues that might arise.  Don't worry if you don't complete the
assignment.  It happens to the best of us.

If you cannot complete the challenge in what you feel is a reasonable amount of
time, then simply include a brief writeup in your README.md about what
happened, what your next steps would be and what you might do differently the
next time around if you were to try again.  We would prefer an incomplete
implementation with good notes to a more complete but poorly designed and
documented implementation.

This project provides skeleton code to run a command line Elm program or you
may use a normal Elm application (with an HTML UI).  The only real requirement
is that somewhere in your solution there is a function that takes a list of
string arguments and returns a type of your choosing that provides the ability
to perform typical queries provided by arg parsers ("is this option present?",
"what is the value of the argument to this option?" etc).
