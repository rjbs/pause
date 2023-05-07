#!perl

use strict;
use warnings;

use Test::Requires qw(Test::mysqld);

use lib 't/lib';
use TestSetup;

use Test::Class::Load 't/test_classes/';

if (@ARGV) {
    Test::Class->runtests(@ARGV);
} else {
    Test::Class->runtests;
}

