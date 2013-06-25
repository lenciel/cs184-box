import "classes/*.pp"

$PROJ_DIR = $project_path

Exec {
    path => "/usr/local/bin:/usr/bin:/usr/sbin:/sbin:/bin",
}

class dev {
    file {
        "/vagrant/sites":
            ensure => directory,
            mode => 755;
    }

    class {init: }

    #class { "python":
    #    require => Class[init];
    #}

    #class { "git":
    #    require => Class[init];
    #}

    #class { "heroku":
    #    require => Class[python];
    #}

}

include dev
