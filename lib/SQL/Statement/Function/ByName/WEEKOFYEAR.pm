package SQL::Statement::Function::ByName::WEEKOFYEAR;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use Date::Calc qw(Week_of_Year);

sub WEEKOFYEAR {
    my $param = $_[2];
    $param =~ /\A(\d{4})-(\d{2})-(\d{2})/ or return undef;
    my ($woyear, $year) = Week_of_Year($1, $2, $3);
    $woyear;
}

1;
# ABSTRACT: WEEKOFYEAR() SQL function

=head1 DESCRIPTION

Implements WEEKOFYEAR() SQL function. Syntax:

 WEEKOFYEAR(date)

Returns 1-53, or undef if argument is not detected as date.
