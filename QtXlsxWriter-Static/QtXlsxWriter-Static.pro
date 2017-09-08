######################################################################
#
# QtXlsxWriter static library 
#
# https://github.com/j2doll/QtXlsxWriter-Static
#
# MIT License
#
# Copyright (c) 2017-, j2doll (https://github.com/j2doll)
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
######################################################################

TARGET = QtXlsxWriter-Static
TEMPLATE = lib
QT += core gui gui-private
CONFIG += staticlib

#####################################################################
# set debug/release build environment
#
# CONFIG += debug_and_release
# release: DESTDIR = lib-release
# debug: DESTDIR = lib-debug

# The following define makes your compiler emit warnings if you use
# any feature of Qt which as been marked as deprecated (the exact warnings
# depend on your compiler). Please consult the documentation of the
# deprecated API in order to know how to port your code away from it.
DEFINES += QT_DEPRECATED_WARNINGS

# You can also make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

######################################################################
# custom setting for compiler & system

win32-g++
{
 INCLUDEPATH += include/win32-gcc # mingw32
}

win32-msvc2013
{
INCLUDEPATH += include/msvc2013 # visual c++ 2013
}

win32-msvc2015
{
INCLUDEPATH += include/msvc2015 # visual c++ 2015
}

win32-msvc2015
{
 INCLUDEPATH += include/msvc2017 # visual c++ 2017
}

win32-msvc2017
{

}

unix 
{
   INCLUDEPATH += include/unix-gcc	
   !contains(QT_ARCH, x86_64){
       LIB=lib32
       message("compiling for 32bit linux system")
    } else {
       LIB=lib64
       message("compiling for 64bit linux system")
   }
#    target.path = /usr/lib
#    INSTALLS += target
}

mac 
{
  
}

######################################################################

INCLUDEPATH += header

HEADERS += \
header/xlsxabstractooxmlfile.h \ 
header/xlsxabstractooxmlfile_p.h \ 
header/xlsxabstractsheet.h \ 
header/xlsxabstractsheet_p.h \ 
header/xlsxcell.h \ 
header/xlsxcellformula.h \ 
header/xlsxcellformula_p.h \ 
header/xlsxcellrange.h \ 
header/xlsxcellreference.h \ 
header/xlsxcell_p.h \ 
header/xlsxchart.h \ 
header/xlsxchartsheet.h \ 
header/xlsxchartsheet_p.h \ 
header/xlsxchart_p.h \ 
header/xlsxcolor_p.h \ 
header/xlsxconditionalformatting.h \ 
header/xlsxconditionalformatting_p.h \ 
header/xlsxcontenttypes_p.h \ 
header/xlsxdatavalidation.h \ 
header/xlsxdatavalidation_p.h \ 
header/xlsxdocpropsapp_p.h \ 
header/xlsxdocpropscore_p.h \ 
header/xlsxdocument.h \ 
header/xlsxdocument_p.h \ 
header/xlsxdrawinganchor_p.h \ 
header/xlsxdrawing_p.h \ 
header/xlsxformat.h \ 
header/xlsxformat_p.h \ 
header/xlsxglobal.h \ 
header/xlsxmediafile_p.h \ 
header/xlsxnumformatparser_p.h \ 
header/xlsxrelationships_p.h \ 
header/xlsxrichstring.h \ 
header/xlsxrichstring_p.h \ 
header/xlsxsharedstrings_p.h \ 
header/xlsxsimpleooxmlfile_p.h \ 
header/xlsxstyles_p.h \ 
header/xlsxtheme_p.h \ 
header/xlsxutility_p.h \ 
header/xlsxworkbook.h \ 
header/xlsxworkbook_p.h \ 
header/xlsxworksheet.h \ 
header/xlsxworksheet_p.h \ 
header/xlsxzipreader_p.h \ 
header/xlsxzipwriter_p.h

SOURCES += \
xlsxabstractooxmlfile.cpp \ 
xlsxabstractsheet.cpp \ 
xlsxcell.cpp \ 
xlsxcellformula.cpp \ 
xlsxcellrange.cpp \ 
xlsxcellreference.cpp \ 
xlsxchart.cpp \ 
xlsxchartsheet.cpp \ 
xlsxcolor.cpp \ 
xlsxconditionalformatting.cpp \ 
xlsxcontenttypes.cpp \ 
xlsxdatavalidation.cpp \ 
xlsxdocpropsapp.cpp \ 
xlsxdocpropscore.cpp \ 
xlsxdocument.cpp \ 
xlsxdrawing.cpp \ 
xlsxdrawinganchor.cpp \ 
xlsxformat.cpp \ 
xlsxmediafile.cpp \ 
xlsxnumformatparser.cpp \ 
xlsxrelationships.cpp \ 
xlsxrichstring.cpp \ 
xlsxsharedstrings.cpp \ 
xlsxsimpleooxmlfile.cpp \ 
xlsxstyles.cpp \ 
xlsxtheme.cpp \ 
xlsxutility.cpp \ 
xlsxworkbook.cpp \ 
xlsxworksheet.cpp \ 
xlsxzipreader.cpp \ 
xlsxzipwriter.cpp


