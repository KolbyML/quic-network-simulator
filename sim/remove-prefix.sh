find out -type f -name "ns$NS_VERS-*" -exec sh -c '
  for f; do
    fname=${f##*/}
    mv -i -- "$f" "${f%/*}/${fname#ns$NS_VERS-*}"
  done
' sh {} +
