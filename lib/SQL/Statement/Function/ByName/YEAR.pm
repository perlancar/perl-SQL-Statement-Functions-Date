package SQL::Statement::Function::ByName::YEAR;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

sub SQL_FUNCTION_YEAR {
    my $param = $_[2];

    $param =~ /^(\d{4})-/ or return undef;
    $1;
}

1;
# ABSTRACT: YEAR() SQL function

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements YEAR() SQL function. Syntax:

 YEAR(date)

Return integer (e.g. 2015), or undef if argument is not detected as date.
