guard-%:
	@ if [ "${${*}}" = "" ]; then \
		echo "\nš ${YELLOW}Environment variable ${GREEN}$*${YELLOW} not set (make $*=.. target or export $*=..${RESET}"; \
		echo "\nš Run ${GREEN}make help${RESET} for options..\n"; \
		exit 1; \
	fi
