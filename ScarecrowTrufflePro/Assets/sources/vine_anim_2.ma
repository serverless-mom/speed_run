//Maya ASCII 2014 scene
//Name: vine_anim_2.ma
//Last modified: Sat, Sep 28, 2013 07:16:39 PM
//Codeset: 1252
requires maya "2014";
requires -nodeType "mentalrayFramebuffer" -nodeType "mentalrayOutputPass" -nodeType "mentalrayRenderPass"
		 -nodeType "mentalrayUserBuffer" -nodeType "mentalraySubdivApprox" -nodeType "mentalrayCurveApprox"
		 -nodeType "mentalraySurfaceApprox" -nodeType "mentalrayDisplaceApprox" -nodeType "mentalrayOptions"
		 -nodeType "mentalrayGlobals" -nodeType "mentalrayItemsList" -nodeType "mentalrayShader"
		 -nodeType "mentalrayUserData" -nodeType "mentalrayText" -nodeType "mentalrayTessellation"
		 -nodeType "mentalrayPhenomenon" -nodeType "mentalrayLightProfile" -nodeType "mentalrayVertexColors"
		 -nodeType "mentalrayIblShape" -nodeType "mapVizShape" -nodeType "mentalrayCCMeshProxy"
		 -nodeType "cylindricalLightLocator" -nodeType "discLightLocator" -nodeType "rectangularLightLocator"
		 -nodeType "sphericalLightLocator" -nodeType "abcimport" -nodeType "mia_physicalsun"
		 -nodeType "mia_physicalsky" -nodeType "mia_material" -nodeType "mia_material_x" -nodeType "mia_roundcorners"
		 -nodeType "mia_exposure_simple" -nodeType "mia_portal_light" -nodeType "mia_light_surface"
		 -nodeType "mia_exposure_photographic" -nodeType "mia_exposure_photographic_rev" -nodeType "mia_lens_bokeh"
		 -nodeType "mia_envblur" -nodeType "mia_ciesky" -nodeType "mia_photometric_light"
		 -nodeType "mib_texture_vector" -nodeType "mib_texture_remap" -nodeType "mib_texture_rotate"
		 -nodeType "mib_bump_basis" -nodeType "mib_bump_map" -nodeType "mib_passthrough_bump_map"
		 -nodeType "mib_bump_map2" -nodeType "mib_lookup_spherical" -nodeType "mib_lookup_cube1"
		 -nodeType "mib_lookup_cube6" -nodeType "mib_lookup_background" -nodeType "mib_lookup_cylindrical"
		 -nodeType "mib_texture_lookup" -nodeType "mib_texture_lookup2" -nodeType "mib_texture_filter_lookup"
		 -nodeType "mib_texture_checkerboard" -nodeType "mib_texture_polkadot" -nodeType "mib_texture_polkasphere"
		 -nodeType "mib_texture_turbulence" -nodeType "mib_texture_wave" -nodeType "mib_reflect"
		 -nodeType "mib_refract" -nodeType "mib_transparency" -nodeType "mib_continue" -nodeType "mib_opacity"
		 -nodeType "mib_twosided" -nodeType "mib_refraction_index" -nodeType "mib_dielectric"
		 -nodeType "mib_ray_marcher" -nodeType "mib_illum_lambert" -nodeType "mib_illum_phong"
		 -nodeType "mib_illum_ward" -nodeType "mib_illum_ward_deriv" -nodeType "mib_illum_blinn"
		 -nodeType "mib_illum_cooktorr" -nodeType "mib_illum_hair" -nodeType "mib_volume"
		 -nodeType "mib_color_alpha" -nodeType "mib_color_average" -nodeType "mib_color_intensity"
		 -nodeType "mib_color_interpolate" -nodeType "mib_color_mix" -nodeType "mib_color_spread"
		 -nodeType "mib_geo_cube" -nodeType "mib_geo_torus" -nodeType "mib_geo_sphere" -nodeType "mib_geo_cone"
		 -nodeType "mib_geo_cylinder" -nodeType "mib_geo_square" -nodeType "mib_geo_instance"
		 -nodeType "mib_geo_instance_mlist" -nodeType "mib_geo_add_uv_texsurf" -nodeType "mib_photon_basic"
		 -nodeType "mib_light_infinite" -nodeType "mib_light_point" -nodeType "mib_light_spot"
		 -nodeType "mib_light_photometric" -nodeType "mib_cie_d" -nodeType "mib_blackbody"
		 -nodeType "mib_shadow_transparency" -nodeType "mib_lens_stencil" -nodeType "mib_lens_clamp"
		 -nodeType "mib_lightmap_write" -nodeType "mib_lightmap_sample" -nodeType "mib_amb_occlusion"
		 -nodeType "mib_fast_occlusion" -nodeType "mib_map_get_scalar" -nodeType "mib_map_get_integer"
		 -nodeType "mib_map_get_vector" -nodeType "mib_map_get_color" -nodeType "mib_map_get_transform"
		 -nodeType "mib_map_get_scalar_array" -nodeType "mib_map_get_integer_array" -nodeType "mib_fg_occlusion"
		 -nodeType "mib_bent_normal_env" -nodeType "mib_glossy_reflection" -nodeType "mib_glossy_refraction"
		 -nodeType "builtin_bsdf_architectural" -nodeType "builtin_bsdf_architectural_comp"
		 -nodeType "builtin_bsdf_carpaint" -nodeType "builtin_bsdf_ashikhmin" -nodeType "builtin_bsdf_lambert"
		 -nodeType "builtin_bsdf_mirror" -nodeType "builtin_bsdf_phong" -nodeType "contour_store_function"
		 -nodeType "contour_store_function_simple" -nodeType "contour_contrast_function_levels"
		 -nodeType "contour_contrast_function_simple" -nodeType "contour_shader_simple" -nodeType "contour_shader_silhouette"
		 -nodeType "contour_shader_maxcolor" -nodeType "contour_shader_curvature" -nodeType "contour_shader_factorcolor"
		 -nodeType "contour_shader_depthfade" -nodeType "contour_shader_framefade" -nodeType "contour_shader_layerthinner"
		 -nodeType "contour_shader_widthfromcolor" -nodeType "contour_shader_widthfromlightdir"
		 -nodeType "contour_shader_widthfromlight" -nodeType "contour_shader_combi" -nodeType "contour_only"
		 -nodeType "contour_composite" -nodeType "contour_ps" -nodeType "mi_metallic_paint"
		 -nodeType "mi_metallic_paint_x" -nodeType "mi_bump_flakes" -nodeType "mi_car_paint_phen"
		 -nodeType "mi_metallic_paint_output_mixer" -nodeType "mi_car_paint_phen_x" -nodeType "physical_lens_dof"
		 -nodeType "physical_light" -nodeType "dgs_material" -nodeType "dgs_material_photon"
		 -nodeType "dielectric_material" -nodeType "dielectric_material_photon" -nodeType "oversampling_lens"
		 -nodeType "path_material" -nodeType "parti_volume" -nodeType "parti_volume_photon"
		 -nodeType "transmat" -nodeType "transmat_photon" -nodeType "mip_rayswitch" -nodeType "mip_rayswitch_advanced"
		 -nodeType "mip_rayswitch_environment" -nodeType "mip_card_opacity" -nodeType "mip_motionblur"
		 -nodeType "mip_motion_vector" -nodeType "mip_matteshadow" -nodeType "mip_cameramap"
		 -nodeType "mip_mirrorball" -nodeType "mip_grayball" -nodeType "mip_gamma_gain" -nodeType "mip_render_subset"
		 -nodeType "mip_matteshadow_mtl" -nodeType "mip_binaryproxy" -nodeType "mip_rayswitch_stage"
		 -nodeType "mip_fgshooter" -nodeType "mib_ptex_lookup" -nodeType "misss_physical"
		 -nodeType "misss_physical_phen" -nodeType "misss_fast_shader" -nodeType "misss_fast_shader_x"
		 -nodeType "misss_fast_shader2" -nodeType "misss_fast_shader2_x" -nodeType "misss_skin_specular"
		 -nodeType "misss_lightmap_write" -nodeType "misss_lambert_gamma" -nodeType "misss_call_shader"
		 -nodeType "misss_set_normal" -nodeType "misss_fast_lmap_maya" -nodeType "misss_fast_simple_maya"
		 -nodeType "misss_fast_skin_maya" -nodeType "misss_fast_skin_phen" -nodeType "misss_fast_skin_phen_d"
		 -nodeType "misss_mia_skin2_phen" -nodeType "misss_mia_skin2_phen_d" -nodeType "misss_lightmap_phen"
		 -nodeType "misss_mia_skin2_surface_phen" -nodeType "surfaceSampler" -nodeType "mib_data_bool"
		 -nodeType "mib_data_int" -nodeType "mib_data_scalar" -nodeType "mib_data_vector"
		 -nodeType "mib_data_color" -nodeType "mib_data_string" -nodeType "mib_data_texture"
		 -nodeType "mib_data_shader" -nodeType "mib_data_bool_array" -nodeType "mib_data_int_array"
		 -nodeType "mib_data_scalar_array" -nodeType "mib_data_vector_array" -nodeType "mib_data_color_array"
		 -nodeType "mib_data_string_array" -nodeType "mib_data_texture_array" -nodeType "mib_data_shader_array"
		 -nodeType "mib_data_get_bool" -nodeType "mib_data_get_int" -nodeType "mib_data_get_scalar"
		 -nodeType "mib_data_get_vector" -nodeType "mib_data_get_color" -nodeType "mib_data_get_string"
		 -nodeType "mib_data_get_texture" -nodeType "mib_data_get_shader" -nodeType "mib_data_get_shader_bool"
		 -nodeType "mib_data_get_shader_int" -nodeType "mib_data_get_shader_scalar" -nodeType "mib_data_get_shader_vector"
		 -nodeType "mib_data_get_shader_color" -nodeType "user_ibl_env" -nodeType "user_ibl_rect"
		 -nodeType "mia_material_x_passes" -nodeType "mi_metallic_paint_x_passes" -nodeType "mi_car_paint_phen_x_passes"
		 -nodeType "misss_fast_shader_x_passes" -dataType "byteArray" "Mayatomr" "2014.0 - 3.11.1.4 ";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014 x64";
