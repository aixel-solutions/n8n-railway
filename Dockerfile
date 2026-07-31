# n8n for the AIXEL Railway instance (project fortunate-achievement, service n8n).
#
# The version is pinned on purpose: this instance hosts the Eltek 8D POC,
# so it must not drift to a new minor on an unrelated redeploy.
# To upgrade, bump the tag below and let Railway rebuild.
#
# USER root is required. The Railway volume mounted at /home/node/.n8n holds
# root-owned files from earlier deployments; the stock image runs as `node`
# and would fail with EACCES on the settings file.
FROM n8nio/n8n:2.32.6

USER root
