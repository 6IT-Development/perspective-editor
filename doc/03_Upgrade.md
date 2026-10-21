# Update Notes

## Update to the 6IT version (Symfony 7.4 / PHP 8.4)
### General
- Requires PHP `~8.4.0`, Symfony `^7.4`, `six-it/pimcore-source` `^2.0` and `six-it/admin-ui-classic-bundle` `^2.0`.
- The composer package was renamed to `six-it/perspective-editor`.
- Dropped `pimcore/compatibility-bridge-v10`, `Pimcore\Bundle\AdminBundle\Perspective\Config` and
  `Pimcore\Bundle\AdminBundle\CustomView\Config` are used directly.
- Routes are defined with PHP attributes (`#[Route]`), the routing resource type changed from `annotation` to `attribute`.

## Update to Version 1.8
### General
- Dropped support of Pimcore 10, bumped minimum requirement of `pimcore/pimcore` to `^11.2`. Replaced all `$request->get()` with their explicit input source.