package SQL::Statement::Function::ByName::WEEKDAY;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Date::Calc qw(Day_of_Week);

sub SQL_FUNCTION_WEEKDAY {
    my $param = $_[2];
    $param =~ /\A(\d{4})-(\d{2})-(\d{2})/ or return undef;
    Day_of_Week($1, $2, $3) - 1;
}

1;
# ABSTRACT: WEEKDAY() SQL function

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements WEEKDAY() SQL function. Syntax:

 WEEKDAY(date)

Returns 0-6 (0=Monday, 6=Sunday), or undef if argument is not detected as date.
