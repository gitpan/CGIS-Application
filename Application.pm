package CGIS::Application;

use strict;
use vars qw(@ISA $VERSION);
require CGI::Application;
require CGIS;

@ISA = qw(CGI::Application CGIS);

($VERSION) = '$Revision: 1.2 $' =~ m/Revision:\s*(\S+)/;

# Preloaded methods go here.
sub new {
  my $class = shift;
  
  return $class->SUPER::new(
    QUERY => CGIS->new(),
    @_
  );
}




1;
__END__
# Below is stub documentation for your module. You better edit it!

=head1 NAME

CGIS::Application - Session supported CGI::Application

=head1 SYNOPSIS

  use base 'CGIS::Application';

=head1 DESCRIPTION

This is a drop-in replacement for CGI::Application to enable
session support in your programs. Refer to L<CGI::Application>
as well as L<CGIS> manuals.

=head1 METHODS

Inherits from CGI::Application and CGIS in the given order.
So all the methods of CGIS as well as CGI::Application 
will be available for you.

=head1 AUTHOR

Sherzod B. Ruzmetov, E<lt>sherzodr@cpan.orgE<gt>

=head1 SEE ALSO

L<CGI::Session>, L<CGI::Application>, L<CGIS>, L<CGI>

=cut
