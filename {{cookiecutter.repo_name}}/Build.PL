{% set modfile = cookiecutter.repo_name.replace("-", "/") ~ ".pm" -%}
use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => '{{ cookiecutter.module_name }}',
    license             => 'artistic_2',
    dist_author         => q{ {{ cookiecutter.author_name }} <{{ cookiecutter.author_email }}>},
    dist_version_from   => 'lib/{{ modfile }}',
    release_status      => 'unstable',
    configure_requires => {
        'Module::Build' => 0,
    },
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        #'ABC'              => 1.6,
        #'Foo::Bar::Module' => 5.0401,
    },
    add_to_cleanup     => [ '{{ cookiecutter.repo_name }}-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
