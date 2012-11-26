use inc::Module::Install;
use Module::Install::Repository;
use Module::Install::ReadmePodFromPod;

name 'MooseX-Types-Email-Loose';
all_from 'lib/MooseX/Types/Email/Loose.pm';
readme_pod_from 'lib/MooseX/Types/Email/Loose.pm';

requires 'Email::Valid::Loose';
requires 'Moose';
requires 'MooseX::Types::Common';
requires 'MooseX::Types::Email';

test_requires 'Test::More';
test_requires 'Test::Exception';
test_requires 'namespace::autoclean';

tests 't/*.t';
author_tests 'xt';

auto_set_repository;
auto_include;

WriteAll;
