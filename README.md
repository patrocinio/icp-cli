# icp-cli

This project provides a Docker images, containing all the CLIs used to access an IBM Cloud Private environment

# How to run it

- Clone this repository:

```
git clone https://github.com/patrocinio/icp-cli.git
```

- Go to the `scripts` directory

```
cd icp-cli/scripts
```

- Run the script:

```
./runICPCli.sh
```

You will see a prompt like this:

```
patro:scripts edu$ ./runICPCli.sh
root@540ef9dfab02:/#
```

# What can you do inside the Docker container?

The Docker container contains kubectl, the ICP cli (bx pr) and helm.

It also provides a script called `configureHelmCLI.sh` that simplifies the login process. Run the following command to configure your connection:

```
./configureHelmCLI.sh <master-node-IP> 
```
or

```
./configureHelmCLI.sh <cluster-vip>
```

then you will enter the user, password and account:

```
root@540ef9dfab02:/# ./configureHelmCLI.sh X.X.X.X
Configuring Helm CLI for ICP on X.X.X.X
API endpoint: https://X.X.X.X:8443

Username> admin

Password>
Authenticating...
OK

Select an account:
1. mycluster Account (id-mycluster-account)
Enter a number> 1
Targeted account mycluster Account (id-mycluster-account)

Configuring helm and kubectl...
Configuring kubectl: /root/.bluemix/plugins/icp/clusters/mycluster/kube-config
Property "clusters.mycluster" unset.
Property "users.mycluster-user" unset.
Property "contexts.mycluster-context" unset.
Cluster "mycluster" set.
User "mycluster-user" set.
Context "mycluster-context" created.
Switched to context "mycluster-context".

Cluster mycluster configured successfully.

Configuring helm: /root/.helm
Helm configured successfully

OK
```

then you can use kubectl and helm to access the environemnt:

```
kubectl get po --all-namespaces
```

and

```
export HELM_HOME=~/.helm
helm ls --tls
```

