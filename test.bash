## Test the perl-app Cookiecutter template.
##
## This verifies that a sample project can be created from the template, pass a
## basic test suite, and be installed.
##
set -e  # exit immediately on failure
if [[ "$(uname)" == "Darwin" ]]
then  # OS X uses BSD mktemp
    MKTEMP="mktemp -d -t tmp"
else  # assume Linux/GNU or similar
    MKTEMP="mktemp -d"
fi
template=$(pwd)
tmpdir=$(${MKTEMP})
trap "rm -rf $tmpdir" EXIT  # remove on exit
pushd $tmpdir
cookiecutter $template --no-input
cd Namespace-Application
perl Build.PL
./Build
./Build test
./Build install --install_base=$tmpdir 
popd
exit 0
