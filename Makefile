# Make defaults
.DEFAULT_GOAL := help
.SILENT: update-charts
SHELL := bash
ROOT_DIR:=$(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
.ONESHELL:
MAKEFLAGS += --no-print-directory

# Make variables
SHELL := /bin/bash
ENVFILE := .env

help:
	@grep -E '(^[a-zA-Z_-]+:.*?##.*$$)' Makefile | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[32m%-30s\033[0m %s\n", $$1, $$2}'

update-charts: ## update-charts
update-charts:
	set -e
	cd $(ROOT_DIR)
	source scripts/tools

	cd charts/cert-manager-and-cluster-issuer
	update_charts
	cd $(ROOT_DIR)
	
	cd charts/kubemod-with-modrules
	update_charts
	cd $(ROOT_DIR)
	
	cd charts/kube-prometheus-stack-with-grafana-dashboards
	update_charts
	cd $(ROOT_DIR)