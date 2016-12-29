use utf8;
package nemty::Schema::Result::Radsqlauthby;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::Radsqlauthby

=cut

use strict;
use warnings;

use Moose;
use MooseX::NonMoose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Core';

=head1 COMPONENTS LOADED

=over 4

=item * L<DBIx::Class::InflateColumn::DateTime>

=item * L<DBIx::Class::TimeStamp>

=back

=cut

__PACKAGE__->load_components("InflateColumn::DateTime", "TimeStamp");

=head1 TABLE: C<RADSQLAUTHBY>

=cut

__PACKAGE__->table("RADSQLAUTHBY");

=head1 ACCESSORS

=head2 targetname

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 host

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 port

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 authdn

  data_type: 'char'
  is_nullable: 1
  size: 100

=head2 authpassword

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 basedn

  data_type: 'char'
  is_nullable: 1
  size: 100

=head2 usernameattr

  data_type: 'char'
  is_nullable: 1
  size: 100

=head2 passwordattr

  data_type: 'char'
  is_nullable: 1
  size: 100

=head2 holdserverconnection

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "targetname",
  { data_type => "char", is_nullable => 1, size => 50 },
  "host",
  { data_type => "char", is_nullable => 1, size => 50 },
  "port",
  { data_type => "char", is_nullable => 1, size => 50 },
  "authdn",
  { data_type => "char", is_nullable => 1, size => 100 },
  "authpassword",
  { data_type => "char", is_nullable => 1, size => 50 },
  "basedn",
  { data_type => "char", is_nullable => 1, size => 100 },
  "usernameattr",
  { data_type => "char", is_nullable => 1, size => 100 },
  "passwordattr",
  { data_type => "char", is_nullable => 1, size => 100 },
  "holdserverconnection",
  { data_type => "integer", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<RADSQLAUTHBY_I>

=over 4

=item * L</targetname>

=back

=cut

__PACKAGE__->add_unique_constraint("RADSQLAUTHBY_I", ["targetname"]);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:6xzfi+xL3QjcyaNxA/S1hw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
