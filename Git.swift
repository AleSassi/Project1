//Git.swift
//Written by AleSassi on 19/06/17
//Written on Linux Ubuntu and Xcode 8.3.2/9.0 beta 1

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
git push origin branch_name --force     Pushes the branch online. Use --force to force the command
git fetch origin brachName              Fetches the branch from the repository. If forked from another project, it fetches from the fork
git fetch upstream branchName           Fetches the branch from the repository. If forked from another project, it fetches from the main project
git fetch --all                         Fethes everything from the repository
git pull
git checkout -D branchName              Deletes the branchName branch locally
*/

import Foundation

class GitCommands {
    
    ///"Downloads" a commit from the host service
    /// - parameters:
    ///   - commit: The SSH ot https address of the repo to pull
    func pull(commit: String){
        print("git pull")
    }
    
    ///"Uploads" a commit from the host service
    /// - parameters:
    ///   - branch: The branch name
    func pushCommit(fromBranch branch: String){
        print("git push origin \(branch)")
    }
    
    ///Create a commit with a descriptive message
    /// - parameters:
    ///   - commitMessage: The descriptive message of the commit
    func commit(withMessage commitMessage: String){
        print("git commit -m \(commitMessage)")
    }
    
    ///Returns the current status of the Git repo
    func getStatus() -> String {
        print("git status")
        return "This function gets the status of the current Git repo"
    }
    
    ///Clones the repository locally
    /// - parameters:
    ///   - repo: The SSH ot https address of the repo to pull
    func clone(repository repo: String) {
        print("git clone \(repo)")
    }
    
    ///Adds the files to the current Git
    /// - parameters:
    ///   - all: Whether to add everything or not (* or .)
    func addFilesToGitRepo(all: Bool) {
        var addingOption: String!
        if all{
            addingOption = "*"
        } else {
            addingOption = "."
        }
        print("git add \(addingOption)")
    }
    
    ///Reverts the local project to a previous commit
    /// - parameters:
    ///   - idCommit: the commit ID
    ///   - branch: the branch of the commit
    func revert(toCommit idCommit: String, toBranch branch: String){
        if idCommit != "" {
            print("git checkout \(idCommit)")
        } else if idCommit == "" && branch != "" {
            print("git checkout -b \(branch)")
        }
    }
    
    ///Functions to configure Git on the machine
    /// - parameters:
    ///   - email: The user email
    func configGit(withUserEmail email: String){
        print("git config --global user.email \(email)")
    }
}
