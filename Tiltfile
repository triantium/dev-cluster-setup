allow_k8s_contexts('k3d-local')

k8s_yaml(kustomize('./clusters/local/namespaces'))

#load('ext://helm_resource', 'helm_resource', 'helm_repo')
#helm_repo('istio', 'https://istio-release.storage.googleapis.com/charts')
#helm_resource('istio-base', 'istio/base', namespace='istio-system',)

k8s_yaml(kustomize('./clusters/local/tektoncd'))
k8s_yaml(kustomize('./clusters/local/flux-system'))
k8s_yaml(kustomize('./clusters/local/istio-system'))
k8s_yaml(kustomize('./clusters/local/istio-ingress'))


k8s_yaml('./clusters/local/default/echo-server.yaml')
