========
 ABOUT
========

This archive contains the source code for Vertigo BBS software.

Guardian BBS is Copyright 2013-2017 Vincent Chapman

Forked from Mystic BBS 1.10 A38 Copyright 1997-2013 by James Coyle

Vertigo BBS is released under GPL Version 3 licensing which is
included in the archive.  An information header is prefixed on
each source file that compiles to an executable.

=========================
  COMPILING VERTIGO BBS
=========================

Vertigo BBS is currently compiled exclusively using Free Pascal
compiler (www.freepascal.org) the recommended release being 2.6.2.

Current build options used with Free Pascal are below, contained in example
build.bat and build.sh (for Windows and Linux respectively).  These use the
current recommend compiler options along with Free Pascal's Whole Program
Optimization.  Each file is called as "build <executable>" so:

   Windows: build vertigo            <- Compiles vertigo.exe
     Linux: sh build.sh vertigo      <- Compiles vertigo binary

=========================
   BUILD.BAT (WINDOWS)
=========================

@echo off

REM Purpose: Compile an EXE using whole program optimization
REM
REM To use this, change the \dev\mdl to point to the path where Vertigo's MDL
REM source code is found.  If you compile with ALL code in the same folder, then
REM change this to your folder where all source code is located.  This build.bat
REM is intended to be ran from the same directory as Vertigo's source code.
REM

SET MDLPATH=d:\dev\mdl

del *.wpo

fpc -Fi%MDLPATH% -Fu%MDLPATH% -CX -XX -Xs- -O3 -B -OpPENTIUM3 -OoREGVAR -OoSTACKFRAME -OoPEEPHOLE -OoASMCSE -WN -FW%1-1.wpo -OWall %1
fpc -Fi%MDLPATH% -Fu%MDLPATH% -CX -XX -Xs- -O3 -B -OpPENTIUM3 -OoREGVAR -OoSTACKFRAME -OoPEEPHOLE -OoASMCSE -WN -Fw%1-1.wpo -FW%1-2.wpo -OWall -Owall %1
fpc -Fi%MDLPATH% -Fu%MDLPATH% -CX -XX -Xs -O3 -B -OpPENTIUM3 -OoREGVAR -OoSTACKFRAME -OoPEEPHOLE -OoASMCSE -WN -Fw%1-2.wpo -Owall %1

=============================
   BUILD.SH (LINUX 32-BIT)
=============================

# Purpose: Compile an executable using whole program optimization
#
# To use this, change the /vertigo variable below to the path where Vertigo's MDL
# soure code is found.  If you compile with ALL code in the same folder, then
# change this to your folder where all the source code is located.  This build
# script is intended to be ran from the same directory as Vertigo's source code.

export MDLPATH=/vertigo

rm *.wpo

fpc -Fi$MDLPATH -Fu$MDLPATH -CX -XX -Xs- -O3 -B -OpPENTIUM3 -OoREGVAR -OoSTACKFRAME -OoPEEPHOLE -OoASMCSE -FW$1-1.wpo -OWall $1
fpc -Fi$MDLPATH -Fu$MDLPATH -CX -XX -Xs- -O3 -B -OpPENTIUM3 -OoREGVAR -OoSTACKFRAME -OoPEEPHOLE -OoASMCSE -Fw$1-1.wpo -FW$1-2.wpo -OWall -Owall $1
fpc -Fi$MDLPATH -Fu$MDLPATH -CX -XX -Xs -O3 -B -OpPENTIUM3 -OoREGVAR -OoSTACKFRAME -OoPEEPHOLE -OoASMCSE -Fw$1-2.wpo -Owall $1

===========================
   AUTOMATED COMPILATION
===========================

While a specific automated compilation script is not provided in this README, the
contents should provide enough to make this happen.  The basic structure would be:

   !  CREATE A BACKUP OF YOUR CURRENT VERTIGO SYSTEM
   1. Call GIT to synch against the latest repository for the latest source code
   2. Call BUILD script for each of the Vertigo executables
   3. Copy newly compiled Vertigo executables to appropriate location in Vertigo folder
   
============================
   ADDITIONAL INFORMATION
============================

Vertigo BBS project can be found at vertigobbs.sourceforge.net

Additional support can possibly be found at vertigobbs.com and wiki.vertigobbs.com.

The author can be contacted at this time through e-mail at vertigobbs@gmail.com.  It is
encouraged that fixes and additions be coordinated with the current authors.

!!! WARNING!!!

The current code here reflects the latest 1.10 alphas and is not compatible with 1.09.

With the 1.10 final/stable release we will be officially annoucing Vertigo as a GPL program and
at that time we will branch off to a current stable and development code base as well as release
an upgrade package to get everyone on the same page with both binary and source distributions.
