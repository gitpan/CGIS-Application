use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'CGIS::Application',
    'VERSION_FROM'	=> 'Application.pm', # finds $VERSION
    'PREREQ_PM'		=> {'CGI::Application', 'CGIS' => undef, 'CGI::Session'=>undef}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?    ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM => 'Application.pm', # retrieve abstract from module
       AUTHOR     => 'S. B. Ruzmetov <sherzodr@cpan.org>') : ()),
);
