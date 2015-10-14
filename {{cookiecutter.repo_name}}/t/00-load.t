#!perl -T
use 5.006;
use strict;
use warnings;
use Test::More;

plan tests => 1;

BEGIN {
    use_ok( '{{ cookiecutter.module_name }}' ) || print "Bail out!\n";
}

diag( "Testing {{ cookiecutter.module_name }} ${{ cookiecutter.module_name }}::VERSION, Perl $], $^X" );
