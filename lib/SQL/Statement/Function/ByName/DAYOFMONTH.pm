package SQL::Statement::Function::ByName::DAYOFMONTH;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub DAYOFMONTH {
    my $param = $_[2];

    $param =~ /^\d{4}-\d{2}-(\d{2})/ or return undef;
    $1+0;
}

1;
# ABSTRACT: DAYOFMONTH() SQL function

=head1 DESCRIPTION

Implements DAYOFMONTH() SQL function. Syntax:

 DAYOFMONTH(date)

Returns 1-31, or undef if argument is not detected as date.
