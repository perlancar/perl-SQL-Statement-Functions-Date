package SQL::Statement::Function::ByName::DAY;

# DATE
# VERSION

use 5.010001;
use strict;
use warnings;

use SQL::Statement::Function::ByName::DAYOFMONTH;

sub DAY {
    goto &SQL::Statement::Function::ByName::DAYOFMONTH::DAYOFMONTH;
}

1;
# ABSTRACT: DAY() SQL function

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements DAY() SQL function. It is synonym for DAYOFMONTH().
