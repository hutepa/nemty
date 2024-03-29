use utf8;
package nemty::Schema::Result::TblVascodp;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::TblVascodp

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

=head1 TABLE: C<TBL_VASCODP>

=cut

__PACKAGE__->table("TBL_VASCODP");

=head1 ACCESSORS

=head2 digipass

  data_type: 'char'
  is_nullable: 0
  size: 22

=head2 user_id

  data_type: 'char'
  is_nullable: 1
  size: 100

=head2 dp_type

  data_type: 'char'
  is_nullable: 1
  size: 5

=head2 algo_type

  data_type: 'char'
  is_nullable: 1
  size: 2

=head2 dp_data

  data_type: 'char'
  is_nullable: 1
  size: 248

=cut

__PACKAGE__->add_columns(
  "digipass",
  { data_type => "char", is_nullable => 0, size => 22 },
  "user_id",
  { data_type => "char", is_nullable => 1, size => 100 },
  "dp_type",
  { data_type => "char", is_nullable => 1, size => 5 },
  "algo_type",
  { data_type => "char", is_nullable => 1, size => 2 },
  "dp_data",
  { data_type => "char", is_nullable => 1, size => 248 },
);

=head1 PRIMARY KEY

=over 4

=item * L</digipass>

=back

=cut

__PACKAGE__->set_primary_key("digipass");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:FHf4gKrQ2SRtnRDQXJeNdQ


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
