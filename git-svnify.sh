#/bin/bash
cd "$1"
git svn init --stdlayout "https://fpml-toolkit.svn.sourceforge.net/svnroot/fpml-toolkit/$1"
cp .git/refs/remotes/origin/HEAD .git/refs/remotes/trunk
rm -rf .git/svn
git svn fetch
