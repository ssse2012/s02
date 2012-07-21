#!/usr/bin/perl

use CGI;
use DBI;
print "Content-Type: text/html\n\n";
my ($databaseName, $databaseUser, $databasePw, $dbh);
my ($stmt, $sth);

$databaseName="DBI:mysql:testuser";
$databaseUser="testuser";
$databasePw="testuser";

$dbh=DBI->connect($databaseName, $databaseUser, $databasePw)||die "Connect failed: $DBI::errstr\n";

$sth = $dbh->prepare("select * from test")|| die "prepare: $$stmt: $DBI::errstr";

$sth->execute || die "execute: $$stmt: $DBI::errstr";
while (($name, $notes) = $sth->fetchrow()){
  print $name;
  print " ";
  print $notes;
  print "<br>";
}
$sth->finish();
$dbh->disconnect();
