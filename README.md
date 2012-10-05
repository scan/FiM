# FiM++

## The Language

This Interpreter was inspired by [this](http://www.equestriadaily.com/2012/10/editorial-fim-pony-programming-language.html#more) post on EqD. I have taken some liberties at the language whereever the specification was too unspecified. Most of the basic specs is by [DeftCrow](http://deftcrow.deviantart.com/art/FiM-Programming-Hello-World-99-Jugs-of-Cider-330736334).

## FiM++ Interpreter

The interpreter itself is a JavaScript that can be used on any website. To use it, simply download the file `fim.js` or `fim.min.js` and include it in your HTML.

To run a piece of code, you can use the `FiM.interprete` method:

> var code = "Dear Princess Celestia: Letter One\nToday I learned how to sing.\nI sang "Hello World!"\nYour faithful student, Twilight Sparkle.";
> FiM.interprete(code);

The `interprete` method takes some options as the second parameter:

> FiM.interprete(code, {
>    stdout: function(str) { alert(str); },
>    stderr: function(str) { alert(str); },
>    stdin: function() { prompt(); }
> });

For `stdout` and `stderr`, the interpreter expects functions that take one string and somehow print it. Likewise with `stdin`, it expects a function that returns an input string. Per default, `stdin` is a prompt like above and `stderr` and `stdout` point to `console.log`, which may not be available on all browsers.

## The FiM++ Language

TODO
