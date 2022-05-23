#!/bin/sh

for TARGET in 3.{7..29}.{0..99}; do
  TARGET=$TARGET python3 setup.py sdist
  TARGET=$TARGET python3 setup.py bdist_wheel
  twine upload dist/*
  rm -rf dist build *.egg*
done
