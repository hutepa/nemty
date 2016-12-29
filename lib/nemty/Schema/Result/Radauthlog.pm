use utf8;
package nemty::Schema::Result::Radauthlog;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::Radauthlog

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

=head1 TABLE: C<RADAUTHLOG>

=cut

__PACKAGE__->table("RADAUTHLOG");

=head1 ACCESSORS

=head2 time_stamp

  data_type: 'integer'
  is_nullable: 1

=head2 username

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 type

  data_type: 'integer'
  is_nullable: 1

=head2 reason

  data_type: 'char'
  is_nullable: 1
  size: 50

=cut

__PACKAGE__->add_columns(
  "time_stamp",
  { data_type => "integer", is_nullable => 1 },
  "username",
  { data_type => "char", is_nullable => 1, size => 50 },
  "type",
  { data_type => "integer", is_nullable => 1 },
  "reason",
  { data_type => "char", is_nullable => 1, size => 50 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:NsG06TX315Z6IoDI9IYw3Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
