package Spoon::Config;
use Spoon::Base -Base;

const class_id => 'config';
field plugin_classes => [];
field overrides => {};

sub all {
    return %$self;
}

sub add_override_filepath {
    my $filepath = shift;
    my $hash = $self->hash_from_file($filepath);
    my $overrides = $self->overrides;
    $overrides->{$_} = $hash->{$_} for keys %$hash;
    $self->add_config($hash);
}

sub add_file {
    my $file = shift;
    for my $dir ($self->hub->paths->all_filepaths('config')) {
        my $filepath = "$dir/$file";
        $self->add_filepath($filepath)
          if -f $filepath;
    }
}

sub add_filepath {
    my $filepath = shift;
    my $hash = $self->hash_from_file($filepath);
    $self->add_config($hash);
    $self->add_config($self->overrides);
}

# sub add_field {
#     my ($field, $value) = @_;
#     field $field;
#     $self->{$field} = $value;
# }

sub add_config {
    my $config = shift;
    my $hash = ref $config
    ? $config
    : $self->hash_from_file($config);
    for my $key (keys %$hash) {
        field $key;
        $self->{$key} = $hash->{$key};
    }
    return $hash;
}

sub hash_from_file {
    my $config = shift;
    die "Invalid name for config file '$config'\n"
      unless $config =~ /\.(\w+)$/;
    my $extension = lc("$1"); # quotes fix 5.8.0 perl bug
    my $method = "parse_${extension}_file";
    -f $config ? $self->$method($config) : {};
}

sub parse_file {
    $self->parse_yaml_file(@_);
}

sub parse_yaml_file {
    my $file = shift;
    $self->parse_yaml(io($file)->utf8->all);
}

sub parse_yaml {
    my $yaml = shift;
    my $hash = {};
    my $latest_key = '';
    for (split /\n/, $yaml) {
        next if (/^#/);
        if (/^-\s*(.*)$/) {
            $hash->{$latest_key} = [] unless ref $hash->{$latest_key};
            push @{$hash->{$latest_key}}, $1;
        }
        elsif (/(.*?)\s*:\s+(.*?)\s*$/ or /(.*?):()\s*$/) {
            $hash->{$1} = $2;
            $latest_key = $1;
        }
    }
    return $hash;
}

sub add_plugin {
    push @{$self->plugin_classes}, shift;
}

sub change_plugin {
    my ($new_class, $old_class) = @_;
    my $pattern = $old_class || do {
        my $temp = $new_class;
        $temp =~ s/^\w+:://;
        '\w+::' . $temp;
    };
    my $plugins = $self->plugin_classes;
    for (@$plugins) {
        last if s/$pattern/$new_class/;
    }
}
