freshMRI_000: introduction, getting to the command line
----------
### Intro:
If you are a whiz-bang programmer, you can probably skip the rest of this part (unless you want to help make it better!), but if you're not familiar with using a Command Line Interface (CLI), there's no time like the present...  

Here are some resources to learn more about the command line:  

+ [A Command Line Primer for Beginners](http://lifehacker.com/5633909/who-needs-a-mouse-learn-to-use-the-command-line-for-almost-anything): this is day 1 stuff right here
+ [Basic Unix Tutorial](http://fsl.fmrib.ox.ac.uk/fslcourse/unix_intro/): hosted by FSL, presupposes no experience but relatively fast-paced  
+ [Shell Scripting Primer](https://developer.apple.com/library/mac/documentation/OpenSource/Conceptual/ShellScripting/BeforeYouBegin/BeforeYouBegin.html#//apple_ref/doc/uid/TP40004268-CH1-SW1): Mac Developer Library documentation, dry and technical, but a great reference  

---  
### Terminal:
There are plenty of alternatives to Terminal.app, the command line interface (CLI) that comes standard with OS X, but unless you have a strong alternate preference already, this one is pretty great.
![/Applications/Utilities/Terminal](https://github.com/wem3/freshMRI/raw/master/images/Terminal_Finder.png "Navigate to /Applications/Utilities/Terminal in Finder")

---
You can change the appearance of your window from the menu bar: Terminal-> Preferences-> Settings (I like 'Homebrew' or 'Pro'). It's good idea to keep the Terminal app in your dock or somewhere else that's easy to access, as we'll be using it a lot.  

---
### Bash it from the line:
In your Terminal window, there's a prompt on the left-most side of the screen that says something like 'RickyMcMRI's-MacBook-Pro:~ricky' (the specifics aren't important). Often times, code blocks use a '$' or '>' to indicate the prompt, but if you try to copy/paste this whole code block:
```bash
$ echo 'freshMRI is totally blowing my mind'
```
directly into the Terminal window (and press Enter, of course), you'll get something like:
```bash
-bash: $: command not found
```
Instead, try
```bash
echo 'freshMRI is totally blowing my mind'
```
The rest of the code blocks in freshMRI will be paste-able directly into your command window, but note that resources from other sites are less likely to follow this convention.  

Whenever you're ready, head on over to [freshMRI_001: system setup](https://github.com/wem3/freshMRI/blob/master/freshMRI_001.md).
