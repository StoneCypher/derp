derp
====

Computers are great at doing stupid things.  Serve your sites at the speed of `derp`.

*(this module is experimental and incomplete)*





tl;dr
-----

`derp` - "Direct Emission Resource Packager" - assembles assets into a compiled Erlang module for use with [htstub](https://github.com/StoneCypher/htstub/).

```erlang
1> derp:gen_site("/users/john/projects/example_derp_site", "static/", ex_derp).
ok

2> c("ex_derp.erl").
{ok, ex_derp}

3> htstub:serve(ex_derp).
<0.519.0>
```

Bang: static site served directly from RAM.  No disk.  No hassle.  Hella fast.

`derp` is a static site generator for [htstub](https://github.com/StoneCypher/htstub/).





What are you on about this time
-------------------------------

Static site generators are the new hotness again this week; replace WordPress with (random script,) because what's a Movable Type, I guess.  And then they brag that their load time is "down to" ~360ms.

But, in the misappropriated words of D'Mite, fuck that, we're gonna go bigger. And staticer.

I believe the most direct way to say it is "lol you use disks?  That's quaint."  We set a set of routes, compile the binary assets to a module, and serve them hot from RAM.  No more inodes, no more filesystem, no more nonsense.  Let the language follow a pointer and call it a tasty beverage.

It is un-slow.

(Now let's wait for someone to tell us how they're going to run out of RAM for their gigundous site that they run on a Commodore 64.  This server is not exactly the right choice for, let's say, writing an imgur.  This is a good approach for a site whose static content is south of half a gig, on servers contemporary to late 2013.  If you actually need a disk full of content, don't de-disk.)





And so what's derp?
-------------------

Direct Emission Resource Packager - `derp` - is a static site generator for [htstub](https://github.com/StoneCypher/htstub/).  Point it at a directory, and it will write to disk (or return, if you prefer) the source to an Erlang module that will serve your site pre-compiled from memory.  Then you compile that, and bang, you have a fully compiled pre-loaded site serving directly from main memory, with very few interlocking systems involved.  You shouldn't need to ask the operating system for the data for your static webpage.  It makes le No of Sense.

Let's be clear: this is a special circumstance site generator.  Most probably you'll put it behind a router that can also point at dynamic content of yours.  But, for serving your site's sprites, CSS, JS, HTML5 inclusion fragments, static pages, etc?  This is speedy.

Think you're fast?

Wait until you're fast as `derp`.





Lol ok.  Hau 2 use?
-------------------

Pretty simple, really.  Call the generator pointed at some directory you want to re-represent, with the filename you want it to dump into.  The generator will then generate a module on disk, which you compile.  Then, it's just `htstub:serve(your_derp_module).`  (In practical situations, you may want to specify a subdomain, or a port, or put it behind a router; very few sites are fully-static.  But, this would be good enough for a blog, say.)





So how fast is derp, exactly?
-----------------------------

Whoa, whoa, whoa.  What do you want, ***measurements***?  I barely even started writing it yet.

Besides, all I have to say is "erlang" and people already believe it's 15% faster than is actually possible.





Polemic :neckbeard:
-------------------

`derp` is MIT licensed, because viral licenses and newspeak language modification are evil.  Free is ***only*** free when it's free for everyone.
