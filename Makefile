release:
	tar czf /tmp/sensu-matrix-handler_${VERSION}_linux_amd64.tar.gz bin/ etc/ 
	sum=$$(sha512sum /tmp/sensu-matrix-handler_${VERSION}_linux_amd64.tar.gz | cut -d ' ' -f 1); \
	f=$$(basename sensu-matrix-handler_${VERSION}_linux_amd64.tar.gz); \
	echo $$sum $${f} > /tmp/sensu-matrix-handler_${VERSION}_sha512-checksums.txt; \
	echo $$sum;
