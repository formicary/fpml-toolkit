#/bin/bash
git submodule init
git submodule update
for I in Java Files "C#"
do
cd "$I"
git svn init --stdlayout "https://fpml-toolkit.svn.sourceforge.net/svnroot/fpml-toolkit/$I"
git update-ref refs/remotes/git-svn refs/remotes/origin/master
git svn fetch
cd ..
done
