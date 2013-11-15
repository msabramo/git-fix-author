marca@marca-mac:~/dev/git-fix-author$ mkdir test-repo && cd test-repo && git init
Initialized empty Git repository in /Users/marca/dev/git-fix-author/test-repo/.git/
marca@marca-mac:~/dev/git-fix-author/test-repo$ git config --add user.email foo@bar
marca@marca-mac:~/dev/git-fix-author/test-repo$ touch abc && git add abc && git commit -m "Added abc"
[master (root-commit) 03b3c1f] Added abc
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 abc
marca@marca-mac:~/dev/git-fix-author/test-repo$ git --no-pager log -n 1
commit 03b3c1f81ba99822a5554d682bc38b9498529768
Author: Marc Abramowitz <foo@bar>
Date:   Wed Jul 3 13:54:32 2013 -0700

    Added abc
marca@marca-mac:~/dev/git-fix-author/test-repo$ ../git-fix-author.sh foo@bar marc@marc-abramowitz.com
Rewrite 03b3c1f81ba99822a5554d682bc38b9498529768 (1/1)
Ref 'refs/heads/master' was rewritten
marca@marca-mac:~/dev/git-fix-author/test-repo$ git --no-pager log -n 1
commit 003d7cc99da1e87a52ae06cd9b0f7983cd526d78
Author: Marc Abramowitz <marc@marc-abramowitz.com>
Date:   Wed Jul 3 13:54:32 2013 -0700

    Added abc
