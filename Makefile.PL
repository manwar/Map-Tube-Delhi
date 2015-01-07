use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share dist => 'share';

WriteMakefile(
    NAME               => 'Map::Tube::Delhi',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/Map/Tube/Delhi.pm',
    ABSTRACT_FROM      => 'lib/Map/Tube/Delhi.pm',
    LICENSE            => 'artistic_2',
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moo'              => 0,
        'namespace::clean' => 0,
        'File::Share'      => 0,
        'Map::Tube'        => '2.60',
        'File::ShareDir::Install' => 0,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Map-Tube-Delhi-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        provides    => {
            'Map::Tube::Delhi'
                => { file => 'lib/Map/Tube/Delhi.pm',             version => '0.24' },
            'Map::Tube::Delhi::Line::Red'
                => { file => 'lib/Map/Tube/Delhi/Line/Red.pm',    version => '0.24' },
            'Map::Tube::Delhi::Line::Blue'
                => { file => 'lib/Map/Tube/Delhi/Line/Blue.pm',   version => '0.24' },
            'Map::Tube::Delhi::Line::Green'
                => { file => 'lib/Map/Tube/Delhi/Line/Green.pm',  version => '0.24' },
            'Map::Tube::Delhi::Line::Orange'
                => { file => 'lib/Map/Tube/Delhi/Line/Orange.pm', version => '0.24' },
            'Map::Tube::Delhi::Line::Yellow'
                => { file => 'lib/Map/Tube/Delhi/Line/Yellow.pm', version => '0.24' },
            'Map::Tube::Delhi::Line::Violet'
                => { file => 'lib/Map/Tube/Delhi/Line/Violet.pm', version => '0.24' },
        },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/Manwar/Map-Tube-Delhi.git',
                web  => 'https://github.com/Manwar/Map-Tube-Delhi',
            },
        }})
     : ()
    ),
);

package MY;
use File::ShareDir::Install 'postamble';
