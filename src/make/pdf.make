pdf: docbook copy-images
	#
	#
	# Building PDF.
	#
	#
	mkdir -p "$(fop_dir)"
	cd "$(fop_dir)"
	xsltproc --xinclude --output "$(fop_file)" "$(build_config_dir)/fo.xsl" "$(docbook_file)"
	rm -f "$(fop_dir)/images"
	ln -s "$(build_image_dir)" "$(fop_dir)/images"
	# For fop 1.0, timezone has to be a non-negative one.
	MAVEN_OPTS="-Xmx2048m -Duser.timezone=GMT" mvn -f="$(fop_pom)" -e exec:java -Dexec.mainClass="org.apache.fop.cli.Main" -Djava.awt.headless=true -Dexec.args="-fo '$(fop_file)' -pdf '$(fop_pdf)' -c '$(build_config_dir)/fop.xml'" 2>&1 | "$(script_dir)/outputcheck-images-fop.sh"

