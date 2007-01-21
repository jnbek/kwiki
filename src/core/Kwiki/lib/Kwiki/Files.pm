package Kwiki::Files;
use Kwiki::Base -Base;
use mixin 'Kwiki::Installer';

const class_id => 'files';
const class_title => 'Kwiki Files';

__DATA__

__index.cgi__
#!/usr/bin/perl
use lib 'lib';
use Kwiki;
Kwiki->new->debug->process('config*.*', -plugins => 'plugins');
__README__
A Kwiki Welcome
===============

Welcome to Kwiki. Obviously you have installed a kwiki. Good job. If it's not
working properly, check the Installation Notes below. Remember that the
primary source of Kwiki help is:

    http://www.kwiki.org

Cheers, Ingy döt Net (That Kwiki Guy)


Kwiki Installation Notes
========================

If you are running an Apache web server, you'll want to add a section like
this to your httpd.conf file:

    Alias /kwiki/ <%PWD%>/
    <Directory <%PWD%>/>
        Order allow,deny
        Allow from all
        AllowOverride All
        Options ExecCGI
        AddHandler cgi-script .cgi
        DirectoryIndex index.cgi
    </Directory>

Make all your overrides in:

    config.yaml
    plugins

Don't touch the other files unless you know what you are doing.

Kwiki Plugin Installation Notes
===============================

1) Download and install plugins from CPAN
2) Add the new module names to the 'plugins' config file
3) Type 'kwiki -update'
__palm32.png__
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
__palm90.png__
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
nAXCdgAAAABJRU5ErkJggg==
