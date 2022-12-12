package SQL::Statement::Function::ByName::DAY;

use 5.010001;
use strict;
use warnings;

use SQL::Statement::Function::ByName::DAYOFMONTH;

# AUTHORITY
# DATE
# DIST
# VERSION

*SQL_FUNCTION_DAY = \&SQL::Statement::Function::ByName::DAYOFMONTH::SQL_FUNCTION_DAYOFMONTH;

1;
# ABSTRACT: DAY() SQL function

=for Pod::Coverage .+

=head1 DESCRIPTION

Implements DAY() SQL function. It is synonym for DAYOFMONTH().
