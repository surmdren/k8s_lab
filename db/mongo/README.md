# Create the configmap for the Mongo cluster
```
  kubectl create configmap mongo-config --from-file=./mongo-config.yaml
```

# Create the admin user in all mongo instance
```
  mongo
  use admin
  db.createUser({user: "mongo-admin", pwd: "password", roles:[{role: "root", db: "admin"}]})
  rs.initiate( {
     _id : "rs0",
     members: [
        { _id: 0, host: "10.0.0.129:27017" },
        { _id: 1, host: "10.0.1.143:27017" },
        { _id: 2, host: "10.0.2.181:27017" }
     ]
  })
```

# Test cluster setup
```
mongo -u mongo-admin -p --authenticationDatabase admin
```

