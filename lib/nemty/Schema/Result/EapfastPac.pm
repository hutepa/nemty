use utf8;
package nemty::Schema::Result::EapfastPac;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::EapfastPac

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

=head1 TABLE: C<EAPFAST_PAC>

=cut

__PACKAGE__->table("EAPFAST_PAC");

=head1 ACCESSORS

=head2 pac_opaque

  data_type: 'char'
  is_nullable: 0
  size: 64

=head2 pac_lifetime

  data_type: 'integer'
  is_nullable: 1

=head2 pac_key

  data_type: 'char'
  is_nullable: 1
  size: 64

=cut

__PACKAGE__->add_columns(
  "pac_opaque",
  { data_type => "char", is_nullable => 0, size => 64 },
  "pac_lifetime",
  { data_type => "integer", is_nullable => 1 },
  "pac_key",
  { data_type => "char", is_nullable => 1, size => 64 },
);

=head1 PRIMARY KEY

=over 4

=item * L</pac_opaque>

=back

=cut

__PACKAGE__->set_primary_key("pac_opaque");


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:INSR6qet5GP9TYbONiFDDw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
