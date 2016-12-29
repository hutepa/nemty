use utf8;
package nemty::Schema::Result::Radsqlradiusindirect;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::Radsqlradiusindirect

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

=head1 TABLE: C<RADSQLRADIUSINDIRECT>

=cut

__PACKAGE__->table("RADSQLRADIUSINDIRECT");

=head1 ACCESSORS

=head2 sourcename

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 targetname

  data_type: 'char'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "sourcename",
  { data_type => "char", is_nullable => 1, size => 50 },
  "targetname",
  { data_type => "char", is_nullable => 1, size => 50 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<RADSQLRADIUSINDIRECT_I>

=over 4

=item * L</sourcename>

=back

=cut

__PACKAGE__->add_unique_constraint("RADSQLRADIUSINDIRECT_I", ["sourcename"]);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:gVmJWjkE9FAZuIyS4JAa1A


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
