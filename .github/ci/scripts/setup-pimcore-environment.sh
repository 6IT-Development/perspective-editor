#!/bin/bash

set -eu

#cp -rv .github/ci/files/var .

mkdir -p var/config
mkdir -p bin

cp .github/ci/files/.env .
cp -r .github/ci/files/config/. config
cp -r .github/ci/files/templates/. templates
cp -r .github/ci/files/bin/console bin/console
chmod 755 bin/console
cp -r .github/ci/files/kernel/. kernel
cp -r .github/ci/files/public/. public

# six-it/admin-ui-classic-bundle is a hard requirement in composer.json (Symfony 7.4 / PHP 8.4),
# so neither pimcore/admin-ui-classic-bundle nor the Pimcore 10 security.yaml fallback are needed anymore.