fileInfo "cutIdentifier" "201303010241-864206";
fileInfo "osv" "Microsoft Windows 8 Business Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 9.5042369632926231 19.168902124094721 -14.761518842652146 ;
	setAttr ".r" -type "double3" -32.13835272952106 137.39999999993427 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 23.252746870725026;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.18161014210810356 6.8690534398070824 1.1718134556013025 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -5.9424790710234969 100.1 1.3677134369816004 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 15.186335403726714;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.20488701793186692 7.0173803641664492 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 40.874960077407493;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.1 2.9531765458577306 -0.66662978925250083 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 13.691030836557424;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "vine";
createNode transform -n "pSphere11" -p "vine";
	setAttr ".rp" -type "double3" -12.785464219414623 6.5157586384245585 1.0125621882763083 ;
	setAttr ".sp" -type "double3" -12.785464219414623 6.5157586384245585 1.0125621882763083 ;
createNode mesh -n "pSphereShape11" -p "pSphere11";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -13.082725 6.6525764 1.8105072 
		-12.282239 6.6397576 1.7660891 -11.900777 6.7264814 1.0862346 -12.319801 6.8260241 
		0.45079792 -13.120287 6.8388429 0.49521601 -13.501748 6.7521191 1.1750706 -12.937648 
		6.2779937 1.7740709 -12.331644 6.2682891 1.7404444 -12.04286 6.3339429 1.2257637 
		-12.360081 6.4093008 0.74470925 -12.966084 6.4190054 0.77833557 -13.254869 6.3533516 
		1.2930166 -12.74302 6.010673 1.5970038 -12.461378 6.0061626 1.5813757 -12.327166 
		6.0366755 1.3421768 -12.474595 6.0716982 1.118606 -12.756236 6.0762086 1.1342338 
		-12.890449 6.0456958 1.3734328 -12.583153 5.8474674 1.4208367;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere10" -p "vine";
	setAttr ".rp" -type "double3" -10.734957827527175 6.5847072573178815 0.61919158489155679 ;
	setAttr ".sp" -type "double3" -10.734957827527175 6.5847072573178815 0.61919158489155679 ;
createNode mesh -n "pSphereShape10" -p "pSphere10";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -11.236398 6.9863319 1.2748585 
		-10.413239 7.0280237 1.2384174 -10.008402 6.9663944 0.52439535 -10.426724 6.8630743 
		-0.15318573 -11.249884 6.8213825 -0.11674452 -11.654719 6.8830113 0.59727764 -11.208399 
		6.6226602 0.98802352 -10.58523 6.654223 0.96043611 -10.278749 6.6075668 0.41988909 
		-10.595439 6.5293489 -0.093070507 -11.218608 6.497786 -0.065482974 -11.525087 6.5444422 
		0.47506416 -11.098142 6.331121 0.6120373 -10.808523 6.3457899 0.59921587 -10.666086 
		6.3241062 0.34799564 -10.813268 6.2877541 0.10959673 -11.102886 6.2730856 0.12241817 
		-11.245323 6.2947688 0.37363851 -10.990153 6.1387091 0.3053143;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere9" -p "vine";
	setAttr ".rp" -type "double3" -9.3247121239547024 7.3576151605620455 2.1120659857759714 ;
	setAttr ".sp" -type "double3" -9.3247121239547024 7.3576151605620455 2.1120659857759714 ;
createNode mesh -n "pSphereShape9" -p "pSphere9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -9.6940393 7.7263794 2.9050841 
		-8.8684492 7.7252197 2.857511 -8.4965096 7.7407513 2.1195457 -8.9501619 7.7574434 
		1.4291534 -9.775753 7.7586036 1.4767265 -10.147691 7.7430716 2.2146921 -9.5956764 
		7.4247999 2.7483382 -8.9706669 7.4239216 2.7123234 -8.6890926 7.4356804 2.1536503 
		-9.0325279 7.4483166 1.6309919 -9.6575375 7.4491949 1.667007 -9.9391117 7.4374366 
		2.2256804 -9.4388494 7.1976624 2.4665451 -9.1483746 7.1972542 2.4498072 -9.0175123 
		7.2027192 2.1901627 -9.177125 7.2085924 1.9472564 -9.4675989 7.2090006 1.9639944 
		-9.5984612 7.2035351 2.223639 -9.3040705 7.0536213 2.2179399;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere8" -p "vine";
	setAttr ".rp" -type "double3" -6.2935281522106976 6.1281109189591039 -0.65812951658401775 ;
	setAttr ".sp" -type "double3" -6.2935281522106976 6.1281109189591039 -0.65812951658401775 ;
createNode mesh -n "pSphereShape8" -p "pSphere8";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -6.8026133 5.726078 -0.021651715 
		-6.1071711 5.7472115 -0.22344884 -5.5844665 5.7707567 -0.86300862 -5.7572041 5.7731686 
		-1.3007715 -6.4526463 5.7520347 -1.0989743 -6.9753504 5.7284894 -0.45941454 -6.651844 
		4.9436893 -0.20027912 -6.1253629 4.9596882 -0.35304862 -5.7296515 4.9775133 -0.83722442 
		-5.8604221 4.9793391 -1.1686308 -6.3869033 4.9633398 -1.0158612 -6.7826142 4.9455147 
		-0.53168535 -6.4218645 4.35075 -0.47720194 -6.1771812 4.3581858 -0.54820186 -5.9932742 
		4.3664699 -0.77322346 -6.0540495 4.3673182 -0.9272452 -6.2987328 4.3598828 -0.85624528 
		-6.4826403 4.3515987 -0.63122368 -6.226316 3.9731636 -0.71360385;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere7" -p "vine";
	setAttr ".rp" -type "double3" -7.4534528464256775 6.2144307894681257 0.090985720867382991 ;
	setAttr ".sp" -type "double3" -7.4534528464256775 6.2144307894681257 0.090985720867382991 ;
createNode mesh -n "pSphereShape7" -p "pSphere7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -8.2024002 6.2378531 0.42055982 
		-7.488811 6.4255314 0.48623145 -7.0047159 6.5263896 -0.17695487 -7.2342091 6.439569 
		-0.90581304 -7.9477973 6.2518907 -0.97148466 -8.4318924 6.1510329 -0.30829823 -8.2566271 
		5.8452663 0.090339661 -7.7164087 5.9873476 0.14005637 -7.349926 6.0637016 -0.36200583 
		-7.523663 5.9979744 -0.91378444 -8.0638819 5.8558936 -0.96350104 -8.4303646 5.7795396 
		-0.46143878 -8.1918335 5.5672846 -0.30765545 -7.9407668 5.633317 -0.28454971 -7.7704434 
		5.6688027 -0.51788402 -7.8511877 5.6382561 -0.7743243 -8.1022558 5.5722237 -0.79742998 
		-8.2725782 5.5367379 -0.5640955 -8.1056471 5.3985562 -0.6237818;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere6" -p "vine";
	setAttr ".rp" -type "double3" -3.8385544535219758 6.4785927004933876 2.2102117174527862 ;
	setAttr ".sp" -type "double3" -3.8385544535219758 6.4785927004933876 2.2102117174527862 ;
createNode mesh -n "pSphereShape6" -p "pSphere6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -4.4861779 6.4615765 3.1628451 
		-3.6675897 6.5929656 3.333374 -3.2942295 6.8550448 2.7296808 -3.7394583 6.9857349 
		1.9554589 -4.5580468 6.8543458 1.7849302 -4.9314065 6.5922666 2.3886237 -4.6665659 
		6.0692959 3.215261 -4.0468578 6.1687632 3.3443594 -3.7642069 6.3671694 2.8873363 
		-4.101265 6.4661074 2.3012149 -4.720974 6.3666401 2.1721172 -5.0036249 6.1682343 
		2.6291404 -4.7225223 5.8269329 3.1228347 -4.4345117 5.8731604 3.1828327 -4.3031492 
		5.9653702 2.9704304 -4.4597979 6.0113521 2.6980295 -4.747808 5.9651241 2.6380315 
		-4.8791699 5.8729143 2.8504333 -4.7238932 5.6959 3.0079079;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere5" -p "vine";
	setAttr ".rp" -type "double3" -4.9925817148879652 6.0745664944570308 0.35749960116924662 ;
	setAttr ".sp" -type "double3" -4.9925817148879652 6.0745664944570308 0.35749960116924662 ;
createNode mesh -n "pSphereShape5" -p "pSphere5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -5.2819805 6.5034289 1.1909931 
		-4.3959656 6.5128946 1.0486655 -4.0764651 6.5260377 0.21035564 -4.6429791 6.5297155 
		-0.48562688 -5.5289941 6.5202498 -0.34329933 -5.8484945 6.5071068 0.49501061 -5.2079992 
		6.3239346 1.0043403 -4.5372458 6.3311005 0.89659214 -4.2953696 6.3410501 0.26195347 
		-4.7242465 6.3438344 -0.26493692 -5.395 6.3366685 -0.15718865 -5.6368766 6.3267188 
		0.47745013 -5.0813203 6.1896024 0.67766106 -4.7695866 6.1929326 0.62758482 -4.6571741 
		6.197557 0.33263552 -4.8564959 6.1988506 0.087761998 -5.1682291 6.1955204 0.13783836 
		-5.2806416 6.190896 0.43278801 -4.9706917 6.1047797 0.39104414;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere4" -p "vine";
	setAttr ".rp" -type "double3" -1.9100254399793035 6.8789061717841724 2.4703025272855372 ;
	setAttr ".sp" -type "double3" -1.9100254399793035 6.8789061717841724 2.4703025272855372 ;
createNode mesh -n "pSphereShape4" -p "pSphere4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -1.9639949 6.3051004 3.4118586 
		-1.1618395 6.5672841 3.6388555 -1.0609616 6.7853465 3.2693632 -1.7622387 6.7412252 
		2.6728742 -2.564394 6.4790411 2.4458773 -2.6652715 6.2609787 2.8153696 -1.9261444 
		5.5133123 3.6821609 -1.3188763 5.7117977 3.8540077 -1.2425072 5.8768806 3.5742855 
		-1.7734057 5.8434787 3.1227162 -2.3806739 5.6449938 2.9508691 -2.4570429 5.4799104 
		3.2305913 -1.8750689 4.9558802 3.8077016 -1.5928402 5.0481267 3.887568 -1.5573473 
		5.1248493 3.757566 -1.8040836 5.1093254 3.547699 -2.0863123 5.0170794 3.4678326 -2.1218047 
		4.9403567 3.5978336 -1.8330436 4.6189919 3.8539972;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere3" -p "vine";
	setAttr ".rp" -type "double3" -3.2420577040605352 6.7458336587508585 2.3980572739954464 ;
	setAttr ".sp" -type "double3" -3.2420577040605352 6.7458336587508585 2.3980572739954464 ;
