ROOT_DIR            := $(shell pwd)
OUTPUT_DIR          := $(ROOT_DIR)/_output
BIN_DIR             := $(OUTPUT_DIR)/.bin
CLUSTER_BASE_NAME   := wiz-cluster
OBSERVABILITY_STACK := true

.PHONY: demo
demo: setup-test-cluster wiz-cluster

# Kind clusters
.PHONY: wiz-cluster
setup-test-cluster:
	BIN_DIR=$(BIN_DIR) . ./scripts/lib/kind.sh; \
	kind_create_cluster "$(CLUSTER_BASE_NAME)-1"

.PHONY: cleanup-test-cluster
cleanup-test-cluster:
	BIN_DIR=$(BIN_DIR) . ./scripts/lib/kind.sh; \
	kind_delete_cluster "$(CLUSTER_BASE_NAME)-1"
