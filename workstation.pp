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
    "python",
    "ruby"
]

package { $enhancers: }
