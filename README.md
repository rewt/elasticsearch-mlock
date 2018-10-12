# elasticsearch-mlock
Wraps official elasticsearch image with command allowing mlock all

To run on Kubernetes, add the following to elasticsearch container definition in yaml:

        securityContext:
          capabilities:
            add:
              - IPC_LOCK
              - SYS_RESOURCE  
