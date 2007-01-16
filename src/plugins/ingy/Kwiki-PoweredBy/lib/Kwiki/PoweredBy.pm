package Kwiki::PoweredBy;
use Kwiki::Plugin -Base;
use mixin 'Kwiki::Installer';
our $VERSION = '0.11';

const class_id => 'powered_by';
const css_file => 'powered_by.css';

sub register {
    my $registry = shift;
    $registry->add(preload => $self->class_id);
    $registry->add(widget => 'powered_by', 
                   template => 'powered_by.html',
                  );
}

__DATA__

=head1 NAME 

Kwiki::PoweredBy - Kwiki Powered-By Plugin

=head1 SYNOPSIS

    > kwiki -add Kwiki::PoweredBy

=head1 DESCRIPTION

Provides a "Powered by Kwiki" logo for your Kwiki site.

=head1 CREDITS

Powered By image created/donated by Florian "|fire|" Merges.

=head1 AUTHOR

Ingy döt Net <ingy@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2006. Ingy döt Net. All rights reserved.

Copyright (c) 2005. Brian Ingerson. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut
__css/powered_by.css__
#powered_by img
{
  border: none;
}

#powered_by 
{
}
__template/tt2/powered_by.html__
<div id="powered_by">
<a href="http://www.kwiki.org"><img src="plugin/powered_by/powered_by_kwiki.png" title="Powered By Kwiki" /></a>
</div>
__plugin/powered_by/powered_by_kwiki.png__
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
RU5ErkJggg==