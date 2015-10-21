Perl Application Project Template
=================================

Overview |travis.png|
---------------------

This is a `Cookiecutter`_ template for creating a Perl application project, and 
is based on the output of `Module::Starter`_.


..  |travis.png| image:: https://travis-ci.org/mdklatt/cookiecutter-perl-app.png?branch=master
    :alt: Travis CI build status
    :target: `travis`_

..  _travis: https://travis-ci.org/mdklatt/cookiecutter-perl-app
..  _Cookiecutter: http://cookiecutter.readthedocs.org
..  _Module::Starter: http://search.cpan.org/~xsawyerx/Module-Starter-1.71/lib/Module/Starter.pm


Template Project Features
-------------------------

* Perl 5.8+
* `Artistic License`_
* `Module::Build`_ package management
* `Test::Most`_ tests
* `Sphinx`_ documentation
* Custom Build command for generating reST documentation from POD


..  _Artistic License: http://www.perlfoundation.org/artistic_license_2_0
..  _Module::Build: http://search.cpan.org/~leont/Module-Build-0.4214/lib/Module/Build.pm
..  _Test::Most: http://perldoc.perl.org/Test/More.html
..  _Sphinx: http://sphinx-doc.org


Minimum Requirements
--------------------

* `Cookiecutter`_ 1.0 (requires Python)


Usage
-----

Install Python requirements for using the template:

..  code-block::

    $ pip install --requirement=requirements.txt --user 


Create a new project directly from the template on `GitHub`_:

..  code-block::
   
    $ cookiecutter gh:mdklatt/cookiecutter-perl-app


..  _GitHub: https://github.com/mdklatt/cookiecutter-perl-app
