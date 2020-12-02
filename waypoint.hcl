project = "bonde"

app "docs" {
  labels = {
      "service" = "website",
      "env" = "dev"
  }

  build {
    use "pack" {}
    registry {
      use "docker" {
        image = "nossas/bonde-docs"
        tag   = "latest"
      }
    }
 }

  deploy {
    use "kubernetes" {
    probe_path = "/"
    }
  }

  release {
    use "kubernetes" {
      port = 3000
    }
  }
}