createNode mesh -n "pSphereShape3" -p "pSphere3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -3.2852144 7.103281 2.5580106 
		-2.6763413 6.8492651 2.4356723 -2.6159067 6.7657251 1.814106 -3.1643453 6.936202 
		1.3148782 -3.7732186 7.1902184 1.4372168 -3.833653 7.2737579 2.0587831 -3.2571714 
		6.7144728 2.0749645 -2.7962265 6.5221705 1.9823489 -2.7504747 6.4589272 1.5117952 
		-3.1656675 6.5879855 1.1338573 -3.6266127 6.7802877 1.2264729 -3.6723642 6.8435311 
		1.6970266 -3.2224696 6.3989077 1.5692745 -3.0082448 6.309535 1.5262312 -2.9869816 
		6.2801428 1.3075405 -3.1799433 6.3401227 1.131893 -3.3941679 6.4294953 1.1749364 
		-3.415431 6.4588881 1.393627 -3.194665 6.1890855 1.188015;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pSphere2" -p "vine";
	setAttr ".rp" -type "double3" -0.47923680687647052 5.9209458201394201 1.0935955170388789 ;
	setAttr ".sp" -type "double3" -0.47923680687647052 5.9209458201394201 1.0935955170388789 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  -0.022308648 6.4072108 1.6819662 
		0.50285292 6.6177058 1.4022348 0.50410408 6.794198 0.87033927 -0.019806385 6.7601957 
		0.61817479 -0.54496801 6.5497003 0.8979063 -0.54621899 6.373208 1.4298018 0.20577274 
		6.3083477 1.7323011 0.60334408 6.4677019 1.5205317 0.6042912 6.6013145 1.1178626 
		0.20766729 6.5755725 0.92696261 -0.18990412 6.4162183 1.1387322 -0.19085121 6.2826056 
		1.5414013 0.38040698 6.2715063 1.6540412 0.56517881 6.3455663 1.555621 0.56561905 
		6.4076629 1.3684798 0.38128719 6.3956995 1.2797588 0.19651541 6.3216395 1.378179 
		0.19607544 6.2595425 1.5653199 0.49237064 6.2642031 1.554816;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".dr" 1;
createNode transform -n "pSphere1" -p "vine";
	setAttr ".rp" -type "double3" 0.11121850532181546 4.8489147780487789 -0.15663277947624626 ;
	setAttr ".sp" -type "double3" 0.11121850532181546 4.8489147780487789 -0.15663277947624626 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 27 ".uvst[0].uvsp[0:26]" -type "float2" 0 0.5 0.16666667
		 0.5 0.33333334 0.5 0.5 0.5 0.66666669 0.5 0.83333337 0.5 1 0.5 0 0.66666669 0.16666667
		 0.66666669 0.33333334 0.66666669 0.5 0.66666669 0.66666669 0.66666669 0.83333337
		 0.66666669 1 0.66666669 0 0.83333337 0.16666667 0.83333337 0.33333334 0.83333337
		 0.5 0.83333337 0.66666669 0.83333337 0.83333337 0.83333337 1 0.83333337 0.083333336
		 1 0.25 1 0.41666669 1 0.58333337 1 0.75 1 0.91666669 1;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".pt[0:18]" -type "float3"  0.25282136 4.9064536 -0.45085132 
		0.55512851 4.9363751 -0.56090367 0.6863898 5.2419357 -1.0435174 0.51534396 5.5175748 
		-1.4160788 0.21303681 5.4876533 -1.3060265 0.081775568 5.1820927 -0.82341278 0.42807841 
		4.6662722 -0.9759959 0.65693867 4.6889238 -1.0593104 0.75630945 4.9202471 -1.4246708 
		0.62681997 5.1289182 -1.7067168 0.39795968 5.1062665 -1.6234021 0.2985889 4.8749433 
		-1.2580417 0.59086472 4.549726 -1.4833719 0.69722795 4.5602536 -1.5220925 0.74341065 
		4.6677613 -1.6918944 0.68323016 4.7647419 -1.8229758 0.57686698 4.7542143 -1.7842551 
		0.53068429 4.6467061 -1.6144532 0.70724195 4.5032892 -1.8528838;
	setAttr -s 19 ".vt[0:18]"  0.32976261 -0.02576125 -0.57116526 -0.32976228 -0.02576125 -0.57116526
		 -0.6595248 -0.02576125 -1.0842381e-007 -0.32976252 -0.02576125 0.5711652 0.3297624 -0.02576125 0.5711652
		 0.6595248 -0.02576125 -1.0146951e-008 0.24964522 0.49999997 -0.43239793 -0.24964508 0.49999997 -0.43239802
		 -0.49929032 0.49999997 -8.7020425e-008 -0.24964522 0.49999997 0.43239793 0.24964514 0.49999997 0.43239796
		 0.49929032 0.49999997 -1.2620367e-008 0.11602305 0.90192443 -0.20095773 -0.11602297 0.90192443 -0.20095779
		 -0.23204598 0.90192443 -4.2563197e-008 -0.11602302 0.90192443 0.20095775 0.11602297 0.90192443 0.20095778
		 0.23204598 0.90192443 -7.9856521e-009 0 1.15934587 -7.9856521e-009;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 0 0 6 7 1
		 7 8 1 8 9 1 9 10 1 10 11 1 11 6 1 12 13 1 13 14 1 14 15 1 15 16 1 16 17 1 17 12 1
		 0 6 1 1 7 1 2 8 1 3 9 1 4 10 1 5 11 1 6 12 1 7 13 1 8 14 1 9 15 1 10 16 1 11 17 1
		 12 18 1 13 18 1 14 18 1 15 18 1 16 18 1 17 18 1;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 19 -7 -19
		mu 0 4 0 1 8 7
		f 4 1 20 -8 -20
		mu 0 4 1 2 9 8
		f 4 2 21 -9 -21
		mu 0 4 2 3 10 9
		f 4 3 22 -10 -22
		mu 0 4 3 4 11 10
		f 4 4 23 -11 -23
		mu 0 4 4 5 12 11
		f 4 5 18 -12 -24
		mu 0 4 5 6 13 12
		f 4 6 25 -13 -25
		mu 0 4 7 8 15 14
		f 4 7 26 -14 -26
		mu 0 4 8 9 16 15
		f 4 8 27 -15 -27
		mu 0 4 9 10 17 16
		f 4 9 28 -16 -28
		mu 0 4 10 11 18 17
		f 4 10 29 -17 -29
		mu 0 4 11 12 19 18
		f 4 11 24 -18 -30
		mu 0 4 12 13 20 19
		f 3 12 31 -31
		mu 0 3 14 15 21
		f 3 13 32 -32
		mu 0 3 15 16 22
		f 3 14 33 -33
		mu 0 3 16 17 23
		f 3 15 34 -34
		mu 0 3 17 18 24
		f 3 16 35 -35
		mu 0 3 18 19 25
		f 3 17 30 -36
		mu 0 3 19 20 26;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "pCylinder1" -p "vine";
	setAttr ".t" -type "double3" 0 0.51842789246475185 0.36503325203146664 ;
	setAttr ".s" -type "double3" 1.4270474479683966 1.043027530928119 1.4270474479683966 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 22 ".pt";
	setAttr ".pt[0]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".pt[1]" -type "float3" 0 -0.54346502 1.4901161e-008 ;
	setAttr ".pt[2]" -type "float3" 7.4505806e-009 -0.54346502 0 ;
	setAttr ".pt[3]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".pt[4]" -type "float3" -1.7763568e-015 -0.54346502 0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".pt[6]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.54346502 7.4505806e-009 ;
	setAttr ".pt[8]" -type "float3" 0 -0.54346502 3.7252901e-009 ;
	setAttr ".pt[9]" -type "float3" -1.4901161e-008 -0.54346502 3.5527137e-015 ;
	setAttr ".pt[10]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".pt[11]" -type "float3" 0 -0.54346502 -7.4505806e-009 ;
	setAttr ".pt[12]" -type "float3" 7.4505806e-009 -0.54346502 0 ;
	setAttr ".pt[13]" -type "float3" 7.4505806e-009 -0.54346502 0 ;
	setAttr ".pt[14]" -type "float3" 0 -0.54346502 1.4901161e-008 ;
	setAttr ".pt[15]" -type "float3" 3.7252903e-009 -0.54346502 0 ;
	setAttr ".pt[16]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".pt[17]" -type "float3" -1.4901161e-008 -0.54346502 7.4505806e-009 ;
	setAttr ".pt[18]" -type "float3" 0 -0.54346502 -3.7252903e-009 ;
	setAttr ".pt[19]" -type "float3" 1.4901161e-008 -0.54346502 3.5527137e-015 ;
	setAttr ".pt[40]" -type "float3" -1.7763568e-015 -0.54346502 3.5527137e-015 ;
createNode transform -n "Root" -p "vine";
createNode transform -n "placement_ctrl" -p "Root";
	addAttr -ci true -sn "Grow" -ln "Grow" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "AutoDivide" -ln "AutoDivide" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Divisions" -ln "Divisions" -dv 1 -min 1 -max 1000 -at "long";
	setAttr ".s" -type "double3" 1 0.99443430643888087 1 ;
	setAttr -k on ".Grow";
	setAttr -cb on ".AutoDivide";
	setAttr -cb on ".Divisions" 60;
createNode nurbsCurve -n "placement_ctrlShape" -p "placement_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884694e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543881
		0.78361162489122382 -4.7982373409884719e-017 0.78361162489122438
		1.1081941875543879 -3.6446300679047921e-032 5.9521325992805852e-016
		0.78361162489122504 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode transform -n "Geo" -p "placement_ctrl";
