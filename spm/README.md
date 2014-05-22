### freshSPM: Reslicing for display
---  

If you warped your images to a template provided with spm (whether you used Ancient Normalize, Segment, DARTEL, etc.), then the images should be roughly in register with the MNI_152_T1 templates (provided with FSL, and my favorite template on which to show blobs).  

This means that you can use SPM's Coregister --> Reslice operation (without first having to Estimate) to put any image (or images) into the same space as a different image, allowing you to display results on a template in fslView.app, or whatever other display utility you like.  

SPM calls the image that defines the space you want to reslice to the "Image Defining Space," and the image(s) that you want to reslice the "Images to Reslice."  

You can make a 3mm MNI_152_T1 template (or any other template) that is sliced precisely to your functional results, but it looks kind of ugly. What I prefer to do instead is to reslice my results to a higher resolution image (like the MNI_152_T1_1mm_brain.nii or, if you used a fancy normalization like DARTEL or Segment in spm12b, a really gorgeous average of my subjects' normalized mprage images).  

As long as you choose 'Nearest Neighbor' for the interpolation option, then you won't be presenting the functional results in any higher resolution than they actually are in (you essentially just turn 1 3mm voxel into 9 contiguous 1mm voxels with identical values).  

If you choose a higher order interpolation, you'll get some weird looking (and completely innacurate) results.