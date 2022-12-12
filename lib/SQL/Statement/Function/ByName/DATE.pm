package SQL::Statement::Function::ByName::DATE;

use 5.010001;
use strict;
use warnings;

# AUTHORITY
# DATE
# DIST
# VERSION

sub SQL_FUNCTION_DATE {
    my $param = $_[2];

    $param =~ /^(\d{4}-\d{2}-\d{2})/ or return undef;
    $1;
}

1;
# ABSTRACT: DATE() SQL function

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements DATE() SQL function to return the date part, like in MySQL. Syntax:

 DATE(date)

Return C<2022-12-13>, or undef if argument is not detected as date.
