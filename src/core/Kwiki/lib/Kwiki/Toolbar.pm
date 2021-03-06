package Kwiki::Toolbar;
use Kwiki::Pane -Base;

const class_id => 'toolbar';
const pane_template => 'toolbar_pane.html';
const css_file => 'toolbar.css';
const config_file => 'toolbar.yaml';

sub order {
    @{$self->config->toolbar_order};
}

__DATA__

__template/tt2/toolbar_pane.html__
<div class="toolbar">
[% FOREACH u = units %]
  <span class="toolbar_button">[% u %]</span>
[% END %]
</div>
__config/toolbar.yaml__
toolbar_order:
- search_box
- home_button
- recent_changes_button
- user_preferences_button
- new_page_button
- edit_button
- revisions_button
- revisions_controls
__css/toolbar.css__
div.toolbar {
}
span.toolbar_button {
  margin-left: 5px;
  margin-right: 5px;
}
