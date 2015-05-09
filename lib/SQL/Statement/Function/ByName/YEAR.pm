package SQL::Statement::Function::ByName::YEAR;

use 5.010001;
use strict;
use warnings;

sub YEAR {
    $_[2] =~ /^(\d{4})-/ or return undef;
    $1;
}

1;
# ABSTRACT: YEAR() SQL function