createNode transform -n "vine_geo" -p "Geo";
createNode mesh -n "vine_geoShape" -p "vine_geo";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "polySurfaceShape1" -p "vine_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 36 ".uvst[0].uvsp[0:35]" -type "float2" 0.61048543 0.04576458
		 0.5 1.4901161e-008 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5
		 0.3125 0.61048543 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125
		 0.46875 0.3125 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125
		 0.375 0.68843985 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985
		 0.53125 0.68843985 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543
		 0.73326457 0.5 0.6875 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543
		 0.5 1 0.61048543 0.95423543 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 18 ".vt[0:17]"  0.26484758 0.022978663 -0.26484758 -1.3322676e-015 0.022978663 -0.37455106
		 -0.26484758 0.022978663 -0.26484758 -0.37455106 0.022978663 0 -0.26484758 0.022978663 0.26484758
		 -1.3322676e-015 0.022978663 0.37455106 0.26484761 0.022978663 0.26484761 0.37455109 0.022978663 0
		 0.26484758 0.90185082 -0.26484758 -1.3322676e-015 0.90185082 -0.37455106 -0.26484758 0.90185082 -0.26484758
		 -0.37455106 0.90185082 0 -0.26484758 0.90185082 0.26484758 -1.3322676e-015 0.90185082 0.37455106
		 0.26484761 0.90185082 0.26484761 0.37455109 0.90185082 0 -1.3322676e-015 0.022978663 0
		 -1.3322676e-015 0.90185082 0;
	setAttr -s 40 ".ed[0:39]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0
		 7 0 0 8 9 0 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 8 1 1 9 1 2 10 1
		 3 11 1 4 12 1 5 13 1 6 14 1 7 15 1 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1;
	setAttr -s 24 -ch 80 ".fc[0:23]" -type "polyFaces" 
		f 4 0 17 -9 -17
		mu 0 4 8 9 18 17
		f 4 1 18 -10 -18
		mu 0 4 9 10 19 18
		f 4 2 19 -11 -19
		mu 0 4 10 11 20 19
		f 4 3 20 -12 -20
		mu 0 4 11 12 21 20
		f 4 4 21 -13 -21
		mu 0 4 12 13 22 21
		f 4 5 22 -14 -22
		mu 0 4 13 14 23 22
		f 4 6 23 -15 -23
		mu 0 4 14 15 24 23
		f 4 7 16 -16 -24
		mu 0 4 15 16 25 24
		f 3 -1 -25 25
		mu 0 3 1 0 34
		f 3 -2 -26 26
		mu 0 3 2 1 34
		f 3 -3 -27 27
		mu 0 3 3 2 34
		f 3 -4 -28 28
		mu 0 3 4 3 34
		f 3 -5 -29 29
		mu 0 3 5 4 34
		f 3 -6 -30 30
		mu 0 3 6 5 34
		f 3 -7 -31 31
		mu 0 3 7 6 34
		f 3 -8 -32 24
		mu 0 3 0 7 34
		f 3 8 33 -33
		mu 0 3 32 31 35
		f 3 9 34 -34
		mu 0 3 31 30 35
		f 3 10 35 -35
		mu 0 3 30 29 35
		f 3 11 36 -36
		mu 0 3 29 28 35
		f 3 12 37 -37
		mu 0 3 28 27 35
		f 3 13 38 -38
		mu 0 3 27 26 35
		f 3 14 39 -39
		mu 0 3 26 33 35
		f 3 15 32 -40
		mu 0 3 33 32 35;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode mesh -n "vine_geoShapeOrig" -p "vine_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Rig" -p "placement_ctrl";
createNode transform -n "vine_crv" -p "Rig";
	setAttr ".s" -type "double3" 1 1.1315211185922633 1 ;
createNode nurbsCurve -n "vine_crvShape" -p "vine_crv";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 24 0 no 3
		29 0 0 0 0.041666666666666664 0.083333333333333329 0.125 0.16666666666666666
		 0.20833333333333334 0.25 0.29166666666666669 0.33333333333333331 0.375 0.41666666666666669
		 0.45833333333333331 0.5 0.54166666666666663 0.58333333333333337 0.625 0.66666666666666663
		 0.70833333333333337 0.75 0.79166666666666663 0.83333333333333337 0.875 0.91666666666666663
		 0.95833333333333337 1 1 1
		27
		0 -0.014144106020844578 0.34691744195707253
		0 0.25134273208106744 0.37794152087136557
		0 0.22266152920797838 0.29418656322856918
		-0.0021729337747729005 0.98844463480259226 0.43406544262082952
		-0.0021729337747729005 1.9700757954673429 0.2855917208625145
		-0.0021729337747729005 2.7706327468922267 0.18528677411583838
		-0.0061241692701869965 3.4458487570269192 -0.34366920838883208
		0.22275569466364509 4.42666918962232 -0.25857025689619684
		-0.28062295338550847 5.2800757093016299 0.75029979476623543
		-0.7837819627639071 5.2923782450550148 1.6371709155678507
		-1.4179456582060475 6.1608697161597199 2.5330761607702801
		-3.045785281699438 6.2014766292599646 2.5298196043688201
		-4.5369327839863569 5.3818759632651405 1.9961418695016009
		-4.8719070234841197 5.394128541561531 0.91599046137445805
		-5.0742567086631185 5.4015300222384353 -0.16937396281297218
		-5.9774695597618761 5.4345674468266223 -0.79379787773699417
		-6.975320886280949 5.471066526650378 -0.52618742222904613
		-7.7893982427020312 5.5008435822347748 0.47379982766080975
		-8.5080038877334783 6.508952106132508 1.905168600872619
		-9.3675877957632139 6.5403936854946672 2.2035506294270313
		-10.233397863607305 6.5720630032964458 1.966658932915057
		-10.772360390652896 5.6099533971498916 0.17950016919074752
		-11.695316930547943 5.6437129999366187 0.14760838918456357
		-12.406076344276016 5.5578221324154153 0.87958211653504903
		-13.111510619018169 5.9751716226486025 1.162830012264664
		-13.593002121332766 6.2600319423658597 1.0472432594609069
		-13.998314016182146 6.4998228325414997 0.83354788939824498
		;
createNode transform -n "vine_crvBaseWire" -p "Rig";
	setAttr ".v" no;
createNode nurbsCurve -n "vine_crvBaseWireShape" -p "vine_crvBaseWire";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 24 0 no 3
		29 0 0 0 0.041666666666666664 0.083333333333333329 0.125 0.16666666666666666
		 0.20833333333333334 0.25 0.29166666666666669 0.33333333333333331 0.375 0.41666666666666669
		 0.45833333333333326 0.5 0.54166666666666663 0.58333333333333337 0.625 0.66666666666666663
		 0.70833333333333337 0.75 0.79166666666666663 0.83333333333333337 0.875 0.91666666666666652
		 0.95833333333333337 1 1 1
		27
		0 -0.014144106020844332 -0.002376605912509534
		-0 0.083269556600201092 -0.002376605912509534
		0 0.27809686926167448 -0.0023766059125095423
		0 0.57033785165263762 -0.002376605912509547
		0 0.86257882754623327 -0.0023766059125095384
		0 1.1548198068364586 -0.0023766059125095115
		0 1.447060784318551 -0.0023766059125094651
		0 1.739301762767161 -0.0023766059125094282
		0 2.0315427406987832 -0.0023766059125094078
		0 2.3237837189067196 -0.0023766059125094113
		0 2.6160246969674774 -0.0023766059125094356
		0 2.9082656751056835 -0.0023766059125094529
		0 3.2005066532049189 -0.0023766059125094534
		0 3.4927476313203734 -0.0023766059125094456
		0 3.7849886094358114 -0.0023766059125094278
		0 4.077229587535057 -0.0023766059125094291
		0 4.3694705656732653 -0.0023766059125094356
		0 4.6617115437340031 -0.0023766059125094577
		0 4.9539525219419698 -0.0023766059125094681
		0 5.2461934998735638 -0.0023766059125094586
		0 5.5384344783221957 -0.0023766059125094547
		0 5.8306754558042773 -0.0023766059125094291
		0 6.1229164350945027 -0.0023766059125094286
		0 6.4151574109881002 -0.0023766059125094165
		0 6.7073983933790595 -0.0023766059125094308
		0 6.902225706040535 -0.0023766059125094312
		0 6.9996393686615805 -0.0023766059125094312
		;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
	setAttr -s 2 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode mentalrayItemsList -s -n "mentalrayItemsList";
