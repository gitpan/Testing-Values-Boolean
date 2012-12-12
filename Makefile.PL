use 5.016002;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Testing::Values::Boolean',
    VERSION_FROM      => 'lib/Boolean.pm', # finds $VERSION
    PREREQ_PM         => {}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT       => 'True and false module for quick and easy booleans.', # retrieve abstract from module
       AUTHOR         => 'Alexej G. Magura <agm2819@gmail.com>') : ()),
    LICENSE	      => 'BSD'
);
