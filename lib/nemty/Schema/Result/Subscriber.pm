use utf8;
package nemty::Schema::Result::Subscriber;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

=head1 NAME

nemty::Schema::Result::Subscriber

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

=head1 TABLE: C<SUBSCRIBERS>

=cut

__PACKAGE__->table("SUBSCRIBERS");

=head1 ACCESSORS

=head2 username

  data_type: 'char'
  is_nullable: 0
  size: 50

=head2 password

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 encryptedpassword

  data_type: 'char'
  is_nullable: 1
  size: 50

=head2 checkattr

  data_type: 'char'
  is_nullable: 1
  size: 200

=head2 replyattr

  data_type: 'char'
  is_nullable: 1
  size: 200

=head2 timeleft

  data_type: 'integer'
  is_nullable: 1

=cut

__PACKAGE__->add_columns(
  "username",
  { data_type => "char", is_nullable => 0, size => 50 },
  "password",
  { data_type => "char", is_nullable => 1, size => 50 },
  "encryptedpassword",
  { data_type => "char", is_nullable => 1, size => 50 },
  "checkattr",
  { data_type => "char", is_nullable => 1, size => 200 },
  "replyattr",
  { data_type => "char", is_nullable => 1, size => 200 },
  "timeleft",
  { data_type => "integer", is_nullable => 1 },
);

=head1 UNIQUE CONSTRAINTS

=head2 C<USERNAME_I>

=over 4

=item * L</username>

=back

=cut

__PACKAGE__->add_unique_constraint("USERNAME_I", ["username"]);


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-28 13:02:37
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:7HpMk6jbCIVZPgS3n2Su4Q


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable;
1;
