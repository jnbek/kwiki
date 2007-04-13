## Document Object for Perldoc
#
# This module provides a class for do operations on Perldoc documents.
#
# Copyright (c) 2007. Ingy döt Net. All rights reserved.
#
# Licensed under the same terms as Perl itself.

package Perldoc::Document;
use strict;
use warnings;
use Perldoc::Base -base;

field 'stash';
field standard_kwid_doc =>
    -init => '$self->get_template("standard_kwid_doc")';

sub to_pod {
    my $self = shift;
    return unless $self->stash->{module}{name};
    my $kwid = $self->generate_kwid;
    require Perldoc::Parser::Kwid;
    require Document::AST::Tree;
    my $ast = Perldoc::Parser::Kwid->new(
        input => $kwid,
        receiver => Document::AST::Tree->new,
    )->parse;
    require Perldoc::Emitter::Pod;
    return Perldoc::Emitter::Pod->new->handle_top($ast);
}

sub generate_kwid {
    use Template;
    my $self = shift;
    
    my $t = Template->new({
        TOLERANT => 0,
    });
    my $output;
    eval {
        $t->process(
            \ $self->standard_kwid_doc,
            $self->stash,
            \$output,
        ) or die $t->error;
    };
    die "Template Toolkit error:\n$@" if $@;
    return $output;
}

sub get_template {
    my $self = shift;
    local $/;
    return <<TEMPLATE;
= NAME

[% module.name %] - [% module.title %]

[%- IF synopsis %]
= SYNOPSIS

[% synopsis -%]
[% END -%]

[%- IF module.description %]
= DESCRIPTION

[% module.description -%]
[% END -%]

= AUTHOR

[% author.name %][% IF author.email %] <[% author.email %]>[% END %]

= COPYRIGHT

Copyright (c) [% copyright.years %]. [% author.name %]. All rights reserved.

[%- IF copyright.license == 'perl-artistic' %]
This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html
[% END -%]
TEMPLATE
}

1;
=for perldoc
This POD generated by Perldoc-0.21.
DO NOT EDIT. Your changes will be lost.

=head1 NAME

Perldoc::Document - Document Object for Perldoc

=head1 DESCRIPTION

This module provides a class for do operations on Perldoc documents.

=head1 AUTHOR

Ingy döt Net

=head1 COPYRIGHT

Copyright (c) 2007. Ingy döt Net. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut