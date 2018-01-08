## Bonde Docs

# Run
```
$ hugo server
```

# Create new Pages
```
$ hugo new api-v1/donations/list_all_donations.md
```

# Build a new docker image
```
$ docker build -t nossas/bonde-docs .
```

# Run bonde-docs with docker
```
$ docker run -p 1313:1313 nossas/bonde-docs
```