createNode mentalrayGlobals -s -n "mentalrayGlobals";
createNode mentalrayOptions -s -n "miDefaultOptions";
	addAttr -ci true -m -sn "stringOptions" -ln "stringOptions" -at "compound" -nc 
		3;
	addAttr -ci true -sn "name" -ln "name" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "value" -ln "value" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "type" -ln "type" -dt "string" -p "stringOptions";
	addAttr -ci true -sn "miSamplesQualityR" -ln "miSamplesQualityR" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityG" -ln "miSamplesQualityG" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityB" -ln "miSamplesQualityB" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesQualityA" -ln "miSamplesQualityA" -dv 0.25 -min 0.01 
		-max 9999999.9000000004 -smn 0.1 -smx 2 -at "double";
	addAttr -ci true -sn "miSamplesMin" -ln "miSamplesMin" -dv 1 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesMax" -ln "miSamplesMax" -dv 100 -min 0.1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffR" -ln "miSamplesErrorCutoffR" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffG" -ln "miSamplesErrorCutoffG" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffB" -ln "miSamplesErrorCutoffB" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesErrorCutoffA" -ln "miSamplesErrorCutoffA" -min 0 
		-max 1 -at "double";
	addAttr -ci true -sn "miSamplesPerObject" -ln "miSamplesPerObject" -min 0 -max 1 
		-at "bool";
	addAttr -ci true -sn "miRastShadingSamples" -ln "miRastShadingSamples" -dv 1 -min 
		0.25 -at "double";
	addAttr -ci true -sn "miRastSamples" -ln "miRastSamples" -dv 3 -min 1 -at "long";
	addAttr -ci true -sn "miContrastAsColor" -ln "miContrastAsColor" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miProgMaxTime" -ln "miProgMaxTime" -min 0 -at "long";
	addAttr -ci true -sn "miProgSubsampleSize" -ln "miProgSubsampleSize" -dv 4 -min 
		1 -at "long";
	addAttr -ci true -sn "miTraceCameraMotionVectors" -ln "miTraceCameraMotionVectors" 
		-min 0 -max 1 -at "bool";
	addAttr -ci true -sn "miTraceCameraClip" -ln "miTraceCameraClip" -min 0 -max 1 -at "bool";
	setAttr -s 45 ".stringOptions";
	setAttr ".stringOptions[0].name" -type "string" "rast motion factor";
	setAttr ".stringOptions[0].value" -type "string" "1.0";
	setAttr ".stringOptions[0].type" -type "string" "scalar";
	setAttr ".stringOptions[1].name" -type "string" "rast transparency depth";
	setAttr ".stringOptions[1].value" -type "string" "8";
	setAttr ".stringOptions[1].type" -type "string" "integer";
	setAttr ".stringOptions[2].name" -type "string" "rast useopacity";
	setAttr ".stringOptions[2].value" -type "string" "true";
	setAttr ".stringOptions[2].type" -type "string" "boolean";
	setAttr ".stringOptions[3].name" -type "string" "importon";
	setAttr ".stringOptions[3].value" -type "string" "false";
	setAttr ".stringOptions[3].type" -type "string" "boolean";
	setAttr ".stringOptions[4].name" -type "string" "importon density";
	setAttr ".stringOptions[4].value" -type "string" "1.0";
	setAttr ".stringOptions[4].type" -type "string" "scalar";
	setAttr ".stringOptions[5].name" -type "string" "importon merge";
	setAttr ".stringOptions[5].value" -type "string" "0.0";
	setAttr ".stringOptions[5].type" -type "string" "scalar";
	setAttr ".stringOptions[6].name" -type "string" "importon trace depth";
	setAttr ".stringOptions[6].value" -type "string" "0";
	setAttr ".stringOptions[6].type" -type "string" "integer";
	setAttr ".stringOptions[7].name" -type "string" "importon traverse";
	setAttr ".stringOptions[7].value" -type "string" "true";
	setAttr ".stringOptions[7].type" -type "string" "boolean";
	setAttr ".stringOptions[8].name" -type "string" "shadowmap pixel samples";
	setAttr ".stringOptions[8].value" -type "string" "3";
	setAttr ".stringOptions[8].type" -type "string" "integer";
	setAttr ".stringOptions[9].name" -type "string" "ambient occlusion";
	setAttr ".stringOptions[9].value" -type "string" "false";
	setAttr ".stringOptions[9].type" -type "string" "boolean";
	setAttr ".stringOptions[10].name" -type "string" "ambient occlusion rays";
	setAttr ".stringOptions[10].value" -type "string" "256";
	setAttr ".stringOptions[10].type" -type "string" "integer";
	setAttr ".stringOptions[11].name" -type "string" "ambient occlusion cache";
	setAttr ".stringOptions[11].value" -type "string" "false";
	setAttr ".stringOptions[11].type" -type "string" "boolean";
	setAttr ".stringOptions[12].name" -type "string" "ambient occlusion cache density";
	setAttr ".stringOptions[12].value" -type "string" "1.0";
	setAttr ".stringOptions[12].type" -type "string" "scalar";
	setAttr ".stringOptions[13].name" -type "string" "ambient occlusion cache points";
	setAttr ".stringOptions[13].value" -type "string" "64";
	setAttr ".stringOptions[13].type" -type "string" "integer";
	setAttr ".stringOptions[14].name" -type "string" "irradiance particles";
	setAttr ".stringOptions[14].value" -type "string" "false";
	setAttr ".stringOptions[14].type" -type "string" "boolean";
	setAttr ".stringOptions[15].name" -type "string" "irradiance particles rays";
	setAttr ".stringOptions[15].value" -type "string" "256";
	setAttr ".stringOptions[15].type" -type "string" "integer";
	setAttr ".stringOptions[16].name" -type "string" "irradiance particles interpolate";
	setAttr ".stringOptions[16].value" -type "string" "1";
	setAttr ".stringOptions[16].type" -type "string" "integer";
	setAttr ".stringOptions[17].name" -type "string" "irradiance particles interppoints";
	setAttr ".stringOptions[17].value" -type "string" "64";
	setAttr ".stringOptions[17].type" -type "string" "integer";
	setAttr ".stringOptions[18].name" -type "string" "irradiance particles indirect passes";
	setAttr ".stringOptions[18].value" -type "string" "0";
	setAttr ".stringOptions[18].type" -type "string" "integer";
	setAttr ".stringOptions[19].name" -type "string" "irradiance particles scale";
	setAttr ".stringOptions[19].value" -type "string" "1.0";
	setAttr ".stringOptions[19].type" -type "string" "scalar";
	setAttr ".stringOptions[20].name" -type "string" "irradiance particles env";
	setAttr ".stringOptions[20].value" -type "string" "true";
	setAttr ".stringOptions[20].type" -type "string" "boolean";
	setAttr ".stringOptions[21].name" -type "string" "irradiance particles env rays";
	setAttr ".stringOptions[21].value" -type "string" "256";
	setAttr ".stringOptions[21].type" -type "string" "integer";
	setAttr ".stringOptions[22].name" -type "string" "irradiance particles env scale";
	setAttr ".stringOptions[22].value" -type "string" "1";
	setAttr ".stringOptions[22].type" -type "string" "integer";
	setAttr ".stringOptions[23].name" -type "string" "irradiance particles rebuild";
	setAttr ".stringOptions[23].value" -type "string" "true";
	setAttr ".stringOptions[23].type" -type "string" "boolean";
	setAttr ".stringOptions[24].name" -type "string" "irradiance particles file";
	setAttr ".stringOptions[24].value" -type "string" "";
	setAttr ".stringOptions[24].type" -type "string" "string";
	setAttr ".stringOptions[25].name" -type "string" "geom displace motion factor";
	setAttr ".stringOptions[25].value" -type "string" "1.0";
	setAttr ".stringOptions[25].type" -type "string" "scalar";
	setAttr ".stringOptions[26].name" -type "string" "contrast all buffers";
	setAttr ".stringOptions[26].value" -type "string" "true";
	setAttr ".stringOptions[26].type" -type "string" "boolean";
	setAttr ".stringOptions[27].name" -type "string" "finalgather normal tolerance";
	setAttr ".stringOptions[27].value" -type "string" "25.842";
	setAttr ".stringOptions[27].type" -type "string" "scalar";
	setAttr ".stringOptions[28].name" -type "string" "trace camera clip";
	setAttr ".stringOptions[28].value" -type "string" "false";
	setAttr ".stringOptions[28].type" -type "string" "boolean";
	setAttr ".stringOptions[29].name" -type "string" "unified sampling";
	setAttr ".stringOptions[29].value" -type "string" "true";
	setAttr ".stringOptions[29].type" -type "string" "boolean";
	setAttr ".stringOptions[30].name" -type "string" "samples quality";
	setAttr ".stringOptions[30].value" -type "string" "0.5 0.5 0.5 0.5";
	setAttr ".stringOptions[30].type" -type "string" "color";
	setAttr ".stringOptions[31].name" -type "string" "samples min";
	setAttr ".stringOptions[31].value" -type "string" "1.0";
	setAttr ".stringOptions[31].type" -type "string" "scalar";
	setAttr ".stringOptions[32].name" -type "string" "samples max";
	setAttr ".stringOptions[32].value" -type "string" "100.0";
	setAttr ".stringOptions[32].type" -type "string" "scalar";
	setAttr ".stringOptions[33].name" -type "string" "samples error cutoff";
	setAttr ".stringOptions[33].value" -type "string" "0.0 0.0 0.0 0.0";
	setAttr ".stringOptions[33].type" -type "string" "color";
	setAttr ".stringOptions[34].name" -type "string" "samples per object";
	setAttr ".stringOptions[34].value" -type "string" "false";
	setAttr ".stringOptions[34].type" -type "string" "boolean";
	setAttr ".stringOptions[35].name" -type "string" "progressive";
	setAttr ".stringOptions[35].value" -type "string" "false";
	setAttr ".stringOptions[35].type" -type "string" "boolean";
	setAttr ".stringOptions[36].name" -type "string" "progressive max time";
	setAttr ".stringOptions[36].value" -type "string" "0";
	setAttr ".stringOptions[36].type" -type "string" "integer";
	setAttr ".stringOptions[37].name" -type "string" "progressive subsampling size";
	setAttr ".stringOptions[37].value" -type "string" "1";
	setAttr ".stringOptions[37].type" -type "string" "integer";
	setAttr ".stringOptions[38].name" -type "string" "iray";
	setAttr ".stringOptions[38].value" -type "string" "false";
	setAttr ".stringOptions[38].type" -type "string" "boolean";
	setAttr ".stringOptions[39].name" -type "string" "light relative scale";
	setAttr ".stringOptions[39].value" -type "string" "0.31831";
	setAttr ".stringOptions[39].type" -type "string" "scalar";
	setAttr ".stringOptions[40].name" -type "string" "trace camera motion vectors";
	setAttr ".stringOptions[40].value" -type "string" "false";
	setAttr ".stringOptions[40].type" -type "string" "boolean";
	setAttr ".stringOptions[41].name" -type "string" "ray differentials";
	setAttr ".stringOptions[41].value" -type "string" "true";
	setAttr ".stringOptions[41].type" -type "string" "boolean";
	setAttr ".stringOptions[42].name" -type "string" "environment lighting mode";
	setAttr ".stringOptions[42].value" -type "string" "off";
	setAttr ".stringOptions[42].type" -type "string" "string";
	setAttr ".stringOptions[43].name" -type "string" "environment lighting quality";
	setAttr ".stringOptions[43].value" -type "string" "0.167";
	setAttr ".stringOptions[43].type" -type "string" "scalar";
	setAttr ".stringOptions[44].name" -type "string" "environment lighting shadow";
	setAttr ".stringOptions[44].value" -type "string" "transparent";
	setAttr ".stringOptions[44].type" -type "string" "string";
createNode mentalrayFramebuffer -s -n "miDefaultFramebuffer";
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:23]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50592535734176636;
	setAttr ".re" 23;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr -s 5 ".p[0:4]"  0 0 3 0.28695652 0.1 3 0.68695652 0.72000003 
		3 0.98260868 0.94 3 0.55652171 0.34 3;
	setAttr ".fq" yes;
createNode clamp -n "clamp1";
	setAttr ".mn" -type "float3" 1 1 1 ;
	setAttr ".mx" -type "float3" 1000 1000 1000 ;
createNode wire -n "wire1";
	setAttr ".dds[0]"  1000;
	setAttr ".sc[0]"  1;
