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


🔨 Integration :
```
# MySQL
# MariaDB
# PostgresSQL
# Cassandra
# Kafka
# Mongo
# Elastic
```

🧩 Config 
```
iomesh:
    chunk:
      dataCIDR: ""
diskDeploymentMode: "hybridFlash"
platform: ""
edition: "" # If left blank, Community Edition will be installed.
iomesh:
  chunk:
    replicaCount: 3 # Enter the number of chunk pods.
iomesh:
  chunk:
    podPolicy:
      affinity:
        nodeAffinity:
          requiredDuringSchedulingIgnoredDuringExecution:
            nodeSelectorTerms:
            - matchExpressions:
              - key: kubernetes.io/hostname 
                operator: In
                values:
                - iomesh-worker-0 # Specify the values of the node label.
                - iomesh-worker-1
csi-driver:
  driver:
    controller:
      driver:
        podDeletePolicy: "no-delete-pod" # Supports "no-delete-pod", "delete-deployment-pod", "delete-statefulset-pod", or "delete-both-statefulset-and-deployment-pod"
```

