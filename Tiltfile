allow_k8s_contexts('k3d-local')

k8s_yaml(kustomize('./clusters/local/namespaces'))

#load('ext://helm_resource', 'helm_resource', 'helm_repo')
#helm_repo('istio', 'https://istio-release.storage.googleapis.com/charts')
#helm_resource('istio-base', 'istio/base', namespace='istio-system',)

k8s_yaml(kustomize('./clusters/local/tektoncd'))
# k8s_yaml(kustomize('./clusters/local/flux-system'))
# k8s_yaml(kustomize('./clusters/local/istio-system'))
# k8s_yaml(kustomize('./clusters/local/istio-ingress'))
k8s_yaml(kustomize('./clusters/local/keda'))
# k8s_yaml(kustomize('./clusters/local/kafka'))
# k8s_yaml(kustomize('./clusters/local/prometheus-operator'))
# k8s_yaml(kustomize('./clusters/local/monitoring'))
# k8s_yaml(kustomize('./clusters/local/monitoring/operator'))

# k8s_resource ( objects = ['istiod'],new_name='istiod', extra_pod_selectors = [ {'app':'istiod'}]  , discovery_strategy = 'selectors-only' )
# k8s_resource ( objects = ['istio-gateway'],new_name='istio-gateway', extra_pod_selectors = [ {'app':'istio-gateway'}]  , discovery_strategy = 'selectors-only' )

# k8s_resource (workload="kafka-broker",port_forwards="9092:9092")
# k8s_resource (workload="akhq",port_forwards="9999:8080")


#k8s_kind('prometheuses.monitoring.coreos.com', image_json_path='{.spec.image}', pod_readiness='wait')




#k8s_resource(
#  new_name='prometheus',
#  objects = [
#    'k8s:Prometheus',
#    'prometheus-k8s:Service',
#  ],
#  extra_pod_selectors={'prometheus': 'k8s'},
#  port_forwards=['9093:9090'])


#k8s_yaml('./clusters/local/default/echo-server.yaml')
