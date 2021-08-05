#!/usr/bin/env bash
set -x

# GIT REPOS
start=`date +%s`
git clone https://github.com/godotengine/.github.git
git clone https://github.com/godotengine/awesome-godot.git
git clone https://github.com/godotengine/build-containers.git
git clone https://github.com/godotengine/buildroot.git
git clone https://github.com/godotengine/collada-exporter.git
git clone https://github.com/godotengine/community-map.git
git clone https://github.com/godotengine/doc-status.git
git clone https://github.com/godotengine/emacs-gdscript-mode.git
git clone https://github.com/godotengine/escoria.git
git clone https://github.com/godotengine/gdnative-demos.git
git clone https://github.com/godotengine/gdscript-tests.git
git clone https://github.com/godotengine/godot.git
git clone https://github.com/godotengine/godot-3d-dodge-the-creeps.git
git clone https://github.com/godotengine/godot-3d-platformer-demo.git
git clone https://github.com/godotengine/godot-asset-library.git
git clone https://github.com/godotengine/godot-benchmarks.git
git clone https://github.com/godotengine/godot-blender-exporter.git
git clone https://github.com/godotengine/godot-build-scripts.git
git clone https://github.com/godotengine/godot-cpp.git
git clone https://github.com/godotengine/godot-csharp-visualstudio.git
git clone https://github.com/godotengine/godot-csharp-vscode.git
git clone https://github.com/godotengine/godot-demo-projects.git
git clone https://github.com/godotengine/godot-design.git
git clone https://github.com/godotengine/godot-docs.git
git clone https://github.com/godotengine/godot-docs-l10n.git
git clone https://github.com/godotengine/godot-git-plugin.git
git clone https://github.com/godotengine/godot-google-play-billing.git
git clone https://github.com/godotengine/godot-haiku-platform.git
git clone https://github.com/godotengine/godot-headers.git
git clone https://github.com/godotengine/godot-ios-plugins.git
git clone https://github.com/godotengine/godot-mono-builds.git
git clone https://github.com/godotengine/godot-monodevelop-addin.git
git clone https://github.com/godotengine/godot-proposals.git
git clone https://github.com/godotengine/godot-roadmap.git
git clone https://github.com/godotengine/godot-syntax-themes.git
git clone https://github.com/godotengine/godot-tests.git
git clone https://github.com/godotengine/godot-vscode-plugin.git
git clone https://github.com/godotengine/godot-website.git
git clone https://github.com/godotengine/issue-bot.git
git clone https://github.com/godotengine/mousse.git
git clone https://github.com/godotengine/tps-demo.git
git clone https://github.com/godotengine/webrtc-actions.git
git clone https://github.com/godotengine/webrtc-native.git
end=`date +%s`
echo Git Cloning took $((end-start)) seconds

echo COPY EZERC INTO REPOS
start=`date +%s`
cp .ezerc.toml .github/
cp .ezerc.toml awesome-godot/
cp .ezerc.toml build-containers/
cp .ezerc.toml buildroot/
cp .ezerc.toml collada-exporter/
cp .ezerc.toml community-map/
cp .ezerc.toml doc-status/
cp .ezerc.toml emacs-gdscript-mode/
cp .ezerc.toml escoria/
cp .ezerc.toml gdnative-demos/
cp .ezerc.toml gdscript-tests/
cp .ezerc.toml godot/
cp .ezerc.toml godot-3d-dodge-the-creeps/
cp .ezerc.toml godot-3d-platformer-demo/
cp .ezerc.toml godot-asset-library/
cp .ezerc.toml godot-benchmarks/
cp .ezerc.toml godot-blender-exporter/
cp .ezerc.toml godot-build-scripts/
cp .ezerc.toml godot-cpp/
cp .ezerc.toml godot-csharp-visualstudio/
cp .ezerc.toml godot-csharp-vscode/
cp .ezerc.toml godot-demo-projects/
cp .ezerc.toml godot-design/
cp .ezerc.toml godot-docs/
cp .ezerc.toml godot-docs-l10n/
cp .ezerc.toml godot-git-plugin/
cp .ezerc.toml godot-google-play-billing/
cp .ezerc.toml godot-haiku-platform/
cp .ezerc.toml godot-headers/
cp .ezerc.toml godot-ios-plugins/
cp .ezerc.toml godot-mono-builds/
cp .ezerc.toml godot-monodevelop-addin/
cp .ezerc.toml godot-proposals/
cp .ezerc.toml godot-roadmap/
cp .ezerc.toml godot-syntax-themes/
cp .ezerc.toml godot-tests/
cp .ezerc.toml godot-vscode-plugin/
cp .ezerc.toml godot-website/
cp .ezerc.toml issue-bot/
cp .ezerc.toml mousse/
cp .ezerc.toml tps-demo/
cp .ezerc.toml webrtc-actions/
cp .ezerc.toml webrtc-native/
end=`date +%s`
echo - Copy took $((end-start)) seconds