createNode tweak -n "tweak1";
	setAttr -s 18 ".vl[0].vt";
	setAttr ".vl[0].vt[8]" -type "float3" -0.1957645 0.001982559 0.19875871 ;
	setAttr ".vl[0].vt[9]" -type "float3" 1.1014327e-008 0.0028037431 0.28108716 ;
	setAttr ".vl[0].vt[10]" -type "float3" 0.19576453 0.001982559 0.19875871 ;
	setAttr ".vl[0].vt[11]" -type "float3" 0.27685288 0 8.4663734e-009 ;
	setAttr ".vl[0].vt[12]" -type "float3" 0.19576453 -0.0019825243 -0.19875848 ;
	setAttr ".vl[0].vt[13]" -type "float3" 1.1014327e-008 -0.0028037238 -0.28108698 ;
	setAttr ".vl[0].vt[14]" -type "float3" -0.19576453 -0.0019825299 -0.19875848 ;
	setAttr ".vl[0].vt[15]" -type "float3" -0.27685288 0 8.4663734e-009 ;
	setAttr ".vl[0].vt[17]" -type "float3" 0.0027818549 0.015248298 -0.0030148968 ;
	setAttr ".vl[0].vt[18]" -type "float3" -0.07622619 0 -6.684032e-009 ;
	setAttr ".vl[0].vt[19]" -type "float3" -0.053900048 -0.0014611599 -0.053234465 ;
	setAttr ".vl[0].vt[20]" -type "float3" 3.0412481e-009 -0.0020449583 -0.075315483 ;
	setAttr ".vl[0].vt[21]" -type "float3" 0.053900048 -0.0014611599 -0.053234465 ;
	setAttr ".vl[0].vt[22]" -type "float3" 0.07622619 0 -6.684032e-009 ;
	setAttr ".vl[0].vt[23]" -type "float3" 0.053900048 0.0015311949 0.053132143 ;
	setAttr ".vl[0].vt[24]" -type "float3" 3.0186551e-009 0.0021848574 0.075111508 ;
	setAttr ".vl[0].vt[25]" -type "float3" -0.053900048 0.0015311949 0.053132143 ;
createNode objectSet -n "wire1Set";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "wire1GroupId";
	setAttr ".ihi" 0;
createNode groupParts -n "wire1GroupParts";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId2";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode condition -n "condition1";
createNode animCurveTU -n "placement_ctrl_Grow";
	setAttr ".tan" 3;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 73.744 2.3219661446698154 177.664 6.6983615461084822
		 240 7.8;
	setAttr -s 4 ".kit[2:3]"  2 2;
	setAttr -s 4 ".kot[2:3]"  2 2;
	setAttr -s 4 ".ktl[0:3]" no yes yes yes;
createNode displayLayer -n "vine_layer";
	setAttr ".dt" 2;
	setAttr ".do" 1;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n"
		+ "                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n"
		+ "                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n"
		+ "            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n"
		+ "                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n"
		+ "                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n"
		+ "                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n"
		+ "            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n"
		+ "            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n"
		+ "        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n"
		+ "                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n"
		+ "            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n"
		+ "            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n"
		+ "            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n"
		+ "                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n"
		+ "            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n"
		+ "            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -clipTime \"on\" \n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n"
		+ "                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n"
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n"
		+ "                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n"
		+ "                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n"
		+ "                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n"
		+ "                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n"
		+ "                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n"
		+ "                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n"
		+ "                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n"
		+ "        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 240 -ast 1 -aet 240 ";
	setAttr ".st" 6;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1.4270474479683966 0 0 0 0 1.4270474479683966 0 0 0 0 1.4270474479683966 0
		 0 1.3973895019778386 0.46378998686861084 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7011732e-007 1.9531947 0.46378973 ;
	setAttr ".rs" 61678;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2327411548867526 1.9531947437334396 -0.7689515082527667 ;
	setAttr ".cbx" -type "double3" 1.2327408146521277 1.9531947437334396 1.696530971638051 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[20]" -type "float3" -0.12949584 -0.61052084 0.042075709 ;
	setAttr ".tk[21]" -type "float3" -0.11015572 -0.61052084 0.080032781 ;
	setAttr ".tk[22]" -type "float3" -0.080032825 -0.61052084 0.11015569 ;
	setAttr ".tk[23]" -type "float3" -0.042075749 -0.61052084 0.12949575 ;
	setAttr ".tk[24]" -type "float3" -1.6231523e-008 -0.61052084 0.1361599 ;
	setAttr ".tk[25]" -type "float3" 0.042075712 -0.61052084 0.12949575 ;
	setAttr ".tk[26]" -type "float3" 0.080032781 -0.61052084 0.11015567 ;
	setAttr ".tk[27]" -type "float3" 0.11015567 -0.61052084 0.080032751 ;
	setAttr ".tk[28]" -type "float3" 0.12949574 -0.61052084 0.042075694 ;
	setAttr ".tk[29]" -type "float3" 0.13615988 -0.61052084 -2.4347285e-008 ;
	setAttr ".tk[30]" -type "float3" 0.12949574 -0.61052084 -0.042075749 ;
	setAttr ".tk[31]" -type "float3" 0.11015566 -0.61052084 -0.080032811 ;
	setAttr ".tk[32]" -type "float3" 0.080032751 -0.61052084 -0.11015569 ;
	setAttr ".tk[33]" -type "float3" 0.042075697 -0.61052084 -0.12949575 ;
	setAttr ".tk[34]" -type "float3" -1.2173643e-008 -0.61052084 -0.1361599 ;
	setAttr ".tk[35]" -type "float3" -0.042075735 -0.61052084 -0.12949575 ;
	setAttr ".tk[36]" -type "float3" -0.080032781 -0.61052084 -0.11015569 ;
	setAttr ".tk[37]" -type "float3" -0.11015567 -0.61052084 -0.080032788 ;
	setAttr ".tk[38]" -type "float3" -0.12949574 -0.61052084 -0.042075742 ;
	setAttr ".tk[39]" -type "float3" -0.13615988 -0.61052084 -2.4347285e-008 ;
	setAttr ".tk[41]" -type "float3" -1.6231523e-008 -0.61052084 -2.4347285e-008 ;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1.4270474479683966 0 0 0 0 1.4270474479683966 0 0 0 0 1.4270474479683966 0
		 0 1.3973895019778386 0.46378998686861084 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7011732e-007 2.7498593 0.46378982 ;
	setAttr ".rs" 55566;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0151416338596202 2.749859391468426 -0.55135190216697794 ;
	setAttr ".cbx" -type "double3" 1.0151412936249953 2.749859391468426 1.4789315356695747 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[41:61]" -type "float3"  -0.14501946 0.5582608 0.047119647
		 -0.12336095 0.5582608 0.089626938 -1.8177312e-008 0.5582608 -2.1042453e-008 -0.089626953
		 0.5582608 0.12336088 -0.047119688 0.5582608 0.14501941 -1.8177312e-008 0.5582608
		 0.15248242 0.047119644 0.5582608 0.14501941 0.089626923 0.5582608 0.12336084 0.12336084
		 0.5582608 0.089626901 0.14501937 0.5582608 0.047119636 0.15248241 0.5582608 -2.1042453e-008
		 0.14501937 0.5582608 -0.047119685 0.12336084 0.5582608 -0.089626923 0.089626864 0.5582608
		 -0.12336085 0.04711964 0.5582608 -0.14501937 -1.3632984e-008 0.5582608 -0.15248242
		 -0.047119647 0.5582608 -0.14501937 -0.089626908 0.5582608 -0.12336085 -0.12336084
		 0.5582608 -0.089626923 -0.14501937 0.5582608 -0.047119658 -0.15248241 0.5582608 -2.1042453e-008;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	setAttr ".ics" -type "componentList" 1 "f[40:59]";
	setAttr ".ix" -type "matrix" 1.4270474479683966 0 0 0 0 1.4270474479683966 0 0 0 0 1.4270474479683966 0
		 0 1.3973895019778386 0.46378998686861084 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2758798e-007 3.2539678 0.46378991 ;
	setAttr ".rs" 53741;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0030899280366579 3.2539678532677261 -0.5393001963440156 ;
	setAttr ".cbx" -type "double3" 1.0030896728606891 3.2539678532677261 1.4668799999639248 ;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[61:81]" -type "float3"  -0.0080318619 0.35325286 0.0026097081
		 -0.0068323123 0.35325286 0.0049639633 -6.529346e-010 0.35325286 -7.0762241e-010 -0.0049639642
		 0.35325286 0.0068323072 -0.002609709 0.35325286 0.00803186 -6.529346e-010 0.35325286
		 0.0084451949 0.0026097104 0.35325286 0.00803186 0.0049639642 0.35325286 0.0068323067
		 0.0068323053 0.35325286 0.0049639614 0.0080318647 0.35325286 0.0026097088 0.0084451959
		 0.35325286 -7.0762241e-010 0.0080318647 0.35325286 -0.0026097093 0.0068323053 0.35325286
		 -0.0049639614 0.0049639582 0.35325286 -0.0068323067 0.0026097093 0.35325286 -0.0080318637
		 -4.0124801e-010 0.35325286 -0.0084451949 -0.002609709 0.35325286 -0.0080318637 -0.0049639614
		 0.35325286 -0.0068323067 -0.0068323053 0.35325286 -0.0049639614 -0.0080318581 0.35325286
		 -0.0026097093 -0.0084451959 0.35325286 -7.0762241e-010;
createNode polySoftEdge -n "polySoftEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.4270474479683966 0 0 0 0 1.043027530928119 0 0 0 0 1.4270474479683966 0
		 0 1.08590972939636 0.46378998686861078 1;
	setAttr ".a" 180;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk[81:101]" -type "float3"  -0.1520593 0.40981686 0.049407061
		 -0.1293494 0.40981686 0.093977824 -1.2361359e-008 0.40981686 -2.0336509e-008 -0.093977846
		 0.40981686 0.1293494 -0.049407069 0.40981686 0.15205929 -1.2361359e-008 0.40981686
		 0.15988465 0.049407057 0.40981686 0.15205929 0.093977816 0.40981686 0.12934937 0.12934935
		 0.40981686 0.093977802 0.15205923 0.40981686 0.049407043 0.15988457 0.40981686 -2.0336509e-008
		 0.15205923 0.40981686 -0.049407069 0.12934935 0.40981686 -0.093977802 0.093977794
		 0.40981686 -0.12934937 0.049407046 0.40981686 -0.15205923 -7.596431e-009 0.40981686
		 -0.15988465 -0.049407057 0.40981686 -0.15205923 -0.093977794 0.40981686 -0.12934937
		 -0.12934938 0.40981686 -0.093977802 -0.15205924 0.40981686 -0.049407069 -0.15988457
		 0.40981686 -2.0336509e-008;
createNode animCurveTL -n "pSphere1_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 0 175 0;
createNode animCurveTL -n "pSphere1_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 0 175 0;
createNode animCurveTL -n "pSphere1_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 0 175 0;
createNode animCurveTU -n "pSphere1_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 1 48 1 175 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTA -n "pSphere1_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 0 175 0;
createNode animCurveTA -n "pSphere1_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 0 175 0;
createNode animCurveTA -n "pSphere1_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 0 48 0 175 0;
createNode animCurveTU -n "pSphere1_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.9999999999999998e-013 48 9.9999999999999998e-013
		 175 1;
