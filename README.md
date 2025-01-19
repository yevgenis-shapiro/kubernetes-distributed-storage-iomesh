![iomesh](https://github.com/user-attachments/assets/ba34cd97-f874-46db-8ec4-b0fd99162216)


## Terraform Module - IOMesh ( Kubernetes )   | ⭐⭐⭐
IOMesh is a Kubernetes-native storage system that manages storage resources within a Kubernetes cluster, automates operations and maintenance, and provides persistent storage, data protection and migration capabilities for data applications such as MySQL, Cassandra, MongoDB and middleware running on Kubernetes.

Deployed alongside compute workloads, IOMesh reduces infrastructure space usage and simplifies operations. Its distributed architecture further eliminates traditional controller bottlenecks to fully leverage the performance of new storage media, improving system concurrency and scalability


🚀  Key Features
```
✅ Kubernetes Native : 
✅ High Performance
✅ No Kernel Dependencies
✅ Tiered Storage
✅ Data Protection & Security
✅ Fully Integrated into Kubernetes Ecosystem
```


🎯 Focus :
```
📃 Stateful Application
📃 Block Storage
📃 Chunk
📃 CSI Driver
📃 Operator
```


🧩 Config 
```
kind: StorageClass
apiVersion: storage.k8s.io/v1
metadata:
  name: iomesh-mysql-sc
provisioner: com.iomesh.csi-driver # The driver name in `iomesh.yaml`.
reclaimPolicy: Retain
allowVolumeExpansion: true
parameters:
  csi.storage.k8s.io/fstype: "ext4"
  replicaFactor: "2"
  thinProvision: "true"
```

