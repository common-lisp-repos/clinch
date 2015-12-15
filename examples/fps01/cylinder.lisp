(make-instance
	  'clinch:entity
	  :shader shader
	  :indexes (make-instance 'clinch:buffer :qtype :unsigned-int
				  :target :element-array-buffer
				  :Stride 1
				  :data clode:cylinder-indexes)
	  
	  :vertices (make-instance 'clinch:buffer 
				   :Stride 3
				   :data (map 'list (lambda (x)
						      (coerce x 'single-float)) clode:cylinder-vertexes))
	  :normals (make-instance 'clinch:buffer 
				  :Stride 3
				  :data (map 'list (lambda (x)
						     (coerce x 'single-float)) clode:cylinder-normals))
	  :values   `((:uniform "ambientLight"   ,ambientLight)
		      (:uniform "lightIntensity" ,lightIntensity)
		      (:uniform "lightDirection" ,(lambda (&optional a b c) lightDirection))
		      (:uniform "color"  (0.0 1.0 0.0 1.0))))
