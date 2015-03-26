# php-fpm SysVinit script
[Linux Standard Base (LSB)](http://www.linuxfoundation.org/collaborate/workgroups/lsb) compliant [SysVinit]
(http://freecode.com/projects/sysvinit) script for [php-fpm](https://php.net/install.fpm).

I created this init script mainly because the PHP shipped init script is an awful hack.

## Install
```shell
wget -O /etc/init.d/php-fpm https://raw.githubusercontent.com/Fleshgrinder/php-fpm-sysvinit-script/master/init.sh
chmod 0755 /etc/init.d/php-fpm
chown root:root /etc/init.d/php-fpm
update-rc.d php-fpm defaults
```

You can also clone the repository and just execute the `make`, but please note that this will install the
`/etc/default/php-fpm` file as well (which sets a different location for the configuration file, based on my personal
PHP configuration layout.

## Usage
You can use it via the `service` command or by directly invoking the shell script in `/etc/init.d`; what you like best. 
Your shell will have auto-completion for the various keywords that are available, for instance if you type `service 
php-fpm res` just hit tab for auto-completion.

```shell
service php-fpm force-reload
service php-fpm reload
service php-fpm restart
service php-fpm start
service php-fpm status
service php-fpm stop
```

## Weblinks
- [LSBInitScripts - Debian Wiki](https://wiki.debian.org/LSBInitScripts)
- Other repositories of interest:
    - [php-compile](https://github.com/Fleshgrinder/php-compile)
    - [php-configuration](https://github.com/Fleshgrinder/php-configuration)

## License
> This is free and unencumbered software released into the public domain.
>
> For more information, please refer to <http://unlicense.org>
