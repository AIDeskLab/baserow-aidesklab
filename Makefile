# AIDeskLab mechanical gates — verification targets.
#   make verify-fast : fast Task-level gate (lint backend+frontend, frontend unit tests).
#   make verify      : full Outcome-level gate (backend + frontend test suites; needs dev env).
#
# Baserow's canonical task runner is `just`; these targets delegate to it.
# `just` and the project dependencies (uv/Python 3.14 for backend, yarn for frontend)
# must be available. Backend pytest requires PostgreSQL + Redis (dev env / Docker).

.PHONY: verify-fast verify

verify-fast:
	just lint && just f test

verify:
	just test
