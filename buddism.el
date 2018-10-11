
(setq org-publish-project-alist
      '(
        ("blog-notes"
         :base-directory "~/notes.orig/buddism/"
         :base-extension "org"
         :publishing-directory "~/notes.orig/tengelyeah/"
         :recursive t
         :publishing-function org-html-publish-to-html
         :headline-levels 4
         :section-numbers nil
         :auto-preamble t
         :auto-sitemap t                ; Generate sitemap.org automagically...
         :sitemap-filename "sitemap.org"  ; ... call it sitemap.org (it's the default)...
         :sitemap-title "Sitemap"         ; ... with title 'Sitemap'.
         :author "刘海龙"
         :email "tengel dot liu at gmail dot com"
	 :html-head "<link rel=\"stylesheet\"
                       href=\"style.css\" type=\"text/css\"/>"
	 :html-preamble t)

        ("blog-static"
         :base-directory "~/notes.orig/buddism/"
         :base-extension "css\\|js\\|png\\|jpg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
         :publishing-directory "~/notes/tengelyeah/"
         :recursive t
         :publishing-function org-publish-attachment
         )
        ("blog" :components ("blog-notes" "blog-static"))
        ;;
        ))

(defun myweb-publish nil
  "Publish myweb."
  (interactive)
  (org-publish-all))

(myweb-publish)
