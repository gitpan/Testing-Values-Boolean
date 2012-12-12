#!/usr/bin/env perl
use warnings;

use Test::More tests => 1;
BEGIN { use_ok('Boolean') };

$boolean = Testing::Values::Boolean::false();
if ( Testing::Values::Boolean::true() )
{
    print "true\n";
}

if ( $boolean )
{
    print "fail\n";
}
else
{
    print "false\n";
}
