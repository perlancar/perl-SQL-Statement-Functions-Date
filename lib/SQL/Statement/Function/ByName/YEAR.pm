package SQL::Statement::Function::ByName::YEAR;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub SQL_FUNCTION_YEAR {
    my $param = $_[2];

    $param =~ /^(\d{4})-/ or return undef;
    $1;
}

1;
# ABSTRACT: Return the year part from a date/datetime expression

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements YEAR() SQL function. Syntax:

 YEAR(date)

Return integer (e.g. 2015), or undef if argument is not detected as date.
