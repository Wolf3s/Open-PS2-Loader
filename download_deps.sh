#!/bin/sh

CLANG_REPO_URL="https://github.com/DoozyX/clang-format-lint-action.git"
CLANG_REPO_FOLDER="thirdparty/clang-format-lint-action"
CLANG_COMMIT="c3b2c943e924028b93a707a5b1b017976ab8d50c"

if test ! -d "$CLANG_REPO_FOLDER"; then
    git clone $CLANG_REPO_URL "$CLANG_REPO_FOLDER" || { exit 1; }
    (cd $CLANG_REPO_FOLDER && git checkout "$CLANG_COMMIT" && cd -) || { exit 1; }
else
    (cd "$CLANG_REPO_FOLDER" && git fetch origin && git checkout "$CLANG_COMMIT" && cd - )|| exit 1
fi

## Download languages
WOPL_LANG_REPO_URL="https://github.com/Wolf3s/w-Open-PS2-Loader-Lang.git"
WOPL_REPO_FOLDER="lng_src"
WOPL_BRANCH_NAME="wOPL"
if test ! -d "$WOPL_REPO_FOLDER"; then
  git clone --depth 1 -b $WOPL_BRANCH_NAME $WOPL_LANG_REPO_URL "$WOPL_REPO_FOLDER" || exit 1
else
  (cd "$WOPL_REPO_FOLDER" && git fetch origin && git reset --hard "origin/${WOPL_BRANCH_NAME}" && git checkout "$WOPL_BRANCH_NAME" && cd - )|| exit 1
fi

## Download lwNBD
LWNBD_REPO_URL="https://github.com/bignaux/lwNBD.git"
LWNBD_REPO_FOLDER="modules/network/lwNBD"
LWNBD_COMMIT="9777a10f840679ef89b1ec6a588e2d93803d7c37"
if test ! -d "$REPO_FOLDER"; then
  git clone $LWNBD_REPO_URL "$LWNBD_REPO_FOLDER" || { exit 1; }
  (cd $LWNBD_REPO_FOLDER && git checkout "$LWNBD_COMMIT" && cd -) || { exit 1; }
else
  (cd "$LWNBD_REPO_FOLDER" && git fetch origin && git checkout "$LWNBD_COMMIT" && cd - )|| exit 1
fi