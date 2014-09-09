
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}

use strict;
use warnings;

# this test was generated with Dist::Zilla::Plugin::Test::NoTabs 0.08

use Test::More 0.88;
use Test::NoTabs;

my @files = (
    'lib/Dancer2/Plugin/Deferred.pm',
    't/00-compile.t',
    't/00-report-prereqs.t',
    't/deferred.t',
    't/keep.t',
    't/views/index.tt',
    't/views/link.tt'
);

notabs_ok($_) foreach @files;
done_testing;
