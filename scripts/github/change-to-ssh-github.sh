git remote -v | grep '(push)' | sed -e 's/^origin//' -e 's/^[ \t]*//' -e 's/.push..//'

