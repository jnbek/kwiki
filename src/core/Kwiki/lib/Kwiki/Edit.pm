package Kwiki::Edit;
use Kwiki::Plugin -Base;
use mixin 'Kwiki::Installer';

const class_id => 'edit';
const class_title => 'Page Edit';
const cgi_class => 'Kwiki::Edit::CGI';
const config_file => 'edit.yaml';

sub register {
    my $registry = shift;
    $registry->add(action => 'edit');
    $registry->add(action => 'edit_contention');
    $registry->add(toolbar => 'edit_button', 
                   template => 'edit_button.html',
                   show_for => ['display', 'revisions', 'edit_contention'],
                  );
}

sub edit {
    my $page = $self->pages->current;
    return $self->redirect($page->uri)
      unless $page->is_writable;
    return $self->save
      if $self->cgi->button eq $self->config->edit_save_button_text;
    return $self->preview
      if $self->cgi->button eq $self->config->edit_preview_button_text;
    my $content = $self->cgi->revision_id
      ? $self->hub->archive->fetch($page, $self->cgi->revision_id)
      : $page->content;
    $content ||= $self->config->default_content;
    $self->render_screen(
        screen_title => $page->title,
        page_content => $content,
        page_time => $page->modified_time,
    );
}

sub save {
    my $page = $self->pages->current;
    $page->content($self->cgi->page_content);
    if ($page->modified_time != $self->cgi->page_time) {
        my $page_uri = $page->uri;
        return $self->redirect("action=edit_contention;page_name=$page_uri");
    }
    $page->update->store;
    return $self->redirect($page->uri);
}

sub preview {
    my $preview = $self->hub->formatter->text_to_html($self->cgi->page_content);
    $self->render_screen(
        preview_content => $preview,
    );
}

sub edit_contention {
    return $self->render_screen(
        content_pane => 'edit_contention.html',
    );
}

package Kwiki::Edit::CGI;
use base 'Kwiki::CGI';

cgi 'page_content' => qw(-utf8 -newlines);
cgi 'revision_id';
cgi 'page_time';

package Kwiki::Edit;

__DATA__

=head1 NAME 

Kwiki::Edit - Kwiki Page Edit Plugin

=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 AUTHOR

Ingy döt Net <ingy@cpan.org>

=head1 COPYRIGHT

Copyright (c) 2006. Ingy döt Net. All rights reserved.

Copyright (c) 2004. Brian Ingerson. All rights reserved.

This program is free software; you can redistribute it and/or modify it
under the same terms as Perl itself.

See http://www.perl.com/perl/misc/Artistic.html

=cut
__config/edit.yaml__
# DO NOT EDIT THIS FILE
# Put overrides in the top level config.yaml
# See: http://www.kwiki.org/?ChangingConfigDotYaml
#
edit_save_button_text: SAVE
edit_preview_button_text: PREVIEW
default_content: Enter your own page content here.
__template/tt2/edit_button.html__
[% IF hub.pages.current.is_writable %]
[% rev_id = hub.have_plugin('revisions') ? hub.revisions.revision_id : 0 %]
<a href="[% script_name %]?action=edit;page_name=[% page_uri %][% IF rev_id %];revision_id=[% rev_id %][% END %]" accesskey="e" title="Edit This Page">
[% INCLUDE edit_button_icon.html %]
</a>
[% END %]
__template/tt2/edit_button_icon.html__
 Edit 
__template/tt2/edit_contention.html__
<div class="error">
<p>
While you were editing this page somebody else saved changes to
it. You need to start over and apply your changes to the latest
copy of the page.
</p>
<p>
You may also get this message if you saved some changes and then used
your browser's back button to return to the Edit screen and make more
changes. Always use the Kwiki Edit button to get to the Edit screen.
</p>
</div>
__template/tt2/edit_content.html__
<script language="JavaScript" type="text/JavaScript"><!--
function clear_default_content(content_box) {
    if (content_box.value == '[% default_content %]') {
        content_box.value = '';
    }
}
--></script>
[% IF button == edit_preview_button_text %]
[% preview_content %]
<hr />
[% END %]
<form method="POST">
<input type="submit" name="button" value="[% edit_save_button_text %]" />
<input type="submit" name="button" value="[% edit_preview_button_text %]" />
<br />
<br />
<input type="hidden" name="action" value="edit" />
<input type="hidden" name="page_name" value="[% page_uri %]" />
<input type="hidden" name="page_time" value="[% page_time %]" />
<textarea name="page_content" rows="25" cols="80" onfocus="clear_default_content(this)">
[%- page_content -%]
</textarea>
</form>