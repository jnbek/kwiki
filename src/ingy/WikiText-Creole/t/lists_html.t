use t::TestDocumentTools tests => 1;

# no_diff;
spec_file 't/data/lists';

filters {
    creole => 'parse_creole_html',
};

run_is creole => 'html';
