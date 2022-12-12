package SQL::Statement::Function::ByName::DAYOFMONTH;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub SQL_FUNCTION_DAYOFMONTH {
    my $param = $_[2];

    $param =~ /^\d{4}-\d{2}-(\d{2})/ or return undef;
    $1+0;
}

1;
# ABSTRACT: Return day of month of a date/datetime expression

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements DAYOFMONTH() SQL function. Syntax:

 DAYOFMONTH(date)

Returns 1-31, or undef if argument is not detected as date.
