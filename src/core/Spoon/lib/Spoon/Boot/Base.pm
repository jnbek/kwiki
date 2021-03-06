package Spoon::Boot::Base;
use Spoon::Base -Base;

field 'config';
field 'main';

sub new {
    $self = $self->SUPER::new(@_);
    $self->init;
    return $self;
}

sub init {
    for my $type (qw(main config hub)) {
        my $method = "${type}_class";
        my $class = $self->$method;
        eval "use $class; 1" or die $@;
    }

    my $config = $self->config_class->new;
    $self->config($config);

    my $hub = $self->hub_class->new;

    my $main = $self->main_class->new;
    $hub->main($main);
    $hub->config($config);

    $self->main($main);
    $self->setup;
}

sub setup {
    $self->add_default_classes;
    $self->add_configs_files;
    $self->add_plugins_files;
}

sub add_default_classes {
    my $default = shift;
    while (my ($key, $val) = each %$default) {
        unless (defined $self->config->{$key}) {
            $self->config->add_config({ $key => $val });
        }
    }
}

sub add_plugins_files {
    for my $file ($self->hub->paths->all_ending('plugins')) {
        $self->config->add_plugins_file($file);
    }
}

sub cli_config {
    push @{$self->config->plugin_classes}, 'Kwiki::Simple::Server::HTTP';
    return $self;
}