createNode animCurveTU -n "pSphere1_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.9999999999999998e-013 48 9.9999999999999998e-013
		 175 1;
createNode animCurveTU -n "pSphere1_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  1 9.9999999999999998e-013 48 9.9999999999999998e-013
		 175 1;
createNode animCurveTU -n "pSphere2_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 70 1 123 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "pSphere2_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 70 0 123 0 240 0;
createNode animCurveTL -n "pSphere2_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 70 0 123 0 240 0;
createNode animCurveTL -n "pSphere2_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 70 0 123 0 240 0;
createNode animCurveTA -n "pSphere2_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 70 0 123 0 240 0;
createNode animCurveTA -n "pSphere2_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 70 0 123 0 240 0;
createNode animCurveTA -n "pSphere2_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 70 0 123 0 240 0;
createNode animCurveTU -n "pSphere2_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 70 0 123 0.5 240 1;
createNode animCurveTU -n "pSphere2_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 70 0 123 0.5 240 1;
createNode animCurveTU -n "pSphere2_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 70 0 123 0.5 240 1;
createNode animCurveTL -n "pSphere4_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 104 0 124 0 186 0 240 0;
createNode animCurveTL -n "pSphere4_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 104 0 124 0 186 0 240 0;
createNode animCurveTL -n "pSphere4_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 104 0 124 0 186 0 240 0;
createNode animCurveTU -n "pSphere4_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 1 104 1 124 1 186 1 240 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTA -n "pSphere4_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 104 0 124 0 186 0 240 0;
createNode animCurveTA -n "pSphere4_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 104 0 124 0 186 0 240 0;
createNode animCurveTA -n "pSphere4_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 104 0 124 0 186 0 240 0;
createNode animCurveTU -n "pSphere4_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 9.9999999999999998e-013 104 9.9999999999999998e-013
		 124 0.5 186 0.8 240 1;
createNode animCurveTU -n "pSphere4_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 9.9999999999999998e-013 104 9.9999999999999998e-013
		 124 0.5 186 0.8 240 1;
createNode animCurveTU -n "pSphere4_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 9.9999999999999998e-013 104 9.9999999999999998e-013
		 124 0.5 186 0.8 240 1;
createNode animCurveTL -n "pSphere3_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 113 0 122 0 240 0;
createNode animCurveTL -n "pSphere3_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 113 0 122 0 240 0;
createNode animCurveTL -n "pSphere3_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 113 0 122 0 240 0;
createNode animCurveTU -n "pSphere3_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 113 1 122 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pSphere3_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 113 0 122 0 240 0;
createNode animCurveTA -n "pSphere3_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 113 0 122 0 240 0;
createNode animCurveTA -n "pSphere3_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 113 0 122 0 240 0;
createNode animCurveTU -n "pSphere3_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 113 9.9999999999999998e-013
		 122 0.4 240 1;
createNode animCurveTU -n "pSphere3_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 113 9.9999999999999998e-013
		 122 0.4 240 1;
createNode animCurveTU -n "pSphere3_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 113 9.9999999999999998e-013
		 122 0.4 240 1;
createNode animCurveTL -n "pSphere6_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 115 0 126 0 240 0;
createNode animCurveTL -n "pSphere6_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 115 0 126 0 240 0;
createNode animCurveTL -n "pSphere6_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 115 0 126 0 240 0;
createNode animCurveTU -n "pSphere6_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 115 1 126 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pSphere6_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 115 0 126 0 240 0;
createNode animCurveTA -n "pSphere6_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 115 0 126 0 240 0;
createNode animCurveTA -n "pSphere6_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 115 0 126 0 240 0;
createNode animCurveTU -n "pSphere6_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 115 9.9999999999999998e-013
		 126 0.4 240 1;
createNode animCurveTU -n "pSphere6_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 115 9.9999999999999998e-013
		 126 0.4 240 1;
createNode animCurveTU -n "pSphere6_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 115 9.9999999999999998e-013
		 126 0.4 240 1;
createNode animCurveTL -n "pSphere5_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 127 0 136 0 240 0;
createNode animCurveTL -n "pSphere5_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 127 0 136 0 240 0;
createNode animCurveTL -n "pSphere5_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 127 0 136 0 240 0;
createNode animCurveTU -n "pSphere5_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 127 1 136 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pSphere5_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 127 0 136 0 240 0;
createNode animCurveTA -n "pSphere5_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 127 0 136 0 240 0;
createNode animCurveTA -n "pSphere5_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 127 0 136 0 240 0;
createNode animCurveTU -n "pSphere5_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 127 9.9999999999999998e-013
		 136 0.4 240 1;
createNode animCurveTU -n "pSphere5_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 127 9.9999999999999998e-013
		 136 0.4 240 1;
createNode animCurveTU -n "pSphere5_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 127 9.9999999999999998e-013
		 136 0.4 240 1;
createNode animCurveTL -n "pSphere8_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 137 0 143 0 240 0;
createNode animCurveTL -n "pSphere8_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 137 0 143 0 240 0;
createNode animCurveTL -n "pSphere8_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 137 0 143 0 240 0;
createNode animCurveTU -n "pSphere8_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 137 1 143 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pSphere8_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 137 0 143 0 240 0;
createNode animCurveTA -n "pSphere8_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 137 0 143 0 240 0;
createNode animCurveTA -n "pSphere8_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 137 0 143 0 240 0;
createNode animCurveTU -n "pSphere8_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 137 9.9999999999999998e-013
		 143 0.5 240 1;
createNode animCurveTU -n "pSphere8_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 137 9.9999999999999998e-013
		 143 0.5 240 1;
createNode animCurveTU -n "pSphere8_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 137 9.9999999999999998e-013
		 143 0.5 240 1;
createNode animCurveTL -n "pSphere7_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 145 0 156 0 240 0;
createNode animCurveTL -n "pSphere7_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 145 0 156 0 240 0;
createNode animCurveTL -n "pSphere7_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 145 0 156 0 240 0;
createNode animCurveTU -n "pSphere7_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 145 1 156 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pSphere7_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 145 0 156 0 240 0;
createNode animCurveTA -n "pSphere7_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 145 0 156 0 240 0;
createNode animCurveTA -n "pSphere7_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 145 0 156 0 240 0;
createNode animCurveTU -n "pSphere7_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 145 9.9999999999999998e-013
		 156 0.5 240 1;
createNode animCurveTU -n "pSphere7_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 145 9.9999999999999998e-013
		 156 0.5 240 1;
createNode animCurveTU -n "pSphere7_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 145 9.9999999999999998e-013
		 156 0.5 240 1;
createNode animCurveTL -n "pSphere9_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 158 0 169 0 240 0;
createNode animCurveTL -n "pSphere9_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 158 0 169 0 240 0;
createNode animCurveTL -n "pSphere9_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 158 0 169 0 240 0;
createNode animCurveTU -n "pSphere9_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 158 1 169 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pSphere9_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 158 0 169 0 240 0;
createNode animCurveTA -n "pSphere9_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 158 0 169 0 240 0;
createNode animCurveTA -n "pSphere9_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 158 0 169 0 240 0;
createNode animCurveTU -n "pSphere9_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 158 9.9999999999999998e-013
		 169 0.5 240 1;
createNode animCurveTU -n "pSphere9_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 158 9.9999999999999998e-013
		 169 0.5 240 1;
createNode animCurveTU -n "pSphere9_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 158 9.9999999999999998e-013
		 169 0.5 240 1;
createNode animCurveTL -n "pSphere10_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 170 0 178 0 240 0;
createNode animCurveTL -n "pSphere10_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 170 0 178 0 240 0;
createNode animCurveTL -n "pSphere10_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 170 0 178 0 240 0;
createNode animCurveTU -n "pSphere10_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 170 1 178 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pSphere10_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 170 0 178 0 240 0;
createNode animCurveTA -n "pSphere10_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 170 0 178 0 240 0;
createNode animCurveTA -n "pSphere10_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 170 0 178 0 240 0;
createNode animCurveTU -n "pSphere10_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 170 9.9999999999999998e-013
		 178 0.6 240 1;
createNode animCurveTU -n "pSphere10_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 170 9.9999999999999998e-013
		 178 0.6 240 1;
createNode animCurveTU -n "pSphere10_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 170 9.9999999999999998e-013
		 178 0.6 240 1;
createNode animCurveTL -n "pSphere11_translateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 208 0 220 0 240 0;
createNode animCurveTL -n "pSphere11_translateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 208 0 220 0 240 0;
createNode animCurveTL -n "pSphere11_translateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 208 0 220 0 240 0;
createNode animCurveTU -n "pSphere11_visibility";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 208 1 220 1 240 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTA -n "pSphere11_rotateX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 208 0 220 0 240 0;
createNode animCurveTA -n "pSphere11_rotateY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 208 0 220 0 240 0;
createNode animCurveTA -n "pSphere11_rotateZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 208 0 220 0 240 0;
createNode animCurveTU -n "pSphere11_scaleX";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 208 9.9999999999999998e-013
		 220 0.6 240 1;
createNode animCurveTU -n "pSphere11_scaleY";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 208 9.9999999999999998e-013
		 220 0.6 240 1;
createNode animCurveTU -n "pSphere11_scaleZ";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 9.9999999999999998e-013 208 9.9999999999999998e-013
		 220 0.6 240 1;
select -ne :time1;
	setAttr ".o" 33;
	setAttr ".unw" 33;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "pSphere11_translateX.o" "pSphere11.tx";
