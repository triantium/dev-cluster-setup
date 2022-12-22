allow_k8s_contexts('k3d-local')

k8s_yaml(kustomize('./clusters/local/namespaces'))

#load('ext://helm_resource', 'helm_resource', 'helm_repo')
#helm_repo('istio', 'https://istio-release.storage.googleapis.com/charts')
#helm_resource('istio-base', 'istio/base', namespace='istio-system',)

#k8s_yaml(kustomize('./clusters/local/tektoncd'))
k8s_yaml(kustomize('./clusters/local/flux-system'))
k8s_yaml(kustomize('./clusters/local/istio-system'))
k8s_yaml(kustomize('./clusters/local/istio-ingress'))
k8s_yaml(kustomize('./clusters/local/keda'))
k8s_yaml(kustomize('./clusters/local/kafka'))
k8s_yaml(kustomize('./clusters/local/prometheus-operator'))

k8s_resource ( objects = ['istiod'],new_name='istiod', extra_pod_selectors = [ {'app':'istiod'}]  , discovery_strategy = 'selectors-only' )
k8s_resource ( objects = ['istio-gateway'],new_name='istio-gateway', extra_pod_selectors = [ {'app':'istio-gateway'}]  , discovery_strategy = 'selectors-only' )

k8s_yaml('./clusters/local/default/echo-server.yaml')
