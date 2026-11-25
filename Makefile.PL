use 5.010;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME               => 'PDL::IO::Protobuf',
    AUTHOR             => q{C.J. Collier <cjac@google.com>},
    VERSION_FROM       => 'lib/PDL/IO/Protobuf.pm',
    ABSTRACT_FROM      => 'lib/PDL/IO/Protobuf.pm',
    LICENSE            => 'perl_5',
    MIN_PERL_VERSION   => '5.010',
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => '0',
    },
    TEST_REQUIRES => {
        'Test::More' => '0.88',
    },
    PREREQ_PM => {
        'PDL'      => '2.080',
        'Protobuf' => '0.14',
        'Carp'     => '0',
    },
    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources   => {
            repository => {
                type => 'git',
                url  => 'https://github.com/PDLPorters/PDL-IO-Protobuf.git',
                web  => 'https://github.com/PDLPorters/PDL-IO-Protobuf',
            },
            bugtracker => {
                web => 'https://github.com/PDLPorters/PDL-IO-Protobuf/issues',
            },
        },
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'PDL-IO-Protobuf-*' },
);
