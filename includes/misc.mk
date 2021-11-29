## 👉 Pull down changes for all repositories.
update: guard-BRANCH

	@echo "👉 Pulling down changes for $(GREEN)monorepo $(RESET)on branch $(YELLOW)`git rev-parse --symbolic-full-name --abbrev-ref HEAD`$(RESET) 📥"
	@cd .make && git checkout main; git pull
	@git pull --no-rebase origin `git rev-parse --symbolic-full-name --abbrev-ref HEAD`
	@git submodule update --init --recursive

	@for MODULE in $(MODULES); do \
		cd "$(PWD)/$(MODULES_DIR)/$(MODULE)" && echo "👉 Pulling down changes for $(GREEN)$(MODULE) $(RESET)on branch $(YELLOW)`git rev-parse --symbolic-full-name --abbrev-ref HEAD`$(RESET) 📥"; \
		cd "$(PWD)/$(MODULES_DIR)/$(MODULE)" && git checkout $(BRANCH); \
		cd "$(PWD)/$(MODULES_DIR)/$(MODULE)" && git pull --no-rebase origin $(BRANCH); \
	done;
