## Usage

[Helm](https://helm.sh) must be installed to use the charts.  Please refer to
Helm's [documentation](https://helm.sh/docs) to get started.

Once Helm has been set up correctly, add the repo as follows:

  helm repo add kube-components-stack https://kube-components-stack.github.io/helm-charts

If you had already added this repo earlier, run `helm repo update` to retrieve
the latest versions of the packages.  You can then run `helm search repo
kube-components-stack` to see the charts.

To install the kube-components-stack chart:

    helm install my-kube-components-stack kube-components-stack/kube-components-stack

To uninstall the chart:

    helm delete my-kube-components-stack