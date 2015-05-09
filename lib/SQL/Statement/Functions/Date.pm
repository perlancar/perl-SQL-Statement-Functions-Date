package SQL::Statement::Functions::Date;

# DATE
# VERSION

1;
# ABSTRACT: More date/time functions

=head1 DESCRIPTION

This distribution contains several SQL functions to be used with
L<SQL::Statement>:

 YEAR()
 MONTH()
 DAYOFYEAR()
 DAYOFMONTH()
 DAY()
 WEEKOFYEAR()
 WEEKDAY()

They are based on MySQL's version. More functions wil be added as needed.

To use a function from Perl script:

 require SQL::Statement::Function::ByName::YEAR;
 $dbh->do(qq{CREATE FUNCTION YEAR NAME "SQL::Statement::Function::ByName::YEAR::YEAR"});

To use a function from L<fsql>:

 % fsql -F YEAR --add-csv path/to/sometable.csv "SELECT col1, YEAR(col2) FROM sometable ..."


=head1 SEE ALSO

L<SQL::Statement>

L<App::fsql>
