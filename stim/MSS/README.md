freshMRI - MSS
==============

MSS is a collection of functions for stimulus presentation, similar to MacStim but ported to work with [MATLAB][1] and [PsychToolBox][2].

Credit for MSS belongs entirely to whiz-bang [Emily Falk][3]
Program Overview:  MSS is a program that reads in tab delimited .txt files (that you can make in excel and save as .txt format), and presents stimuli accordingly.  This program was inspired by MacStim, and as such reflects a similar set of inputs.  Improvements over MacStim include the ability to play .wav sound files, to automatically play for the duration of a sound or video file without timing it in advance, to specify an interstimulus interval that will display a default background between trials, and the fact that the output is automatically in MatLab format (and hence can be easily loaded for analysis purposes).  This program will also resource files (sounds, videos, pictures) to be stored in a folder other than the folder containing the tab delimited .txt file. You should add the folder where MSS is stored to your MatLab path (by clicking File --> Set Path in MatLab), and then you should call MSS from the folder that contains your .txt file, or specify the full path for the folder where your .txt file is stored.


Files Supplied to run MSS:

File Name
Function
MSS.m
function MSS(tdfile,resource_path)

%%MSS(tdfile,resource_path)
%This is a program which presents text, sound and video stimuli using a
%text delimited "script" that is compatible with Mac Stim, with certain
%added features.
%
%tdfile should be a tab delimited file with fields:
%[type,num,pre,maxTime,totTime,rep,stpEvt,bg,st,bgFile,stFile,hshift,vshift]= textread( tab_delimited_text_file, '%c %d %f %f %f %d %s %c %c %s %s %d %d','delimiter', '\t', 'whitespace', '', 'commentstyle', 'matlab' );
%
%If you are not running your script from the directory that holds your
%tdfile, you should specify the entire path, e.g.
%/top_dir/mid_dir/location_of_td_file/tdfile.txt
%
%resource_path is an optional field containing the location of your resources, with default as same dir
%as tdfile

This is the main stimulus presentation script.  All other files and functions are called from here.

calculate_trial_order.m
function trial_order = calculate_trial_order(type,num)

%this function takes in the vector "type" and the vector "num" associated
%with the MSS script, and sorts them according to the rules of MacStim
%NOTE!  BLOCK MAC STIM ORDERING OPTIONS NOT IMPLEMENTED HERE-- NO BLOCK
%OPTION 'b', Option 'r' is still in beta

This function is used to determine the order of stimuli presented.
DrawFormattedText_new.m
function [nx, ny, textbounds] = DrawFormattedText_new(win, tstring, sx, sy, color, wrapat, hshift, vshift)

% Draws a string of text 'tstring' into Psychtoolbox window 'win'. Allows some basic formatting.

This is similar to the built in function DrawFormattedText.m, except that it allows for text wrapping based on pixels instead of words and accommodates hshift and vshift to offset text.  See help file for more info.
DisplayMovie.m
function [keyCaught key_presses_movie movie_start] = DisplayMovie(movie,win,stpEvt,maxTime,inputDevice)

%function [keyCaught key_presses_movie movie_start] = DisplayMovie(movie,win,stpEvt,inputDevice)
%
%Play movie 'movie' in window 'win' where stpEvt keys will stop the video,
%and input device is specified from MSS (e.g. device number of button box)
% This script allows playback for synchronized playback of video and sound.
% This script assumes that resources are preloaded
% This script will record all keys pressed while a movie is being displayed
% (key_presses_movie) as well as the specific key that caused a stop event,
% should one occur (keyCaught)
% This script is adapted from PlayMoviesDemoOSX
% This needs MacOS-X 10.3.9 or 10.4.x with Quicktime-7 installed!

Note: keyCaught is the key that caused the stop event, key_presses_movie contains all of the keys that were pressed while the movie was being played.

experiment_output.m
function experiment_output(MSS_output,PRINT_OUTPUT)

%experiment_output(MSS_output)
%Takes output of MSS and prints a short report to the screen and to a tab
%delimited file.  PRINT_OUTPUT is a 0,1 flag that specifies whether output
%should only be printed to the screen (0), or also to a .txt file (1).
Experiment info, Subject Code, Input File, Experiment notes

Then,
Order   Onset   Dur RT  Response

