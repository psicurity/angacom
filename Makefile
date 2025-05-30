CURRENT_DIR := $(shell pwd)

.PHONY: help
help: ## Display help message
	@grep -E '^[0-9a-zA-Z_-]+\.*[0-9a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: start
start: ## Deploy ceos lab
	sudo containerlab deploy --debug --topo $(CURRENT_DIR)/clab/topology.clab.yml --max-workers 10 --timeout 5m --reconfigure

.PHONY: stop
stop: ## Destroy ceos lab and delete structured config
	sudo containerlab destroy --debug --topo $(CURRENT_DIR)/clab/topology.clab.yml --cleanup
	rm $(CURRENT_DIR)/avd/intended/configs/*.cfg
	rm $(CURRENT_DIR)/avd/intended/structured_configs/*.yml

.PHONY: build
build: ## Generate AVD configs
	cd $(CURRENT_DIR)/avd; ansible-playbook playbooks/avd_build.yml

.PHONY: deploy_cvp
deploy_cvp: ## Deploy AVD configs using eAPI
	cd $(CURRENT_DIR)/avd; ansible-playbook playbooks/avd_deploy_cvp.yml

.PHONY: diff
diff: ## Show the diff between running config and designed config
	cd $(CURRENT_DIR)/avd; ansible-playbook --diff --check playbooks/avd_deploy.yml

.PHONY: test
test: ## validate the network state
	cd $(CURRENT_DIR)/avd; ansible-playbook playbooks/avd_validate.yml

.PHONY: client1-test
client1-test:
	ssh clab-srmpls-client1 test

.PHONY: client2-test
client2-test:
	ssh clab-srmpls-client2 test

.PHONY: client3-test
client3-test:
	ssh clab-srmpls-client3 test

.PHONY: client4-test
client4-test:
	ssh clab-srmpls-client4 test

.PHONY: customer3-test
customer3-test:
	ssh clab-srmpls-client4 test
	ssh clab-srmpls-ag test

.PHONY: tags
tags: ## add tags for topology view
	cd $(CURRENT_DIR)/avd; ansible-playbook playbooks/avd_create_tags.yml
