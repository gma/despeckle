despeckle
=========

A script that helps you do most of the work required to convert RSpec
tests to use MiniTest and Nutrasuite. 

Currently only the xUnit style assertions are supported, but if there's
much interest in it, MiniTest::Spec support would be easy to add.

Features
--------

- Top level `describe` blocks are converted to class statements.
- Nested `describe` blocks are converted to Nutrasuite `the` blocks.
- Many `.should` statements are mapped to their equivalent assertions.

Installation
------------

    $ gem install despeckle

Usage
-----

    $ despeckle < spec/thing_spec.rb > test/thing_test.rb