As tab delimited columns.

Also prints all keys pressed with times:
Key     Time    Accompanying Stimulus

is_stop_event.m
function [output, stpEvt] = is_stop_event(key_pressed,key_desired)

%key_pressed should be a valid keycode (see the KbCheck function)

%key_desired should be a string in MacStim format

(k\ = any key; n = no stop event, blank = no stop event; any other combo of letters/numbers = those letters/ numbers count as stop keys)

output is a Boolean that tells whether a stop event has occurred, stpEvt stores which key caused the stop event.

This function takes any key press that is sensed while text or picture stimuli are presented and decides whether that key constitutes a stop event (which would cause a switch to the background stimulus for the remainder of the trial).

wsstrtok.m
function [token remainder] = wsstrtok(str)
%This function behaves much like the built in function strtok except that it preserves leading and trailing whitespace
%e.g. strtok( 'this is a test' ) returns ['this' 'is a test'] while
%wsstrtok('this is a test') returns ['this ' 'is a test'].

This is necessary for the word wrapping function in the modified DrawFormattedText_new.m
Notes
Breaking the script:  To stop in the middle of a run, press ctrl-c, then apple-0, then type “clear screen.”

Default Durations: If no duration is specified, sound and video files will be played for the duration necessary to hear/see in entirety and text/ picture files will be displayed for the default duration, which can be set at the top of MSS.m. In the case of a sound file, if a shorter duration is specified, the sound is truncated.  Videos always play for the full duration, unless a stop event is detected.

Stop Events: If a stop event occurs during the presentation of the main  stimulus file, the main stimulus will be removed from the screen and the background stimulus will be displayed for the remaining time in the trial (unless the trial is a video trial, in which case we move on to the next trial).







The following is excerpted from the MacStim documentation regarding the format of the ‘script’ that gets read in.  Comments in green are my changes/ comments.

{ type  num  pre   max   tot   rep    stpEvt   bg   st   bg-file   st-file     h  v
  s         1    1.0   3.0    5.0  10.0   m         p     p    picture1 picture2  0  0

 (1) “type” is the trial type as above, “s” means a single trial, ‘p’ means pause trial (script won’t continue until it gets input), r is randomized trial.
(2) “num” indicates the number of random trials that should be kept in consecutive order (so, if 6 consecutive trials are all type = r, and num = 3 for the first, 2 for the 4th and 1 for the 5th, the first three trials would all be kept together in a block, the next two would be kept in order in a block and the last would be a third, and these three chunks would be randomly ordered.
 (3) “pre” is the initial delay in seconds before the stimulus is presented. If you want a background resource to be shown/sounded during this time (eg a background picture) then make this time greater than zero.
 (4) “max” is the amount of time that the main stimulus can be presented.  If a stop event occurs, then the actual time that the stimulus is displayed will be less than max, and the remaining time will be taken by showing the background resource. Note: if the stimulus file type is a sound or movie (st = s or m), and no duration is specified here, the program will automatically play the file for its duration.  If a shorter time than the sound or movie is specified, the sound/movie will be truncated.  If a longer time is specified, the background resource will be displayed for remaining time.
 (5) “tot” is the total seconds for this trial.  If tot is greater than pre+max, then the background will be displayed to make up the difference.
(6) “rep” %not implemented in the same way as MacStim.  For sound files, this should be 1 if you want the file to play once and stop.  Will not impact other types of trials.
(7) “stpEvt” is the event required to trigger recording of the reaction time (n nothing ie ignore all event types).  If you want some keys only to stop an event, ie. exclusive keys to stop this event (all other keys are ignored) then you can put those keys you wish to use, eg “rl” to use the R and L keys only to stop key events.
 (8) “bg” is the background resource type (see (9))
 (9) “st” is the stimulus resource type from p picture, s sound, m movie, n none (ie present a fixation cross or no sound), and you can also present text (without needing to create PICT files specifically) by using t for text here.  Default is to display text in the center of the screen and to wrap text at wrap_text pixels across.
 (10) “bg-file” and
 (11) “st-file” are the file names of the background and stimulus files respectively.  These files must either be in the same folder with the main script file, or a resource path must be specified.
 (12) “hShift” and
 (13) “vShift” allow you to offset pictures, movies or text from the default central position (specified in pixels).
