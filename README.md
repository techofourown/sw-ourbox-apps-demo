# sw-ourbox-apps-demo

`sw-ourbox-apps-demo` is the first concrete OurBox `apps` repository.

It owns first-party demo application source and the CI that publishes those
applications as OCI images for downstream catalog repos to consume.

## Published applications

- `landing`
  - static landing page served from nginx
  - image: `ghcr.io/techofourown/sw-ourbox-apps-demo/landing`
- `todo-bloom`
  - browser-only to-do demo app served from nginx
  - image: `ghcr.io/techofourown/sw-ourbox-apps-demo/todo-bloom`

This repo does not claim ownership of third-party applications such as `dufs`
or `flatnotes`. Catalog repos may still include those external images alongside
the images published here.

## Repository layout

- [apps-manifest.json](/techofourown/sw-ourbox-apps-demo/apps-manifest.json)
  - machine-readable description of the published applications
- [apps/landing](/techofourown/sw-ourbox-apps-demo/apps/landing)
  - source and image build inputs for the landing page
- [apps/todo-bloom](/techofourown/sw-ourbox-apps-demo/apps/todo-bloom)
  - source and image build inputs for Todo Bloom
- [.github/workflows/ci.yml](/techofourown/sw-ourbox-apps-demo/.github/workflows/ci.yml)
  - lightweight validation for manifest and source layout
- [.github/workflows/publish-images.yml](/techofourown/sw-ourbox-apps-demo/.github/workflows/publish-images.yml)
  - builds and publishes the application images to GHCR

## Local notes

These applications are intentionally simple. The goal of this repo is to prove
the `sw-ourbox-apps-*` publisher shape with more than one app in the same repo,
using real published images that downstream catalog repos can pin by digest.
