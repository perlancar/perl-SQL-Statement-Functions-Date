package SQL::Statement::Function::ByName::DAYOFYEAR;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Date::Calc qw(Day_of_Year);

sub DAYOFYEAR {
    my $param = $_[2];
    $param =~ /\A(\d{4})-(\d{2})-(\d{2})/ or return undef;
    Day_of_Year($1, $2, $3);
}

1;
# ABSTRACT: DAYOFYEAR() SQL function

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements DAYOFYEAR() SQL function. Syntax:

 DAYOFYEAR(date)

Returns 1-366, or undef if argument is not detected as date.
