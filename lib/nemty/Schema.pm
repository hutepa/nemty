use utf8;
package nemty::Schema;

# Created by DBIx::Class::Schema::Loader
# DO NOT MODIFY THE FIRST PART OF THIS FILE

use Moose;
use MooseX::MarkAsMethods autoclean => 1;
extends 'DBIx::Class::Schema';

__PACKAGE__->load_namespaces;


# Created by DBIx::Class::Schema::Loader v0.07046 @ 2016-12-21 11:16:25
# DO NOT MODIFY THIS OR ANYTHING ABOVE! md5sum:/n0tMs4ECJfw5DfaQvFZDA


# You can replace this text with custom code or comments, and it will be preserved on regeneration
__PACKAGE__->meta->make_immutable(inline_constructor => 0);
#__PACKAGE__->table('subscribers')->set_primary_key(qw/username/);

1;
