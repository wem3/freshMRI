---
layout: post
title: freshSPM 001 - install SPM
description: "how to install SPM and set up your MATLAB path accordingly"
tags: [spm, intro, install]
image:
  feature: sub_A.png
comments: true
share: true
---

[SPM](http://www.fil.ion.ucl.ac.uk/spm/)[^1] is the original gangster of open source neuroimaging software

---

![spmcentral.jpg]({{ site.url }}/images/spmcentral.jpg)

---

freshSPM is tailored for [SPM12b](http://www.fil.ion.ucl.ac.uk/spm/software/spm12/), providing as much backward compatibility with SPM8 as possible. None of the freshMRI code is likely to work in older versions (though your old code may work in SPM8/SPM12b).  

SPM is far and away the easiest package to install (assuming you already have MATLAB installed). Unlike most of the other tools on freshMRI, You can probably get away with just downloading through a browser, clicking on the zipped file to extract it, and dragging it to `~/Documents/MATLAB`.

There are a number of reasons why this is not the best way to start a trek into the black heart of neuroimaging data analysis, but rather than digress further, let's just take this as an opportunity to get in some practice with the command line.  

### To set up SPM freshMRI-style:

First, insall MATLAB (whoever provides your site license should have instructions for how to do this).

Go to the [SPM12b download page](http://www.fil.ion.ucl.ac.uk/spm/software/spm12/), fill out the brief form, and click the link:

![Download_spm12b.png]({{ site.url }}/images/Download_spm12b.png)

If your browser is configured to let you select a download location, choose:

![save_spm12b_as.png]({{ site.url }}/images/save_spm12b_as.png)

Fire up the Terminal.
{% terminal %}
$ cd ~/Documents/MATLAB
$ unzip spm12b.zip
$ matlab &
{% endterminal %}

### To add `spm12b` to the path:

Check out the post on how to [set the path in MATLAB]({{ site.url }}/set-matlab-path/) for an in-depth graphical walkthrough. To add `spm12b`, use the 'Add Folder' button **(NOT 'Add with Subfolders')**. `spm` does this automatically through its own functions, and it can confuse MATLAB if you choose 'Add with Subfolders'

![add_spm12b_to_path.png]({{ site.url }}/images/add_spm12b_to_path.png)

You can save the path with spm12b on it unless you have a reason not to (e.g., you're working in another version of spm, you're working with functions that conflict with spm's, etc.).  

### Launch that sucker:

In the MATLAB Command Window type:

{% terminal matlab %}
$ spm fmri
 ___  ____  __  __                                            
/ __)(  _ \(  \/  )                                           
\__ \ )___/ )    (   Statistical Parametric Mapping           
(___/(__)  (_/\/\_)  SPM12b - http://www.fil.ion.ucl.ac.uk/spm/


SPM12b: v5918                                      03:31:09 - 29/05/2014
========================================================================
Initialising SPM                        :                   .Defaults settings have been modified by file(s):
  /Users/wem3/matlab/spm_my_defaults.m
Modified fields: ui stats realign coreg smooth 
......Defaults settings have been modified by file(s):
  /Users/wem3/matlab/spm_my_defaults.m
Modified fields: ui stats realign coreg smooth 
.done

SPM present working directory:
  ~/matlab
{% endterminal %}

*Note: the MATLAB Command Window uses `>>` instead of `S'`as the prompt*  

If all goes well, you should see something like:  

It's about to get real...

[^1]: freshMRI stands by this claim despite the fact that it effectively depends on MATLAB. Although the neurds at freshMRI find *most* of John Ashburner's work absolutely riveting, [SPM: A history](http://www.ncbi.nlm.nih.gov/pmc/articles/PMC3480642)[] provides a shockingly down to earth explanation of many aspects of SPM that can be really confusing to new users (and perhaps acts as powerful antidote for any poor soul who has attempted to imbibe the heady and dangerous brew that is the official SPM manual).]