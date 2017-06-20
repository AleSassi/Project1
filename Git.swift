/*git init
git pull			Pulls the commit from  online. To specify branch
git push			Sends the commit online. Branch to be specified
git commit -m 'Message'		Creates a commit with a descriptive message. With no message, nano is opened to set a multiline message
git status			Checks the current git local status
git clone			Clones the repository in the current location
git add *			Adds the modified files to git. * to add everything
git checkout idCommit		Undoes all the changes locally to the specified commit id
git config --global user.email "your_email@public.com"		Sets up the user public email
git checkout -b branchName	Creates a new Branch locally
git push origin branchName	Uploads the commit to the specified branch, either master or the new one
*/

class GitCommands {

func pullCommit(){
print("git pull")
}

}
