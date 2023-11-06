# Compcy-Lab GitLFS Service


## Git-LFS 

To use [Git Large File Storage](https://git-lfs.com/)(`git-lfs`) to save and share large data files in the lab,
you first need to configure your `git` with `git-lfs` extension following the manual at [https://git-lfs.com/](https://git-lfs.com/).

## Configure the lab Git-LFS service in your repo

To use `git-lfs` in your own repository, all you need to do is to configure the following `.lfsconfig` file in the root of your project. This will make the Git LFS client save the data to our lab server. 

```
[lfs]
  url = "http://compcy-gpu.cs.unc.edu:9999/"
```

Note: when you push data, there will be a prompt telling you to type your user name and password. To obtain it, please contact the PI.

## Administration

To add users and passwords, you can login the server with the administration account at [here](http://compcy-gpu.cs.unc.edu:9999/mgmt). The administration account and password can be found in the `lab account` document.
