#!/bin/sh

# ----------------------------------------------------------------------------------------------------------------------
# This is free and unencumbered software released into the public domain.
#
# Anyone is free to copy, modify, publish, use, compile, sell, or distribute this software, either in source code form
# or as a compiled binary, for any purpose, commercial or non-commercial, and by any means.
#
# In jurisdictions that recognize copyright laws, the author or authors of this software dedicate any and all copyright
# interest in the software to the public domain. We make this dedication for the benefit of the public at large and to
# the detriment of our heirs and successors. We intend this dedication to be an overt act of relinquishment in
# perpetuity of all present and future rights to this software under copyright law.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE
# WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#
# For more information, please refer to <http://unlicense.org>
# ----------------------------------------------------------------------------------------------------------------------

# ----------------------------------------------------------------------------------------------------------------------
# Defaults for php-fpm init script.
#
# AUTHOR:     Richard Fussenegger <richard@fussenegger.info>
# COPYRIGHT:  2015 Richard Fussenegger
# LICENSE:    http://unlicense.org/ PD
# LINK:       http://richard.fussenegger.info/
# ----------------------------------------------------------------------------------------------------------------------

# Canonical absolute path to the PID file.
#
# Note that init script will determine the path itself if not set (usually you do not want to set this).
#PIDFILE=/run/php-fpm.pid

# Arguments that should be passed to the daemon, in this case php-fpm. The
# following arguments were supported in the latest version (which was 5.6.7
# while I was writing this):
#
#  -c <path>|<file>            Look for php.ini file in this directory
#  -n                          No php.ini file will be used
#  -d foo[=bar]                Define INI entry foo with value 'bar'
#  -e                          Generate extended information for debugger/profiler
#  -h                          This help
#  -i                          PHP information
#  -m                          Show compiled in modules
#  -v                          Version number
#  -p, --prefix <dir>          Specify alternative prefix path to FastCGI process manager (default: /usr/local).
#  -g, --pid <file>            Specify the PID file location.
#  -y, --fpm-config <file>     Specify alternative path to FastCGI process manager config file.
#  -t, --test                  Test FPM configuration and exit
#  -D, --daemonize             Force to run in background, and ignore daemonize option from config file
#  -F, --nodaemonize           Force to stay in foreground, and ignore daemonize option from config file
#  -O, --force-stderr          Force output to stderr in nodaemonize even if stderr is not a TTY
#  -R, --allow-to-run-as-root  Allow pool to run as root (disabled by default)
#
# Note that the init script does not pass ANY arguments by default.
DAEMON_ARGS='--fpm-config /etc/php/fpm.ini'