echo RUN EZE
rm timings.txt
touch timings.txt
rm report.txt
touch report.txt
cd .github
echo running .github
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - .githubtook $((end-start)) seconds
echo .githubtook $((end-start)) seconds >> ../timings.txt
cd ..
cd awesome-godot
echo running awesome-godot
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - awesome-godottook $((end-start)) seconds
echo awesome-godottook $((end-start)) seconds >> ../timings.txt
cd ..
cd build-containers
echo running build-containers
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - build-containerstook $((end-start)) seconds
echo build-containerstook $((end-start)) seconds >> ../timings.txt
cd ..
cd buildroot
echo running buildroot
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - buildroottook $((end-start)) seconds
echo buildroottook $((end-start)) seconds >> ../timings.txt
cd ..
cd collada-exporter
echo running collada-exporter
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - collada-exportertook $((end-start)) seconds
echo collada-exportertook $((end-start)) seconds >> ../timings.txt
cd ..
cd community-map
echo running community-map
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - community-maptook $((end-start)) seconds
echo community-maptook $((end-start)) seconds >> ../timings.txt
cd ..
cd doc-status
echo running doc-status
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - doc-statustook $((end-start)) seconds
echo doc-statustook $((end-start)) seconds >> ../timings.txt
cd ..
cd emacs-gdscript-mode
echo running emacs-gdscript-mode
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - emacs-gdscript-modetook $((end-start)) seconds
echo emacs-gdscript-modetook $((end-start)) seconds >> ../timings.txt
cd ..
cd escoria
echo running escoria
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - escoriatook $((end-start)) seconds
echo escoriatook $((end-start)) seconds >> ../timings.txt
cd ..
cd gdnative-demos
echo running gdnative-demos
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - gdnative-demostook $((end-start)) seconds
echo gdnative-demostook $((end-start)) seconds >> ../timings.txt
cd ..
cd gdscript-tests
echo running gdscript-tests
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - gdscript-teststook $((end-start)) seconds
echo gdscript-teststook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot
echo running godot
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godottook $((end-start)) seconds
echo godottook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-3d-dodge-the-creeps
echo running godot-3d-dodge-the-creeps
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-3d-dodge-the-creepstook $((end-start)) seconds
echo godot-3d-dodge-the-creepstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-3d-platformer-demo
echo running godot-3d-platformer-demo
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-3d-platformer-demotook $((end-start)) seconds
echo godot-3d-platformer-demotook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-asset-library
echo running godot-asset-library
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-asset-librarytook $((end-start)) seconds
echo godot-asset-librarytook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-benchmarks
echo running godot-benchmarks
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-benchmarkstook $((end-start)) seconds
echo godot-benchmarkstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-blender-exporter
echo running godot-blender-exporter
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-blender-exportertook $((end-start)) seconds
echo godot-blender-exportertook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-build-scripts
echo running godot-build-scripts
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-build-scriptstook $((end-start)) seconds
echo godot-build-scriptstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-cpp
echo running godot-cpp
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-cpptook $((end-start)) seconds
echo godot-cpptook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-csharp-visualstudio
echo running godot-csharp-visualstudio
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-csharp-visualstudiotook $((end-start)) seconds
echo godot-csharp-visualstudiotook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-csharp-vscode
echo running godot-csharp-vscode
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-csharp-vscodetook $((end-start)) seconds
echo godot-csharp-vscodetook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-demo-projects
echo running godot-demo-projects
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-demo-projectstook $((end-start)) seconds
echo godot-demo-projectstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-design
echo running godot-design
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-designtook $((end-start)) seconds
echo godot-designtook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-docs
echo running godot-docs
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-docstook $((end-start)) seconds
echo godot-docstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-docs-l10n
echo running godot-docs-l10n
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-docs-l10ntook $((end-start)) seconds
echo godot-docs-l10ntook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-git-plugin
echo running godot-git-plugin
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-git-plugintook $((end-start)) seconds
echo godot-git-plugintook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-google-play-billing
echo running godot-google-play-billing
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-google-play-billingtook $((end-start)) seconds
echo godot-google-play-billingtook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-haiku-platform
echo running godot-haiku-platform
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-haiku-platformtook $((end-start)) seconds
echo godot-haiku-platformtook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-headers
echo running godot-headers
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-headerstook $((end-start)) seconds
echo godot-headerstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-ios-plugins
echo running godot-ios-plugins
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-ios-pluginstook $((end-start)) seconds
echo godot-ios-pluginstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-mono-builds
echo running godot-mono-builds
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-mono-buildstook $((end-start)) seconds
echo godot-mono-buildstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-monodevelop-addin
echo running godot-monodevelop-addin
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-monodevelop-addintook $((end-start)) seconds
echo godot-monodevelop-addintook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-proposals
echo running godot-proposals
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-proposalstook $((end-start)) seconds
echo godot-proposalstook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-roadmap
echo running godot-roadmap
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-roadmaptook $((end-start)) seconds
echo godot-roadmaptook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-syntax-themes
echo running godot-syntax-themes
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-syntax-themestook $((end-start)) seconds
echo godot-syntax-themestook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-tests
echo running godot-tests
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-teststook $((end-start)) seconds
echo godot-teststook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-vscode-plugin
echo running godot-vscode-plugin
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-vscode-plugintook $((end-start)) seconds
echo godot-vscode-plugintook $((end-start)) seconds >> ../timings.txt
cd ..
cd godot-website
echo running godot-website
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - godot-websitetook $((end-start)) seconds
echo godot-websitetook $((end-start)) seconds >> ../timings.txt
cd ..
cd issue-bot
echo running issue-bot
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - issue-bottook $((end-start)) seconds
echo issue-bottook $((end-start)) seconds >> ../timings.txt
cd ..
cd mousse
echo running mousse
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - moussetook $((end-start)) seconds
echo moussetook $((end-start)) seconds >> ../timings.txt
cd ..
cd tps-demo
echo running tps-demo
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - tps-demotook $((end-start)) seconds
echo tps-demotook $((end-start)) seconds >> ../timings.txt
cd ..
cd webrtc-actions
echo running webrtc-actions
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - webrtc-actionstook $((end-start)) seconds
echo webrtc-actionstook $((end-start)) seconds >> ../timings.txt
cd ..
cd webrtc-native
echo running webrtc-native
start=`date +%s`
rm -rf .git
rm -rf *.lock
rm -rf dist
rm -rf vendor
docker run --rm -v $(pwd -W):/data eze-cli test >> ../report.txt
end=`date +%s`
echo - webrtc-nativetook $((end-start)) seconds
echo webrtc-nativetook $((end-start)) seconds >> ../timings.txt
cd ..



echo CLEANUP EZE
start=`date +%s`
cd .github
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd awesome-godot
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd build-containers
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd buildroot
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd collada-exporter
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd community-map
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd doc-status
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd emacs-gdscript-mode
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd escoria
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd gdnative-demos
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd gdscript-tests
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-3d-dodge-the-creeps
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-3d-platformer-demo
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-asset-library
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-benchmarks
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-blender-exporter
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-build-scripts
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-cpp
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-csharp-visualstudio
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-csharp-vscode
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-demo-projects
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-design
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-docs
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-docs-l10n
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-git-plugin
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-google-play-billing
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-haiku-platform
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-headers
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-ios-plugins
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-mono-builds
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-monodevelop-addin
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-proposals
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-roadmap
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-syntax-themes
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-tests
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-vscode-plugin
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd godot-website
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd issue-bot
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd mousse
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd tps-demo
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd webrtc-actions
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
cd webrtc-native
rm -rf dist
rm -rf vendor
rm -rf .git
rm -rf *.lock
rm -f reports/*.json
rm -f eze_report.json
cd ..
end=`date +%s`
echo - Cleanup took $((end-start)) seconds



