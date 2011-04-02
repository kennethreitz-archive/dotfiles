# -*- coding: utf-8 -*-

import os
from datetime import datetime

from clint.textui import puts, colored
from fabric.api import *


def pyc():
    """Death to the bytecode!
    """
    local('rm -fr dist build')
    local("find . -name \"*.pyc\" -exec rm '{}' ';'")

    
def pip():
    """Remove pip build cache.
    """
    local('rm -fr /usr/local/var/pip/build')


def trash():
    """Removed Trashcan.
    """
    local('rm -fr ~/.Trash/*')


def backup(what):
    if what == 'music':
        os.system('rsync -av ~/Music/FLAC ~/Shares/music/')
        
    elif what == 'photos':
        os.system('rsync -av ~/Pictures/2011 ~/Shares/photos/shoots')
        
    elif what == 'repos':

        REPO_DIR = '/Users/kreitz/repos'
        BACKUP_DIR = REPO_DIR + '/backups'
        DESTINATION = '~/Shares/photos/shoots'

        DATE = '-'.join([str(x) for x in datetime.now().isocalendar()])


        os.chdir(REPO_DIR)

        repos = []

        puts(colored.green('Fetching repos:'))

        for root, dirnames, filenames in os.walk('.'):
            if 'config' in filenames and '.git' in root:

                repo = (os.path.abspath(root))[:-4]
                repos.append(repo)
                puts('.', end='')

        puts(colored.green('\n%s repos found!' % (len(repos))))

        os.system('mkdir -p {0}'.format(BACKUP_DIR))
        os.system('mkdir -p {0}/{1}'.format(BACKUP_DIR, DATE))
        

        puts(colored.green('Creating backups.'))


        for repo in repos:
            
            orig_path = os.path.abspath(os.path.curdir)
            os.chdir(os.path.abspath(repo))

            bundle = '{0}/{1}/{2}.gitbundle'.format(BACKUP_DIR, DATE, repo.replace('/', '-'))
            print bundle
            puts('.', end='')
            os.system('git bundle create {0} --all > /dev/null'.format(bundle))

            os.chdir(orig_path)

        puts(colored.green('Synchronising backups!'))
        os.system('rsync -av {0}/ {1}'.format(BACKUP_DIR, DESTINATION))
