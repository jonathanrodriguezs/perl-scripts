#!/usr/bin/perl
use strict;
use warnings;
use Email::Send::SMTP::Gmail;

my ($mail,$error) = Email::Send::SMTP::Gmail->new(
    -layer =>'ssl',
    -port  =>'465',
    -smtp  =>'smtp.gmail.com',
    -login =>'john.doe@gmail.com',
    -pass  =>'password'
);
 
die "session error: $error" if $mail ==-1;

$mail->send(
    -to         =>'jane.doe@gmail.com',
    -subject    =>'Hello!',
    -body       =>'Just testing it',
    #-attachments=>'/home/john/Documents/john/learn-perl/test.txt'
);

$mail->bye;
