---
layout: post
title: matlab path definition of pathos
description: "set up your MATLAB Search Path to avoid tragedy"
tags: [matlab, intro, install, path]
image:
  feature: render2_A.png
comments: true
share: true
---

a quality that evokes pity or sadness  

Like it or lump it, MATLAB is central to many neuroimaging workflows (there is *no* dependable way to use SPM functions without it) and understanding the [MATLAB Search Path](http://www.mathworks.com/help/matlab/matlab_env/what-is-the-matlab-search-path.html) can spare you a lot of pain. MATLAB sets the *userpath* to:  

![MATLAB_default_userpath.png]({{ site.url }}/images/MATLAB_default_userpath.png)

by default on OS X. **freshMRI recommends against actually storing your neuroimaging packages in the Documents folder!** Perhaps you're one of those hyper-organized individuals with an empty inbox, a spotless Desktop, and more free disk space than you know what to do with. For the rest of us, `~/Documents` tends to rapidly devolve into a dumping ground for all manner of cruft, and loose code creeping into `~/Documents/MATLAB` can really ruin your day.  

If you've installed FSL, you may have noticed that it creates a folder with fsl startup code (that actually contains an error, explain) at:  

![better_matlab_path.png]({{ site.url }}/images/better_matlab_path.png)  

`~/matlab` is a much better place to keep packages like `spm` and functions that you want to stay on the path (like `startup.m`).  

To add `~/matlab` to the path, fire up MATLAB, and click the 'Set Path' button in the 'Home' tab of the toolbar:

![SetPath_button.png]({{ site.url }}/images/SetPath_button.png)

This will bring up a dialogue like:

![Set_Path_dialogue.png]({{ site.url }}/images/Set_Path_dialogue.png)

To add `~/matlab` to the search path, click 'Add Folder'
**(NOT 'Add with Subfolders')**  

![add_matlab_to_path.png]({{ site.url }}/images/add_matlab_to_path.png)

Click 'Open.' Save the path so that `~/matlab` is in the search path when MATLAB starts up: 

![save_matlab_path.png]({{ site.url }}/images/save_matlab_path.png)

This can be extremely handy, but it also means that any loose .m files stored in `~/matlab` will be automatically added to the path as well.  

This can cause huge headaches. `~/matlab` is not the place to store study specific scripts, in progress code, or really anything other than functions you want MATLAB to have global access to or directories of code that you want to add to and remove from the MATLAB path as needed. Seriously. 80% of MATLAB issues can be resolved by fixing the MATLAB path. Leaving cruft in `~/matlab` is a great way to break it.  

As mentioned previously, MATLAB on OS X sets the *userpath* to `~/Documents/MATLAB` by default. You can remove this directory from the path entirely (just invoke the 'Set Path' dialogue, choose 'Remove Folder' and then 'Save'), but if you don't, you'll need to be hyper-vigilant about keeping `~/Documents/MATLAB` clean as well. freshMRI recommends nuking that sucker. 

Why, astute readers may ask, does the `~/matlab` appear so full if it's crucial to keep it free of cruft? All of the folders are neuroimaging packages, added and removed as necessary. All of the .m files are functions to which MATLAB has global access. More on that later...