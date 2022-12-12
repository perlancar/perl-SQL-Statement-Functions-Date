package SQL::Statement::Function::ByName::ISO_YEARWEEK;

use 5.010001;
use strict;
use warnings;

use Date::Calc qw(Week_of_Year);

# AUTHORITY
# DATE
# DIST
# VERSION

sub SQL_FUNCTION_ISO_YEARWEEK {
    my $param = $_[2];
    $param =~ /\A(\d{4})-(\d{2})-(\d{2})/ or return undef;
    my ($woyear, $year) = Week_of_Year($1, $2, $3);
    sprintf "%04dW%02d", $year, $woyear;
}

1;
# ABSTRACT: Return ISO 8601 YYYY-"W"ww (e.g. 2022-W51) of a date/datetime expression

=for Pod::Coverage .+

=head1 DESCRIPTION

Given a date in YYYY-mm-dd format, will return the ISO 8601 YYYY-"W"ww format.
Example:

 ISO_YEARWEEK('2016-01-01')  -- 2015W53
 ISO_YEARWEEK('2016-01-04')  -- 2016W01

This can be an alternative to WEEKOFYEAR(), where it can give e.g. 53 even
though the date is in the first week of January.

 WEEKOFYEAR('2016-01-01')  -- 53
 WEEKOFYEAR('2016-01-04')  -- 1
