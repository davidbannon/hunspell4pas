# hunspell4pas

This is a trivial repo offering Object Pascal, Lazarus and FPC bindings for Hunspell. It was created to ensure strict complience with licensing. 

A small command line driven Lazarus application demonstrates its use, it has three layers -

* The Lazarus application itself, usefull only to test and demonstrate the other layers. BSD 3-Clause Clear License

 * hunspell.pas - A ObjectPascal class to make hunspell functions available. I origionally posted this code to the Lazarus wiki but did not observe the necessary licensing constraints, the posted version included the hunspell bindings obtained from a very old forum post. The version presented here is subject to BSD 3-Clause Clear License and does not contain any hunspell licensed content.

* hunspell.inc - The 'bindings', the actual definitions of the calls to a hunspell library. Written while observing hunspell.h ( https://github.com/hunspell/hunspell/blob/master/src/hunspell/hunspell.h ) and therefore requiring a strict observence of the hunspell license.

I have not tested nor even implemented those hunspell functions that I don't use in my own application, tomboy-ng.  If anyone would like to use those functions, only too happy to work with you to test and make them available.

Davo

