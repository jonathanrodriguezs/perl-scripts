In order to compile and execute run:

$ cc -o showtime showtime.c `perl -MExtUtils::Embed -e ccopts -e ldopts`
$ ./showtime showtime.perl
