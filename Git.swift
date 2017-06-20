//Git.swift
//Written by AleSassi on 19/06/17
//Written on Linux Ubuntu

//MARK: This file contains a cheat sheet of the main git commands, listed as plain text or Swift pseudofunctions

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

import Foundation

class GitCommands {

func pullCommit(){
print("git pull")
}

func pushCommit(fromBranch branch: String){
print("git push origin \(branch)")
}

func commit(withMessage commitMessage: String){
print("git commit -m \(commitMessage)")
}

func getStatus() -> String {
print("git status")
return "This function gets the status of the current Git repo"
}

func cloneRepo() {
print("git clone")
}

func addFilesToGitRepo(all: Bool) {
var addingOption: String!
if all{
addingOption = "*"
} else {
addingOption = "."
}
print("git add \(addingOption)")
}

func revert(toCommit idCommit: String, toBranch branch: String){
if idCommit != nil{
print("git checkout \(idCommit)")
} else if idCommit == nil && branch != nil {
print("git checkout -b \(branch)"
}
}

func configGit(withUserEmail email: String){
print("git config --global user.email \(email)")
}

}
