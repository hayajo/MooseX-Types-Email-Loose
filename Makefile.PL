use inc::Module::Install;
use strict;
use warnings;
name 'MooseX-Types-Email-Loose';
all_from 'lib/MooseX/Types/Email/Loose.pm';

requires(
    'Email::Valid::Loose',
    'Moose',
    'MooseX::Types::Common',
    'MooseX::Types::Email',
);

test_requires(
    'Test::More',
    'Test::Exception',
    'namespace::autoclean',
);
tests 't/*.t';

auto_set_repository;
auto_include;

WriteAll;
