#!/usr/bin/env python
# -*- coding: utf-8 -*-


import os
import sys

def find_above(*names):
    """Attempt to locate a .workon file by searching parent dirs."""

    path = '.'

    while os.path.split(os.path.abspath(path))[1]:
        for name in names:
            joined = os.path.join(path, name)
            if os.path.exists(joined):
                return os.path.abspath(joined)
        path = os.path.join('..', path)


if __name__ == '__main__':

    wo_file = find_above('.workon')
    if wo_file and not 'VIRTUAL_ENV' in os.environ.keys():
        with open(wo_file) as f:
            print('source {0}/bin/activate'.format(f.readlines()[0]))

    elif not wo_file and 'VIRTUAL_ENV' in os.environ.keys():
        print('deactivate')
