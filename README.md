# Naive Algorithms for Improving Image Pairing in OpenSfM Using Cones, Boxes, and DEMs in Aerial Surveys

Each camera has a field of view (FOV) that can be approximated as a cone.

In aerial imaging, we capture the land surface from above. The intersection of the FOV cone with the terrain represents the region where image matches should be searched.

There are several global Digital Elevation Models (DEMs) available, such as SRTM and Copernicus. However, to enhance image pairing accuracy, our imagery must include global camera pose metadata.

#### Strategy:
- Generate field-of-view (FOV) cones for each camera.
![Cones](docs/raw_cones.png)
- Clip the cones using the land surface (DEM) or a bounding box approximation.
![Clipped cones](docs/clipped_cones.png)
- Identify overlapping FOV regions to determine potential image matches.
![Matched cones](docs/matched_cones.png)

#### Code: 'cone_matcher.ipynb', test data: './data'.
If you run the code locally, you'll see many 3D visualizations in Jupyter, and temporary models can be viewed in MeshLab.
