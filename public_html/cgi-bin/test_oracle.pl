#!/usr/bin/perl

use DBI;
use CGI qw/:standard/;

#$ENV{"ORACLE_HOME"} = "/u01/home/dba/oracle/product/8.0.5";
$dbh=DBI->connect ("DBI:Oracle:host=172.20.138.6;sid=ORA1;port=1521","tom","tom")
                 or die "Did not connect to database";

$sth=$dbh->prepare("select Name, Notes from people");
$sth->execute;

print "Content-Type: text/html\n\n";

while (($Name,$Notes) = $sth->fetchrow()) {
   print $Name;
   print " ";
   print $Notes;
   print "<br>";
}
$sth->finish;
$dbh->disconnect;
