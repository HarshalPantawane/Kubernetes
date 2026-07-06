## Install Argo CD in your cluster

kubectl create namespace argocd
kubectl apply -n argocd -f https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

## verify pods
kubectl get po -n argocd

## edit service in lb or note port
kubectl edit svc argocd-server -n argocd

change into lb or NotePort

kubectl get svc -n argocd
kubectl get nodes -o wide


## Access the argo cd ui
kubectl port-forward svc/argocd-server -n argocd 8080:443

## chech on browser

## get login credentials
default username: admin

pass: kubectl get secret argocd-initial-admin-secret -n argocd -o jsonpath="{.data.password}" | base64 -d

