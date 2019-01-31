#!/usr/bin/env bash

declare -x PLUGIN_PATH

declare -x PLUGIN_IGNORE

declare -x PLUGIN_QUIET

declare -x PLUGIN_TEMPLATE
[[ -z "${PLUGIN_TEMPLATE}" ]] && PLUGIN_TEMPLATE="/templates/solutiondrive-config.json"

declare -x PLUGIN_BASE_WORKDIR
[[ -z "${PLUGIN_BASE_WORKDIR}" ]] && PLUGIN_BASE_WORKDIR="${DRONE_WORKSPACE}"

declare -x PLUGIN_CLI
[[ -z "${PLUGIN_CLI}" ]] && PLUGIN_CLI="--config ${PLUGIN_TEMPLATE} ${PLUGIN_PATH}"

true
