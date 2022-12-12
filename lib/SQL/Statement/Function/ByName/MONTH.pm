package SQL::Statement::Function::ByName::MONTH;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub SQL_FUNCTION_MONTH {
    my $param = $_[2];

    $param =~ /^\d{4}-(\d{2})-/ or return undef;
    $1+0;
}

1;
# ABSTRACT: Return the month part of a date/datetime expression

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements MONTH() SQL function. Syntax:

 MONTH(date)

Returns 1-12, or undef if argument is not detected as date.
