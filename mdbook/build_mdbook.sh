#!/bin/bash

mdbook build
rm -r ../site/docs/
mv book ../site/docs/
