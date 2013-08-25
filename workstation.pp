Package { ensure => "installed" }

$enhancers = [ 
    "screen",
    "emacs23-nox",
    "build-essential",
    "pidgin",
    "libreoffice",
    "maven",
    "git",
    "subversion",
    "transmission",
    "vlc",
    "nautilus-dropbox",
    "nginx"
]

package { $enhancers: }

# TODO too old, script to fetch latest
#package { "eclipse":
#    ensure => "installed"
#}
# chrome
# firefox
