# granite #

A set of patches to `Gargoyle` providing some additional features.

## Patches ##
* **Search History** - *updated 06.07.2013*  
Maps F1/F2 to search backward/forward in history using input buffer as the search term.

* **Auto Complete** - *updated 06.07.2013*  
Attempts to guess what you are typing by searching through output for last word to begin with what you have typed so far.
Similar to *Tab Complete*.

* **Click to Insert** - *updated 06.02.2013*  
Double clicking on a word will insert it onto the end of the input line.  
Thank you **George** from [intfiction.org](http://intfiction.org "The Interactive Fiction Community Forum") for the suggestion.

* **Tab Complete** - *updated 06.07.2013*  
Note: not compatible with *Auto Complete*.  
Pressing tab will cause the program to search through previous story text and find the last word
that starts with what has been typed since the last space, then fill in the rest of the word.

## Install ##
You will need to download the `gargoyle` source, apply the patches that interest you, then compile the modified source.
Below are platform specific instructions.

### Windows ###
Binaries are available for download from the *Downloads* tab. If you would like to patch and compile from source see
the official
[guide](https://code.google.com/p/garglk/wiki/Developers "Guide to compiling Gargoyle from source code.")
for compiling `gargoyle`.

### Mac ###
I do not own a mac, so no binaries are available. For now see the official
[guide](https://code.google.com/p/garglk/wiki/Developers "Guide to compiling Gargoyle from source code.")
for compiling `gargoyle`.

### Linux ###
Although the below command are tailored for `ubuntu`, they should be similar for any linux ditro.

Download the `granite` source and enter the directory. Alternatively you could download the source as a zip by clicking
the *zip* button above.

    git clone git://github.com/RedHatter/granite.git
    cd granite
    
Install the dependences necessary to compile `gargoyle`.

    sudo apt-get install ftjam subversion libjpeg-dev libpng-dev libsdl-mixer1.2-dev libsdl-sound1.2-dev
    libfreetype6-dev libgtk2.0-dev ttf-liberation ttf-linux-libertine

Download the `gargoyle` source.

    svn co http://garglk.googlecode.com/svn/trunk/ gargoyle
    
Apply the patches. Repeat replacing `file.patch` for as many patches as you wish to apply.

    patch -p0 < file.patch
    
Compile the patched `gargoyle` source.

    cd gargoyle
    jam install
    cp garglk/garglk.ini build/dist
    
Run the compiled version of Gargoyle.

    cd build/dist
    export LD_LIBRARY_PATH=.:$LD_LIBRARY_PATH
    ./gargoyle
    
That's it, have fun.
