library(gert)

# 1a. Create a branch for the results on the remote repository (which will be Nomogram_Website)
git_branch_list(repo = "C:\\Users\\vertosie\\Documents\\GitHub\\results1")
git_branch_create(branch = "results", repo = "C:\\Users\\vertosie\\Documents\\GitHub\\results1", checkout = TRUE)
# TODO: not sure whether TRUE or FALSE for checkout here...

# 1b. Confirm branch exists on that other repo
git_branch_list(repo = "C:\\Users\\vertosie\\Documents\\GitHub\\results1")

# 1c. Push branch to that repo
git_push(repo = "C:\\Users\\vertosie\\Documents\\GitHub\\results1")

# 2. Add remote for this repository
git_remote_remove("results")
git_remote_list()
git_remote_add(url = "https://github.com/emilyvertosick/results1.git", name = "results")
git_remote_list()

# 3. Stage files to be committed
git_status()
git_add(files = c("testfile3.R"))

# 3. Commit files - git_commit will only commit staged files so only stage necessary files above
# Commit goes to the current repo (otherwise you get an error)
git_commit(message = "firsttest", repo = ".")

# 4. Push files to remote
git_fetch(remote = "results")
git_push(remote = "results")

# 5. Pull down repository changes for other repo
git_fetch(repo = "C:\\Users\\vertosie\\Documents\\GitHub\\results1")

# 6. Merge remote/results branch back into master
git_merge(ref = "origin/remote/results", repo = "C:\\Users\\vertosie\\Documents\\GitHub\\unique")