connectAttr "pSphere11_translateY.o" "pSphere11.ty";
connectAttr "pSphere11_translateZ.o" "pSphere11.tz";
connectAttr "pSphere11_visibility.o" "pSphere11.v";
connectAttr "pSphere11_rotateX.o" "pSphere11.rx";
connectAttr "pSphere11_rotateY.o" "pSphere11.ry";
connectAttr "pSphere11_rotateZ.o" "pSphere11.rz";
connectAttr "pSphere11_scaleX.o" "pSphere11.sx";
connectAttr "pSphere11_scaleY.o" "pSphere11.sy";
connectAttr "pSphere11_scaleZ.o" "pSphere11.sz";
connectAttr "pSphere10_translateX.o" "pSphere10.tx";
connectAttr "pSphere10_translateY.o" "pSphere10.ty";
connectAttr "pSphere10_translateZ.o" "pSphere10.tz";
connectAttr "pSphere10_visibility.o" "pSphere10.v";
connectAttr "pSphere10_rotateX.o" "pSphere10.rx";
connectAttr "pSphere10_rotateY.o" "pSphere10.ry";
connectAttr "pSphere10_rotateZ.o" "pSphere10.rz";
connectAttr "pSphere10_scaleX.o" "pSphere10.sx";
connectAttr "pSphere10_scaleY.o" "pSphere10.sy";
connectAttr "pSphere10_scaleZ.o" "pSphere10.sz";
connectAttr "pSphere9_translateX.o" "pSphere9.tx";
connectAttr "pSphere9_translateY.o" "pSphere9.ty";
connectAttr "pSphere9_translateZ.o" "pSphere9.tz";
connectAttr "pSphere9_visibility.o" "pSphere9.v";
connectAttr "pSphere9_rotateX.o" "pSphere9.rx";
connectAttr "pSphere9_rotateY.o" "pSphere9.ry";
connectAttr "pSphere9_rotateZ.o" "pSphere9.rz";
connectAttr "pSphere9_scaleX.o" "pSphere9.sx";
connectAttr "pSphere9_scaleY.o" "pSphere9.sy";
connectAttr "pSphere9_scaleZ.o" "pSphere9.sz";
connectAttr "pSphere8_translateX.o" "pSphere8.tx";
connectAttr "pSphere8_translateY.o" "pSphere8.ty";
connectAttr "pSphere8_translateZ.o" "pSphere8.tz";
connectAttr "pSphere8_visibility.o" "pSphere8.v";
connectAttr "pSphere8_rotateX.o" "pSphere8.rx";
connectAttr "pSphere8_rotateY.o" "pSphere8.ry";
connectAttr "pSphere8_rotateZ.o" "pSphere8.rz";
connectAttr "pSphere8_scaleX.o" "pSphere8.sx";
connectAttr "pSphere8_scaleY.o" "pSphere8.sy";
connectAttr "pSphere8_scaleZ.o" "pSphere8.sz";
connectAttr "pSphere7_translateX.o" "pSphere7.tx";
connectAttr "pSphere7_translateY.o" "pSphere7.ty";
connectAttr "pSphere7_translateZ.o" "pSphere7.tz";
connectAttr "pSphere7_visibility.o" "pSphere7.v";
connectAttr "pSphere7_rotateX.o" "pSphere7.rx";
connectAttr "pSphere7_rotateY.o" "pSphere7.ry";
connectAttr "pSphere7_rotateZ.o" "pSphere7.rz";
connectAttr "pSphere7_scaleX.o" "pSphere7.sx";
connectAttr "pSphere7_scaleY.o" "pSphere7.sy";
connectAttr "pSphere7_scaleZ.o" "pSphere7.sz";
connectAttr "pSphere6_translateX.o" "pSphere6.tx";
connectAttr "pSphere6_translateY.o" "pSphere6.ty";
connectAttr "pSphere6_translateZ.o" "pSphere6.tz";
connectAttr "pSphere6_visibility.o" "pSphere6.v";
connectAttr "pSphere6_rotateX.o" "pSphere6.rx";
connectAttr "pSphere6_rotateY.o" "pSphere6.ry";
connectAttr "pSphere6_rotateZ.o" "pSphere6.rz";
connectAttr "pSphere6_scaleX.o" "pSphere6.sx";
connectAttr "pSphere6_scaleY.o" "pSphere6.sy";
connectAttr "pSphere6_scaleZ.o" "pSphere6.sz";
connectAttr "pSphere5_translateX.o" "pSphere5.tx";
connectAttr "pSphere5_translateY.o" "pSphere5.ty";
connectAttr "pSphere5_translateZ.o" "pSphere5.tz";
connectAttr "pSphere5_visibility.o" "pSphere5.v";
connectAttr "pSphere5_rotateX.o" "pSphere5.rx";
connectAttr "pSphere5_rotateY.o" "pSphere5.ry";
connectAttr "pSphere5_rotateZ.o" "pSphere5.rz";
connectAttr "pSphere5_scaleX.o" "pSphere5.sx";
connectAttr "pSphere5_scaleY.o" "pSphere5.sy";
connectAttr "pSphere5_scaleZ.o" "pSphere5.sz";
connectAttr "pSphere4_translateX.o" "pSphere4.tx";
connectAttr "pSphere4_translateY.o" "pSphere4.ty";
connectAttr "pSphere4_translateZ.o" "pSphere4.tz";
connectAttr "pSphere4_visibility.o" "pSphere4.v";
connectAttr "pSphere4_rotateX.o" "pSphere4.rx";
connectAttr "pSphere4_rotateY.o" "pSphere4.ry";
connectAttr "pSphere4_rotateZ.o" "pSphere4.rz";
connectAttr "pSphere4_scaleX.o" "pSphere4.sx";
connectAttr "pSphere4_scaleY.o" "pSphere4.sy";
connectAttr "pSphere4_scaleZ.o" "pSphere4.sz";
connectAttr "pSphere3_translateX.o" "pSphere3.tx";
connectAttr "pSphere3_translateY.o" "pSphere3.ty";
connectAttr "pSphere3_translateZ.o" "pSphere3.tz";
connectAttr "pSphere3_visibility.o" "pSphere3.v";
connectAttr "pSphere3_rotateX.o" "pSphere3.rx";
connectAttr "pSphere3_rotateY.o" "pSphere3.ry";
connectAttr "pSphere3_rotateZ.o" "pSphere3.rz";
connectAttr "pSphere3_scaleX.o" "pSphere3.sx";
connectAttr "pSphere3_scaleY.o" "pSphere3.sy";
connectAttr "pSphere3_scaleZ.o" "pSphere3.sz";
connectAttr "pSphere2_translateX.o" "pSphere2.tx";
connectAttr "pSphere2_translateY.o" "pSphere2.ty";
connectAttr "pSphere2_translateZ.o" "pSphere2.tz";
connectAttr "pSphere2_visibility.o" "pSphere2.v";
connectAttr "pSphere2_rotateX.o" "pSphere2.rx";
connectAttr "pSphere2_rotateY.o" "pSphere2.ry";
connectAttr "pSphere2_rotateZ.o" "pSphere2.rz";
connectAttr "pSphere2_scaleX.o" "pSphere2.sx";
connectAttr "pSphere2_scaleY.o" "pSphere2.sy";
connectAttr "pSphere2_scaleZ.o" "pSphere2.sz";
connectAttr "pSphere1_translateX.o" "pSphere1.tx";
connectAttr "pSphere1_translateY.o" "pSphere1.ty";
connectAttr "pSphere1_translateZ.o" "pSphere1.tz";
connectAttr "pSphere1_visibility.o" "pSphere1.v";
connectAttr "pSphere1_rotateX.o" "pSphere1.rx";
connectAttr "pSphere1_rotateY.o" "pSphere1.ry";
connectAttr "pSphere1_rotateZ.o" "pSphere1.rz";
connectAttr "pSphere1_scaleX.o" "pSphere1.sx";
connectAttr "pSphere1_scaleY.o" "pSphere1.sy";
connectAttr "pSphere1_scaleZ.o" "pSphere1.sz";
connectAttr "polySoftEdge1.out" "pCylinderShape1.i";
connectAttr "placement_ctrl_Grow.o" "placement_ctrl.Grow";
connectAttr "placement_ctrl.Grow" "vine_geo.sy";
connectAttr "vine_layer.di" "vine_geo.do";
connectAttr "wire1GroupId.id" "vine_geoShape.iog.og[0].gid";
connectAttr "wire1Set.mwc" "vine_geoShape.iog.og[0].gco";
connectAttr "groupId2.id" "vine_geoShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "vine_geoShape.iog.og[1].gco";
connectAttr "wire1.og[0]" "vine_geoShape.i";
connectAttr "tweak1.vl[0].vt[0]" "vine_geoShape.twl";
connectAttr "polySplitRing1.out" "vine_geoShapeOrig.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":mentalrayGlobals.msg" ":mentalrayItemsList.glb";
connectAttr ":miDefaultOptions.msg" ":mentalrayItemsList.opt" -na;
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayItemsList.fb" -na;
connectAttr ":miDefaultOptions.msg" ":mentalrayGlobals.opt";
connectAttr ":miDefaultFramebuffer.msg" ":mentalrayGlobals.fb";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "vine_geoShape.wm" "polySplitRing1.mp";
connectAttr "clamp1.opg" "polySplitRing1.div";
connectAttr "condition1.ocg" "clamp1.ipg";
connectAttr "wire1GroupParts.og" "wire1.ip[0].ig";
connectAttr "wire1GroupId.id" "wire1.ip[0].gi";
connectAttr "vine_crvBaseWireShape.ws" "wire1.bw[0]";
connectAttr "vine_crvShape.ws" "wire1.dw[0]";
connectAttr "groupParts2.og" "tweak1.ip[0].ig";
connectAttr "groupId2.id" "tweak1.ip[0].gi";
connectAttr "wire1GroupId.msg" "wire1Set.gn" -na;
connectAttr "vine_geoShape.iog.og[0]" "wire1Set.dsm" -na;
connectAttr "wire1.msg" "wire1Set.ub[0]";
connectAttr "tweak1.og[0]" "wire1GroupParts.ig";
connectAttr "wire1GroupId.id" "wire1GroupParts.gi";
connectAttr "groupId2.msg" "tweakSet1.gn" -na;
connectAttr "vine_geoShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "vine_geoShapeOrig.w" "groupParts2.ig";
connectAttr "groupId2.id" "groupParts2.gi";
connectAttr "placement_ctrl.AutoDivide" "condition1.ft";
connectAttr "vine_geo.sy" "condition1.cfg";
connectAttr "placement_ctrl.Divisions" "condition1.ctg";
connectAttr "layerManager.dli[1]" "vine_layer.id";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyCylinder1.out" "polyTweak1.ip";
connectAttr "polyTweak2.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace2.mp";
connectAttr "polyExtrudeFace1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace3.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySoftEdge1.ip";
connectAttr "pCylinderShape1.wm" "polySoftEdge1.mp";
connectAttr "polyExtrudeFace3.out" "polyTweak4.ip";
connectAttr "vine_geoShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape10.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape11.iog" ":initialShadingGroup.dsm" -na;
connectAttr "clamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":perspShape.msg" ":defaultRenderGlobals.sc";
// End of vine_anim_2.ma
