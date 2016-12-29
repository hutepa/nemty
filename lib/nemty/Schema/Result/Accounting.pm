use utf8;
package nemty::Schema::Result::Accounting;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::Accounting

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

=head1 TABLE: C<ACCOUNTING>

=cut

__PACKAGE__->table("ACCOUNTING");

=head1 ACCESSORS

=head2 username

  data_type: 'char'
  is_nullable: 0
  size: 50

=head2 time_stamp

  data_type: 'integer'
  is_nullable: 1

=head2 acctstatustype

  data_type: 'char'
  is_nullable: 1
  size: 10

=head2 acctdelaytime

  data_type: 'integer'
  is_nullable: 1

=head2 acctinputoctets

  data_type: 'integer'
  is_nullable: 1

=head2 acctoutputoctets

  data_type: 'integer'
  is_nullable: 1

=head2 acctsessionid

  data_type: 'char'
  is_nullable: 1
  size: 30

=head2 acctsessiontime

  data_type: 'integer'
  is_nullable: 1

=head2 acctterminatecause

  data_type: 'integer'
  is_nullable: 1

=head2 nasidentifier

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 nasport

  data_type: 'integer'
  is_nullable: 1

=head2 framedipaddress

  data_type: 'char'
  is_nullable: 1
  size: 22

=cut

__PACKAGE__->add_columns(
  "username",
  { data_type => "char", is_nullable => 0, size => 50 },
  "time_stamp",
  { data_type => "integer", is_nullable => 1 },
  "acctstatustype",
  { data_type => "char", is_nullable => 1, size => 10 },
  "acctdelaytime",
  { data_type => "integer", is_nullable => 1 },
  "acctinputoctets",
  { data_type => "integer", is_nullable => 1 },
  "acctoutputoctets",
  { data_type => "integer", is_nullable => 1 },
  "acctsessionid",
  { data_type => "char", is_nullable => 1, size => 30 },
  "acctsessiontime",
  { data_type => "integer", is_nullable => 1 },
  "acctterminatecause",
  { data_type => "integer", is_nullable => 1 },
  "nasidentifier",
  { data_type => "char", is_nullable => 1, size => 50 },
  "nasport",
  { data_type => "integer", is_nullable => 1 },
  "framedipaddress",
  { data_type => "char", is_nullable => 1, size => 22 },
);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:1YyluHaYcfAPyiWNSsDevw


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
