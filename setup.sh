#!/usr/bin/env bash

read -p 'Are you sure? This will replace some files in /etc/portage/ (y/n)' -n 1 -r
if [[ ! $REPLY =~ ^[Yy]$ ]]
then
    echo 'user cancelled'
    exit 1
fi


rm -fr /etc/portage/package.keywords
rm -fr /etc/portage/package.mask
rm -fr /etc/portage/package.unmask
rm -fr /etc/portage/package.use
rm -fr /etc/portage/env

ln -sfv /.gentoo/portage/make.conf /etc/portage/make.conf
ln -sfv /.gentoo/portage/package.env /etc/portage/package.env
ln -sfv /.gentoo/portage/package.keywords /etc/portage/package.keywords
ln -sfv /.gentoo/portage/package.mask /etc/portage/package.mask
ln -sfv /.gentoo/portage/package.unmask /etc/portage/package.unmask
ln -sfv /.gentoo/portage/package.use /etc/portage/package.use
ln -sfv /.gentoo/portage/env /etc/portage/env

echo 'done'
