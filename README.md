SevenLanguagesSevenWeeks
------------------------
Exercises and code from the Book Seven Languages in Seven Weeks by Bruce. A. Tate

# Intention

Mainly a storage for the exercises in the books chapters, for each language I'm going to try and write a Roman Numeral converter (e.g. to and from Roman Numerals) for each language to see if I can, and to try and use the special features / conventions for each language.

# Reviews

## Ruby

I'm not that much of a fan. The syntax is not particularly readable, and I can't see that many benefits over Python which I already know.

### Syntax

There are parts of the syntax I don't like, mainly the '' vs "" in the string manipulation. I understand it's benefits, but I think it would be a cause of great user confusion, especially in an interpreted language.

### Blocks

I quite like the iteration and blocks in Ruby, it's quite nicely self-contained and allows you to do a lot of operations on datasets fairly independently.

### Conclusion

I might play around with it a little more, but I think as I'm not a web programmer I doubt that I'll be using Rails any time soon and this is probably it's main stomping ground. For me it doesn't offer enough over Python, and I'm more familiar with it and it probably has better library support for what I tend to do.

## Io

I'm not a fan, mostly because of the syntax inconsistency, in some cases when I was working with variables they were treated as variables, but when passing them to methods they acted like strings which was super confusing.  The lazy evaluation is an interesting concept, and similar to Mathematica you can define "formulae" which are not evaluated until you call them e.g. `a := b + c + d` but if you have not yet defined b, c or d it doesn't matter until you want to get the value of a.

I know it isn't really a language for production environments, but I can't really see many benefits of using it, and 

I couldn't get my roman numeral example to work (probably because I spent only a little time on it and it was mostly spent debugging why certain parts of my method didn't work), but this might be because I'm not thinking about it in the "right" way. So I will try again at a later date, maybe for the case of Io instead of having a single class that can detect and do both transformations I just have to live with two separate methods `toNumeral` and `toNumber`

I think I'll take this weekend to look over the chapter again and see if spending a little more time reading helps.

### Side Note

One problem this did raise is that the lack of good examples and an effective debugger is a real bind. Because of things like lazy evaluation you don't necessarily know if conditions are not working due to circumstances outside your knowledge and it isn't great to have to add `println` debugging to effectively debug your code.

It is a bit of a personal weakness that I find using examples more useful, so this is probably something I need to work on, but I think it isn't helped by the lack of an 'official' API for the language. The tutorials are a bit weak. (It's worth noting that the author did manage to write this chapter with exactly the same, or less, detail)

## Prolog

## Scala

## Erlang

## Clojure

## Haskell

# Finishing Thoughts

While discussing this book a few points have already come up which I think are important to note.

## Why would you use a particular language?

While discussing Ruby we came up with the general idea of why would you pick up a particular language? And part of it comes from user comfort. If you've used it a lot then you might be happier with it and feel more comfortable working with it.

One example we had was Bash VS Python. Some people hated bash and tended to do everything in Python, but in cases when you can leverage the Linux command line utilities bash can be very powerful, and calling out to these programs from Python can be a little irritating. However personally when dealing with files and strings I'd rather do it in Python.

It's an odd question, and I think it needs a lot of constant questioning. What are the benefits? What is the critical threshold? When does performance trump readability and familiarity? It's easy to just say, "We're using this language!" but sometimes it really does benefit if parts of the program use a different language for good reason, even though this increases the overall complexity of the solution.

I think everyone who spends enough time programming realises that each language is a tool, and each tool is good for a certain purpose. And some languages are more flexible than others, but there comes a time when you need a torque-wrench and an adjustable spanner just doesn't work any more.
