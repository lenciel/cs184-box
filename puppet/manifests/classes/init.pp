# Commands to run before all others in puppet.
class init {
    group { "puppet":
        ensure => "present",
    }

    # Update the system packages.
    exec { "update_apt":
        command => "sudo apt-get update",
    }

    package { "python-software-properties":
        ensure => present,
        require => [
            Exec["update_apt"],
        ];
    }
}
