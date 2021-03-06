html-offline:  manpages copy-images docbook-html
	#
	#
	# Building html output for offline use.
	#
	#
	"$(a2x)" $(V) -L -f chunked -D "$(build_dir)" --xsl-file="$(build_config_dir)/chunked-offline.xsl" -r "$(build_image_dir)" -r "$(tools_css_dir)" --xsltproc-opts "--stringparam admon.graphics 1" --xsltproc-opts "--xinclude" --xsltproc-opts "--stringparam chunk.section.depth 1" --xsltproc-opts "--stringparam toc.section.depth 1" "$(docbook_file_html)"
	rm -rf "$(chunked_offline_html_dir)"
	mv "$(chunked_short_info_target)" "$(chunked_offline_html_dir)"
	cp -fr "$(build_image_dir)/"*.png "$(chunked_offline_html_dir)/images"
	if [ -d "$(build_source_dir)/css/" ]; then \
		cp -fR "$(build_source_dir)/css" "$(chunked_offline_html_dir)";\
	fi
	if [ -d "$(build_source_dir)/js/" ]; then \
		cp -fR "$(build_source_dir)/js" "$(chunked_offline_html_dir)";\
	fi

