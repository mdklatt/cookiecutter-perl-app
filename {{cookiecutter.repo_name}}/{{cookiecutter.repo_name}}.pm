package {{ cookiecutter.module_name }};

use 5.008;
use strict;
use warnings;

use Exporter qw(import);
our @EXPORT_OK = qw(main);

# This project uses Semantic Versioning <http://semver.org>. Major versions
# introduce significant changes to the API, and backwards compatibility is not
# guaranteed. Minor versions are for new features and backwards-compatible
# changes to the API. Patch versions are for bug fixes and internal code
# changes that do not affect the API. Version 0.x should be considered a
# development version with an unstable API, and backwards compatibility is not
# guaranteed for minor versions.
#
# David Golden's recommendations for version numbers <http://bit.ly/1g8EbKi> 
# are used, e.g. v0.1.2 is "0.001002" and v1.2.3dev4 is "1.002002_004".

our $VERSION = '{{ cookiecutter.project_version }}';
$VERSION = eval $VERSION;  # runtime conversion to numeric value


sub main {
    # Execute the application.
    return 0;
}


if (!caller) {
    # Called from the command line, so execute main() with the command-line
    # arguments.
    exit main(@ARGV);
}

1;

__END__

=pod

=encoding utf8


=head1 NAME

{{ cookiecutter.module_name }} - A basic Perl application.

=head1 VERSION

Version {{ cookiecutter.project_version }}


=head1 SYNOPSIS

This is a template for a Perl application project.

Excute from the command line:

    $ perl {{ cookiecutter.module_name }}.pm


Or from within another Perl application:
    
    use {{ cookiecutter.module_name }};
    main(...);


=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=over 4

=item main

=back


=head1 SUBROUTINES/METHODS

=head2 main

The application entry point.


=head1 AUTHOR

{{ cookiecutter.author_name }}, C<< <{{ cookiecutter.author_email }}> >>


=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc {{ cookiecutter.module_name }}


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright {{ cookiecutter.copyright_year }} {{ cookiecutter.author_name }}.

This program is free software; you can redistribute it and/or modify it
under the terms of the the Artistic License (2.0). You may obtain a
copy of the full license at:

L<http://www.perlfoundation.org/artistic_license_2_0>

Any use, modification, and distribution of the Standard or Modified
Versions is governed by this Artistic License. By using, modifying or
distributing the Package, you accept this license. Do not use, modify,
or distribute the Package, if you do not accept this license.

If your Modified Version has been derived from a Modified Version made
by someone other than you, you are nevertheless required to ensure that
your Modified Version complies with the requirements of this license.

This license does not grant you the right to use any trademark, service
mark, tradename, or logo of the Copyright Holder.

This license includes the non-exclusive, worldwide, free-of-charge
patent license to make, have made, use, offer to sell, sell, import and
otherwise transfer the Package with respect to any patent claims
licensable by the Copyright Holder that are necessarily infringed by the
Package. If you institute patent litigation (including a cross-claim or
counterclaim) against any party alleging that the Package constitutes
direct or contributory patent infringement, then this Artistic License
to you shall terminate on the date that such litigation is filed.

Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER
AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES.
THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY
YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR
CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR
CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE,
EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.


=cut
