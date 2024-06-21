(defn install
  [manifest &]
  # XXX: not sure if this is a good way for scripts...
  (bundle/add-file manifest "jdoc/jdoc" "../../bin/jdoc" 8r755))

