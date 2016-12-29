use utf8;
package nemty::Schema::Result::Radstatslog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::Radstatslog

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

=head1 TABLE: C<RADSTATSLOG>

=cut

__PACKAGE__->table("RADSTATSLOG");

=head1 ACCESSORS

=head2 time_stamp

  data_type: 'integer'
  is_nullable: 1

=head2 type

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 identifier

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 accessaccepts

  data_type: 'integer'
  is_nullable: 1

=head2 accesschallenges

  data_type: 'integer'
  is_nullable: 1

=head2 accessrejects

  data_type: 'integer'
  is_nullable: 1

=head2 accessrequests

  data_type: 'integer'
  is_nullable: 1

=head2 accountingrequests

  data_type: 'integer'
  is_nullable: 1

=head2 accountingresponses

  data_type: 'integer'
  is_nullable: 1

=head2 badauthaccessrequests

  data_type: 'integer'
  is_nullable: 1

=head2 badauthaccountingrequests

  data_type: 'integer'
  is_nullable: 1

=head2 badauthrequests

  data_type: 'integer'
  is_nullable: 1

=head2 droppedaccessrequests

  data_type: 'integer'
  is_nullable: 1

=head2 droppedaccountingrequests

  data_type: 'integer'
  is_nullable: 1

=head2 droppedrequests

  data_type: 'integer'
  is_nullable: 1

=head2 dupaccessrequests

  data_type: 'integer'
  is_nullable: 1

=head2 dupaccountingrequests

  data_type: 'integer'
  is_nullable: 1

=head2 duplicaterequests

  data_type: 'integer'
  is_nullable: 1

=head2 malformedaccessrequests

  data_type: 'integer'
  is_nullable: 1

=head2 malformedaccountingrequests

  data_type: 'integer'
  is_nullable: 1

=head2 proxiednoreply

  data_type: 'integer'
  is_nullable: 1

=head2 proxiedrequests

  data_type: 'integer'
  is_nullable: 1

=head2 requests

  data_type: 'integer'
  is_nullable: 1

=head2 responsetime

  data_type: 'decimal'
  is_nullable: 1
  size: [12,6]

=cut

__PACKAGE__->add_columns(
  "time_stamp",
  { data_type => "integer", is_nullable => 1 },
  "type",
  { data_type => "char", is_nullable => 1, size => 20 },
  "identifier",
  { data_type => "char", is_nullable => 1, size => 30 },
  "accessaccepts",
  { data_type => "integer", is_nullable => 1 },
  "accesschallenges",
  { data_type => "integer", is_nullable => 1 },
  "accessrejects",
  { data_type => "integer", is_nullable => 1 },
  "accessrequests",
  { data_type => "integer", is_nullable => 1 },
  "accountingrequests",
  { data_type => "integer", is_nullable => 1 },
  "accountingresponses",
  { data_type => "integer", is_nullable => 1 },
  "badauthaccessrequests",
  { data_type => "integer", is_nullable => 1 },
  "badauthaccountingrequests",
  { data_type => "integer", is_nullable => 1 },
  "badauthrequests",
  { data_type => "integer", is_nullable => 1 },
  "droppedaccessrequests",
  { data_type => "integer", is_nullable => 1 },
  "droppedaccountingrequests",
  { data_type => "integer", is_nullable => 1 },
  "droppedrequests",
  { data_type => "integer", is_nullable => 1 },
  "dupaccessrequests",
  { data_type => "integer", is_nullable => 1 },
  "dupaccountingrequests",
  { data_type => "integer", is_nullable => 1 },
  "duplicaterequests",
  { data_type => "integer", is_nullable => 1 },
  "malformedaccessrequests",
  { data_type => "integer", is_nullable => 1 },
  "malformedaccountingrequests",
  { data_type => "integer", is_nullable => 1 },
  "proxiednoreply",
  { data_type => "integer", is_nullable => 1 },
  "proxiedrequests",
  { data_type => "integer", is_nullable => 1 },
  "requests",
  { data_type => "integer", is_nullable => 1 },
  "responsetime",
  { data_type => "decimal", is_nullable => 1, size => [12, 6] },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:Ud6wrIidULG4WJlqFOe2ig


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
