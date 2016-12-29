use utf8;
package nemty::Schema::Result::Radclientlist;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::Radclientlist

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

=head1 TABLE: C<RADCLIENTLIST>

=cut

__PACKAGE__->table("RADCLIENTLIST");

=head1 ACCESSORS

=head2 nasidentifier

  data_type: 'char'
  is_nullable: 0
  size: 50

=head2 secret

  data_type: 'char'
  is_nullable: 0
  size: 50

=head2 ignoreacctsignature

  data_type: 'integer'
  is_nullable: 1

=head2 dupinterval

  data_type: 'integer'
  is_nullable: 1

=head2 defaultrealm

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 nastype

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 snmpcommunity

  data_type: 'char'
  is_nullable: 1
  size: 20

=head2 livingstonoffs

  data_type: 'integer'
  is_nullable: 1

=head2 livingstonhole

  data_type: 'integer'
  is_nullable: 1

=head2 framedgroupbaseaddress

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 framedgroupmaxportsperclassc

  data_type: 'integer'
  is_nullable: 1

=head2 rewriteusername

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 noignoreduplicates

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 prehandlerhook

  data_type: 'char'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "nasidentifier",
  { data_type => "char", is_nullable => 0, size => 50 },
  "secret",
  { data_type => "char", is_nullable => 0, size => 50 },
  "ignoreacctsignature",
  { data_type => "integer", is_nullable => 1 },
  "dupinterval",
  { data_type => "integer", is_nullable => 1 },
  "defaultrealm",
  { data_type => "char", is_nullable => 1, size => 50 },
  "nastype",
  { data_type => "char", is_nullable => 1, size => 20 },
  "snmpcommunity",
  { data_type => "char", is_nullable => 1, size => 20 },
  "livingstonoffs",
  { data_type => "integer", is_nullable => 1 },
  "livingstonhole",
  { data_type => "integer", is_nullable => 1 },
  "framedgroupbaseaddress",
  { data_type => "char", is_nullable => 1, size => 50 },
  "framedgroupmaxportsperclassc",
  { data_type => "integer", is_nullable => 1 },
  "rewriteusername",
  { data_type => "char", is_nullable => 1, size => 50 },
  "noignoreduplicates",
  { data_type => "char", is_nullable => 1, size => 50 },
  "prehandlerhook",
  { data_type => "char", is_nullable => 1, size => 50 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<NASIDENTIFIER_I>

=over 4

=item * L</nasidentifier>

=back

=cut

__PACKAGE__->add_unique_constraint("NASIDENTIFIER_I", ["nasidentifier"]);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:RIk2w1/atcEVZ9fh3OpU2w


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
