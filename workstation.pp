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
    "nginx",
    "oracle-java7-installer",
    "python",
    "python-pip",
    "python-dev",
    "ruby",
    "ruby-dev"
]

package { $enhancers: }
