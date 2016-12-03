#!/usr/bin/perl

use strict;
use warnings;
use v5.10;
use FindBin qw/$Bin/;
use lib "$Bin/../lib";
use WWW::ModulrFinance;
use Data::Dumper;

die "ENV MODULR_APIKEY" unless $ENV{MODULR_APIKEY};
die "ENV MODULR_HMAC_SECRET" unless $ENV{MODULR_HMAC_SECRET};
my $modulr = WWW::ModulrFinance->new(
    api_key => $ENV{MODULR_APIKEY},
    hmac_secret => $ENV{MODULR_HMAC_SECRET},
);

my $res = $modulr->get_accounts;
say Dumper(\$res);