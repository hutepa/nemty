use utf8;
package nemty::Schema::Result::Radsqlradius;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::Radsqlradius

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

=head1 TABLE: C<RADSQLRADIUS>

=cut

__PACKAGE__->table("RADSQLRADIUS");

=head1 ACCESSORS

=head2 targetname

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 host1

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 host2

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 secret

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 authport

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 acctport

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 retries

  data_type: 'integer'
  is_nullable: 1

=head2 retrytimeout

  data_type: 'integer'
  is_nullable: 1

=head2 useoldascendpasswords

  data_type: 'integer'
  is_nullable: 1

=head2 serverhasbrokenportnumbers

  data_type: 'integer'
  is_nullable: 1

=head2 serverhasbrokenaddresses

  data_type: 'integer'
  is_nullable: 1

=head2 ignorereplysignature

  data_type: 'integer'
  is_nullable: 1

=head2 failurepolicy

  data_type: 'integer'
  is_nullable: 1

=head2 failurebackofftime

  data_type: 'integer'
  is_nullable: 1

=head2 maxfailedrequests

  data_type: 'integer'
  is_nullable: 1

=head2 maxfailedgracetime

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "targetname",
  { data_type => "char", is_nullable => 1, size => 50 },
  "host1",
  { data_type => "char", is_nullable => 1, size => 50 },
  "host2",
  { data_type => "char", is_nullable => 1, size => 50 },
  "secret",
  { data_type => "char", is_nullable => 1, size => 50 },
  "authport",
  { data_type => "char", is_nullable => 1, size => 20 },
  "acctport",
  { data_type => "char", is_nullable => 1, size => 20 },
  "retries",
  { data_type => "integer", is_nullable => 1 },
  "retrytimeout",
  { data_type => "integer", is_nullable => 1 },
  "useoldascendpasswords",
  { data_type => "integer", is_nullable => 1 },
  "serverhasbrokenportnumbers",
  { data_type => "integer", is_nullable => 1 },
  "serverhasbrokenaddresses",
  { data_type => "integer", is_nullable => 1 },
  "ignorereplysignature",
  { data_type => "integer", is_nullable => 1 },
  "failurepolicy",
  { data_type => "integer", is_nullable => 1 },
  "failurebackofftime",
  { data_type => "integer", is_nullable => 1 },
  "maxfailedrequests",
  { data_type => "integer", is_nullable => 1 },
  "maxfailedgracetime",
  { data_type => "integer", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<RADSQLRADIUS_I>

=over 4

=item * L</targetname>

=back

=cut

__PACKAGE__->add_unique_constraint("RADSQLRADIUS_I", ["targetname"]);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:ncbLiHELyypJQEahTKXE9w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
