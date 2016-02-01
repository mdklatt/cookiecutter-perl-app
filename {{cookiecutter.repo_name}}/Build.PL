use 5.008;
use strict;
use warnings;

use Module::Build;


my $builder = Module::Build->new(
    module_name => '{{ cookiecutter.module_name }}',
    license => 'artistic_2',
    dist_author => q({{ cookiecutter.author_name }} <{{ cookiecutter.author_email }}>),
    dist_version_from => 'lib/{{ cookiecutter.repo_name.replace("-", "/") ~ ".pm" }}',
    release_status => 'unstable',
    recursive_test_files => 1,
    add_to_cleanup => ['_build/', 'blib/', 'MYMETA.*', '{{ cookiecutter.repo_name }}-*'],
);

$builder->create_build_script();
