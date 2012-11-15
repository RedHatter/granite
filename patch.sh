#!/bin/sh
svn co http://garglk.googlecode.com/svn/trunk/ ./
patch -p1 < event.patch

