package SQL::Statement::Function::ByName::MONTH;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub MONTH {
    my $param = $_[2];

    $param =~ /^\d{4}-(\d{2})-/ or return undef;
    $1+0;
}

1;
# ABSTRACT: MONTH() SQL function

=head1 DESCRIPTION

Implements MONTH() SQL function. Syntax:

 MONTH(date)

Returns 1-12, or undef if argument is not detected as date.
