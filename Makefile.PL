#!/usr/bin/perl

use strict;
use inc::Module::Install;

name            ('PAUSE');
version_from    ('lib/PAUSE.pm');
abstract        ('Perl Authors Upload Server');
author          ('Andreas Koenig <andreas.koenig@anima.de>');
license         ('perl');
requires        (map +($_ => 0), qw(
    Apache::DB          Apache::HeavyCGI    Apache::Session::Counted
    BSD::Resource       Class::Singleton    Compress::Zlib
    Cwd                 DBI                 Devel::Peek
    Dumpvalue           HTML::Entities      HTTP::Date
    MD5                 Mail::Mailer        Mail::Send
    Module::Signature   Net::FTP            Set::Crontab
    String::Random      Text::Format        Text::Metaphone
    Text::Unidecode     Time::HiRes         URI::Escape
    URI::URL            Unicode::Collate    Unicode::String
    WAIT                XML::SAX::Base      YAML
));
WriteAll        ( sign => 1, check_nmake => 0 );