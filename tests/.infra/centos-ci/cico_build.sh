#!/usr/bin/env bash
# Copyright (c) 2018 Red Hat, Inc.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
set +e


echo "========Starting nigtly test job $(date)========"



total_start_time=$(date +%s)

source tests/.infra/centos-ci/functional_tests_utils.sh
source .ci/cico_common.sh

setupEnvs
checkAllCreds
load_mvn_settings_gpg_key
installDependencies
buildAndDeployArtifacts
testImages "nightly"



#installKVM
#installAndStartMinishift
#loginToOpenshiftAndSetDevRople
#installCheCtl
#deployCheIntoCluster
#createTestUserAndObtainUserToken
#createTestWorkspaceAndRunTest
#archiveArtifacts
echo "========Starting nigtly test job $(date)========"
