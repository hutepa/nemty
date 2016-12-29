use strict;
use warnings;

use nemty;

my $app = nemty->apply_default_middlewares(nemty->psgi_app);
$app;

