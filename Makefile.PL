use inc::Module::Install;
use lib 'lib';
use Task::DWIM::Test;

name           'Task-DWIM-Test';
all_from       'lib/Task/DWIM/Test.pm';
#build_requires 'Test::More'                => '0.42';
#build_requires 'File::Spec'                => '0.80';

requires perl  => 5.008;

my %modules = Task::DWIM::Test::get_modules();
foreach my $name (keys %modules) {
    requires $name => $modules{$name};
}

repository 'https://github.com/dwimperl/Task-DWIM';

WriteAll;


