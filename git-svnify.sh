#/bin/bash
git submodule init
git submodule update
for I in Java Files "C#"
do
cd "$I"
git svn init --stdlayout "https://fpml-toolkit.svn.sourceforge.net/svnroot/fpml-toolkit/$I"
cp .git/refs/remotes/origin/HEAD .git/refs/remotes/trunk
rm -rf .git/svn
git svn fetch
cd ..
done
