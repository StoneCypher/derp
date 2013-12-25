derp
====

Computers are great at doing stupid things.  Serve your sites at the speed of `derp`.





What are you on about this time
-------------------------------

Static site generators are the new hotness again this week; replace WordPress with (random script,) because what's a Movable Type, I guess.  And then they brag that their load time is "down to" ~360ms.

But, in the misappropriated words of D'Mite, we're gonna go bigger, and staticer.

I believe the most direct way to say it is "lol you use disks?  That's quaint."  We set a set of routes, compile the binary assets to a module, and serve them hot from RAM.

(Now let's wait for someone to tell us how they're going to run out of RAM for their gigundous site that they run on a Commodore 64.  This server is not exactly the right choice for, let's say, writing an imgur.)





And so what's derp?
-------------------

`derp` is a static site generator for [htstub](https://github.com/StoneCypher/htstub/).  Point it at a directory, and it will return the source to an Erlang module that will serve your site pre-compiled from memory.  

Think you're fast?

Wait until you're fast as derp.





Lol ok.  Hau 2 use?
-------------------

Pretty simple, really.  Call the generator pointed at some directory you want to re-represent, with the filename you want it to dump into.  The generator will then generate a module





So how fast is derp, exactly?
-----------------------------

Whoa, whoa, whoa.  What do you want, ***measurements***?  I barely even started writing it yet.

Besides, all I have to say is "erlang" and people already believe it's 15% faster than is actually possible.
