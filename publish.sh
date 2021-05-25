#!/usr/bin/env bash
#shellcheck disable=SC2154

# bundle
tar -C public -cvz . >site.tar.gz
# publish
curl --oauth2-bearer "${token}" \
  -Fcontent=@site.tar.gz \
  -Fprotocol=GEMINI \
  https://pages.sr.ht/publish/gemini.redpeacock78.ml
