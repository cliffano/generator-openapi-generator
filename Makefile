ci: clean stage deps test-oag-file-spec test-oag-url-spec
ci-local: clean stage deps test-oag-file-spec-local test-oag-url-spec-local

clean:
	rm -rf stage/

stage:
	mkdir -p stage/

deps:
	npm install .

clean-oag-file-spec:
	rm -rf stage/oag-file-spec/

clean-oag-url-spec:
	rm -rf stage/oag-url-spec/

generate-oag-file-spec: clean-oag-file-spec
	node_modules/.bin/plop oag-file-spec

generate-oag-url-spec: clean-oag-url-spec
	node_modules/.bin/plop oag-url-spec

test-oag-file-spec:
	node_modules/.bin/plop oag-file-spec -- \
	  --project_id "oag-file-spec" \
		--project_name "OAGFileSpec" \
		--project_desc "OAG with file specification" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot"
	cd stage/oag-file-spec/ && \
	  CUSTOM=true make init-generators-config ci

test-oag-file-spec-local:
	node_modules/.bin/plop oag-file-spec -- \
	  --project_id "oag-file-spec" \
		--project_name "OAGFileSpec" \
		--project_desc "OAG with file specification" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot"
	cd stage/oag-file-spec/ && \
	  LOCAL=true make init-generators-config ci

test-oag-url-spec:
	node_modules/.bin/plop oag-url-spec -- \
	  --project_id "oag-url-spec" \
		--project_name "OAGURLSpec" \
		--project_desc "OAG with URL specification" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot"
	cd stage/oag-url-spec/ && \
	  CUSTOM=true make init-generators-config ci

test-oag-url-spec-local:
	node_modules/.bin/plop oag-url-spec -- \
	  --project_id "oag-url-spec" \
		--project_name "OAGURLSpec" \
		--project_desc "OAG with URL specification" \
		--author_name "Pakkun" \
		--author_email "blah+pakkun@cliffano.com" \
		--author_url "https://github.com/pakkunbot" \
		--github_id "pakkunbot"
	cd stage/oag-url-spec/ && \
	  LOCAL=true make init-generators-config ci

.PHONY: ci clean clean-oag-file-spec clean-oag-url-spec stage deps generate-oag-file-spec generate-oag-url-spec test-oag-file-spec test-oag-file-spec-local test-oag-url-spec test-oag-url-spec-local
