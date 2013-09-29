//Maya ASCII 2014 scene
//Name: vine_anim_bake_test.ma
//Last modified: Sat, Sep 28, 2013 08:02:04 PM
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
	setAttr ".t" -type "double3" 17.081053952329579 14.73867344451555 -15.312729557899889 ;
	setAttr ".r" -type "double3" -23.138352729417402 -231.40000000000015 0 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 27.156390787245311;
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
	setAttr ".rp" -type "double3" -12.785464219414624 6.5157586384245585 1.0125621882763085 ;
	setAttr ".sp" -type "double3" -12.785464219414624 6.5157586384245585 1.0125621882763085 ;
createNode mesh -n "pSphereShape11" -p "pSphere11";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape11Orig" -p "pSphere11";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape10Orig" -p "pSphere10";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr ".rp" -type "double3" -9.3247121239547024 7.3576151605620446 2.1120659857759714 ;
	setAttr ".sp" -type "double3" -9.3247121239547024 7.3576151605620446 2.1120659857759714 ;
createNode mesh -n "pSphereShape9" -p "pSphere9";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape9Orig" -p "pSphere9";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape8Orig" -p "pSphere8";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr ".rp" -type "double3" -7.4534528464256766 6.2144307894681257 0.090985720867382991 ;
	setAttr ".sp" -type "double3" -7.4534528464256766 6.2144307894681257 0.090985720867382991 ;
createNode mesh -n "pSphereShape7" -p "pSphere7";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape7Orig" -p "pSphere7";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr ".rp" -type "double3" -3.8385544535219762 6.4785927004933868 2.2102117174527862 ;
	setAttr ".sp" -type "double3" -3.8385544535219762 6.4785927004933868 2.2102117174527862 ;
createNode mesh -n "pSphereShape6" -p "pSphere6";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape6Orig" -p "pSphere6";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape5Orig" -p "pSphere5";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape4Orig" -p "pSphere4";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape3Orig" -p "pSphere3";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr ".rp" -type "double3" -0.47923680687647058 5.9209458201394201 1.0935955170388787 ;
	setAttr ".sp" -type "double3" -0.47923680687647058 5.9209458201394201 1.0935955170388787 ;
createNode mesh -n "pSphereShape2" -p "pSphere2";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "pSphereShape2Orig" -p "pSphere2";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
createNode transform -n "pSphere1" -p "vine";
	setAttr ".rp" -type "double3" 0.11121850532181546 4.8489147780487789 -0.15663277947624626 ;
	setAttr ".sp" -type "double3" 0.11121850532181546 4.8489147780487789 -0.15663277947624626 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	setAttr -k off ".v";
	setAttr -s 6 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pSphereShape1Orig" -p "pSphere1";
	setAttr -k off ".v";
	setAttr ".io" yes;
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
	setAttr -s 14 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode mesh -n "pCylinderShape1Orig" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "Root" -p "vine";
createNode transform -n "placement_ctrl" -p "Root";
	addAttr -ci true -sn "Grow" -ln "Grow" -dv 1 -min 0 -at "double";
	addAttr -ci true -sn "AutoDivide" -ln "AutoDivide" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "Divisions" -ln "Divisions" -dv 1 -min 1 -max 1000 -at "long";
	setAttr ".s" -type "double3" 1 0.99443430643888076 1 ;
	setAttr -k on ".Grow";
	setAttr -cb on ".AutoDivide";
	setAttr -cb on ".Divisions" 60;
createNode nurbsCurve -n "placement_ctrlShape" -p "placement_ctrl";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 8 2 no 3
		13 -2 -1 0 1 2 3 4 5 6 7 8 9 10
		11
		0.78361162489122493 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		-1.1081941875543879 1.9663354616187859e-032 -3.2112695072372299e-016
		-0.78361162489122449 -4.7982373409884701e-017 0.78361162489122405
		-3.3392053635905195e-016 -6.7857323231109146e-017 1.1081941875543879
		0.78361162489122382 -4.7982373409884725e-017 0.78361162489122427
		1.1081941875543879 -3.6446300679047916e-032 5.9521325992805861e-016
		0.78361162489122493 4.7982373409884682e-017 -0.78361162489122382
		-1.2643170607829326e-016 6.7857323231109134e-017 -1.1081941875543879
		-0.78361162489122427 4.7982373409884713e-017 -0.78361162489122427
		;
createNode transform -n "Geo" -p "placement_ctrl";
createNode transform -n "vine_geo" -p "Geo";
createNode mesh -n "vine_geoShape" -p "vine_geo";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode mesh -n "vine_geoShapeOrig" -p "vine_geo";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 576 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.61048543 0.04576458 0.5 1.4901161e-008
		 0.38951457 0.04576458 0.34375 0.15625 0.38951457 0.26673543 0.5 0.3125 0.61048543
		 0.26673543 0.65625 0.15625 0.375 0.3125 0.40625 0.3125 0.4375 0.3125 0.46875 0.3125
		 0.5 0.3125 0.53125 0.3125 0.5625 0.3125 0.59375 0.3125 0.625 0.3125 0.375 0.68843985
		 0.40625 0.68843985 0.4375 0.68843985 0.46875 0.68843985 0.5 0.68843985 0.53125 0.68843985
		 0.5625 0.68843985 0.59375 0.68843985 0.625 0.68843985 0.61048543 0.73326457 0.5 0.6875
		 0.38951457 0.73326457 0.34375 0.84375 0.38951457 0.95423543 0.5 1 0.61048543 0.95423543
		 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.59375 0.6822769 0.5625 0.6822769
		 0.53125 0.6822769 0.5 0.6822769 0.46875 0.6822769 0.4375 0.6822769 0.40625 0.6822769
		 0.625 0.6822769 0.375 0.6822769 0.59375 0.67611396 0.5625 0.67611396 0.53125 0.67611396
		 0.5 0.67611396 0.46875 0.67611396 0.4375 0.67611396 0.40625 0.67611396 0.625 0.67611396
		 0.375 0.67611396 0.59375 0.66995096 0.5625 0.66995096 0.53125 0.66995096 0.5 0.66995096
		 0.46875 0.66995096 0.4375 0.66995096 0.40625 0.66995096 0.625 0.66995096 0.375 0.66995096
		 0.59375 0.66378802 0.5625 0.66378802 0.53125 0.66378802 0.5 0.66378802 0.46875 0.66378802
		 0.4375 0.66378802 0.40625 0.66378802 0.625 0.66378802 0.375 0.66378802 0.59375 0.65762508
		 0.5625 0.65762508 0.53125 0.65762508 0.5 0.65762508 0.46875 0.65762508 0.4375 0.65762508
		 0.40625 0.65762508 0.625 0.65762508 0.375 0.65762508 0.59375 0.65146214 0.5625 0.65146214
		 0.53125 0.65146214 0.5 0.65146214 0.46875 0.65146214 0.4375 0.65146214 0.40625 0.65146214
		 0.625 0.65146214 0.375 0.65146214 0.59375 0.6452992 0.5625 0.6452992 0.53125 0.6452992
		 0.5 0.6452992 0.46875 0.6452992 0.4375 0.6452992 0.40625 0.6452992 0.625 0.6452992
		 0.375 0.6452992 0.59375 0.63913625 0.5625 0.63913625 0.53125 0.63913625 0.5 0.63913625
		 0.46875 0.63913625 0.4375 0.63913625 0.40625 0.63913625 0.625 0.63913625 0.375 0.63913625
		 0.59375 0.63297331 0.5625 0.63297331 0.53125 0.63297331 0.5 0.63297331 0.46875 0.63297331
		 0.4375 0.63297331 0.40625 0.63297331 0.625 0.63297331 0.375 0.63297331 0.59375 0.62681037
		 0.5625 0.62681037 0.53125 0.62681037 0.5 0.62681037 0.46875 0.62681037 0.4375 0.62681037
		 0.40625 0.62681037 0.625 0.62681037 0.375 0.62681037 0.59375 0.62064743 0.5625 0.62064743
		 0.53125 0.62064743 0.5 0.62064743 0.46875 0.62064743 0.4375 0.62064743 0.40625 0.62064743
		 0.625 0.62064743 0.375 0.62064743 0.59375 0.61448443 0.5625 0.61448443 0.53125 0.61448443
		 0.5 0.61448443 0.46875 0.61448443 0.4375 0.61448443 0.40625 0.61448443 0.625 0.61448443
		 0.375 0.61448443 0.59375 0.60832143 0.5625 0.60832143 0.53125 0.60832143 0.5 0.60832143
		 0.46875 0.60832143 0.4375 0.60832143 0.40625 0.60832143 0.625 0.60832143 0.375 0.60832143
		 0.59375 0.60215849 0.5625 0.60215849 0.53125 0.60215849 0.5 0.60215849 0.46875 0.60215849
		 0.4375 0.60215849 0.40625 0.60215849 0.625 0.60215849 0.375 0.60215849 0.59375 0.59599555
		 0.5625 0.59599555 0.53125 0.59599555 0.5 0.59599555 0.46875 0.59599555 0.4375 0.59599555
		 0.40625 0.59599555 0.625 0.59599555 0.375 0.59599555 0.59375 0.5898326 0.5625 0.5898326
		 0.53125 0.5898326 0.5 0.5898326 0.46875 0.5898326 0.4375 0.5898326 0.40625 0.5898326
		 0.625 0.5898326 0.375 0.5898326 0.59375 0.5836696 0.5625 0.5836696 0.53125 0.5836696
		 0.5 0.5836696 0.46875 0.5836696 0.4375 0.5836696 0.40625 0.5836696 0.625 0.5836696
		 0.375 0.5836696 0.59375 0.57750666 0.5625 0.57750666 0.53125 0.57750666 0.5 0.57750666
		 0.46875 0.57750666 0.4375 0.57750666 0.40625 0.57750666 0.625 0.57750666 0.375 0.57750666
		 0.59375 0.57134366 0.5625 0.57134366 0.53125 0.57134366 0.5 0.57134366 0.46875 0.57134366
		 0.4375 0.57134366 0.40625 0.57134366 0.625 0.57134366 0.375 0.57134366 0.59375 0.56518072
		 0.5625 0.56518072 0.53125 0.56518072 0.5 0.56518072 0.46875 0.56518072 0.4375 0.56518072
		 0.40625 0.56518072 0.625 0.56518072 0.375 0.56518072 0.59375 0.55901778 0.5625 0.55901778
		 0.53125 0.55901778 0.5 0.55901778 0.46875 0.55901778 0.4375 0.55901778 0.40625 0.55901778
		 0.625 0.55901778 0.375 0.55901778 0.59375 0.55285484 0.5625 0.55285484 0.53125 0.55285484
		 0.5 0.55285484 0.46875 0.55285484 0.4375 0.55285484 0.40625 0.55285484 0.625 0.55285484
		 0.375 0.55285484 0.59375 0.54669189 0.5625 0.54669189 0.53125 0.54669189 0.5 0.54669189
		 0.46875 0.54669189 0.4375 0.54669189 0.40625 0.54669189 0.625 0.54669189 0.375 0.54669189
		 0.59375 0.54052895 0.5625 0.54052895 0.53125 0.54052895 0.5 0.54052895 0.46875 0.54052895
		 0.4375 0.54052895 0.40625 0.54052895;
	setAttr ".uvst[0].uvsp[250:499]" 0.625 0.54052895 0.375 0.54052895 0.59375
		 0.53436601 0.5625 0.53436601 0.53125 0.53436601 0.5 0.53436601 0.46875 0.53436601
		 0.4375 0.53436601 0.40625 0.53436601 0.625 0.53436601 0.375 0.53436601 0.59375 0.52820307
		 0.5625 0.52820307 0.53125 0.52820307 0.5 0.52820307 0.46875 0.52820307 0.4375 0.52820307
		 0.40625 0.52820307 0.625 0.52820307 0.375 0.52820307 0.59375 0.52204013 0.5625 0.52204013
		 0.53125 0.52204013 0.5 0.52204013 0.46875 0.52204013 0.4375 0.52204013 0.40625 0.52204013
		 0.625 0.52204013 0.375 0.52204013 0.59375 0.51587713 0.5625 0.51587713 0.53125 0.51587713
		 0.5 0.51587713 0.46875 0.51587713 0.4375 0.51587713 0.40625 0.51587713 0.625 0.51587713
		 0.375 0.51587713 0.59375 0.50971419 0.5625 0.50971419 0.53125 0.50971419 0.5 0.50971419
		 0.46875 0.50971419 0.4375 0.50971419 0.40625 0.50971419 0.625 0.50971419 0.375 0.50971419
		 0.59375 0.50355124 0.5625 0.50355124 0.53125 0.50355124 0.5 0.50355124 0.46875 0.50355124
		 0.4375 0.50355124 0.40625 0.50355124 0.625 0.50355124 0.375 0.50355124 0.59375 0.4973883
		 0.5625 0.4973883 0.53125 0.4973883 0.5 0.4973883 0.46875 0.4973883 0.4375 0.4973883
		 0.40625 0.4973883 0.625 0.4973883 0.375 0.4973883 0.59375 0.49122536 0.5625 0.49122536
		 0.53125 0.49122536 0.5 0.49122536 0.46875 0.49122536 0.4375 0.49122536 0.40625 0.49122536
		 0.625 0.49122536 0.375 0.49122536 0.59375 0.48506242 0.5625 0.48506242 0.53125 0.48506242
		 0.5 0.48506242 0.46875 0.48506242 0.4375 0.48506242 0.40625 0.48506242 0.625 0.48506242
		 0.375 0.48506242 0.59375 0.47889948 0.5625 0.47889948 0.53125 0.47889948 0.5 0.47889948
		 0.46875 0.47889948 0.4375 0.47889948 0.40625 0.47889948 0.625 0.47889948 0.375 0.47889948
		 0.59375 0.47273654 0.5625 0.47273654 0.53125 0.47273654 0.5 0.47273654 0.46875 0.47273654
		 0.4375 0.47273654 0.40625 0.47273654 0.625 0.47273654 0.375 0.47273654 0.59375 0.4665736
		 0.5625 0.4665736 0.53125 0.4665736 0.5 0.4665736 0.46875 0.4665736 0.4375 0.4665736
		 0.40625 0.4665736 0.625 0.4665736 0.375 0.4665736 0.59375 0.46041065 0.5625 0.46041065
		 0.53125 0.46041065 0.5 0.46041065 0.46875 0.46041065 0.4375 0.46041065 0.40625 0.46041065
		 0.625 0.46041065 0.375 0.46041065 0.59375 0.45424771 0.5625 0.45424771 0.53125 0.45424771
		 0.5 0.45424771 0.46875 0.45424771 0.4375 0.45424771 0.40625 0.45424771 0.625 0.45424771
		 0.375 0.45424771 0.59375 0.44808477 0.5625 0.44808477 0.53125 0.44808477 0.5 0.44808477
		 0.46875 0.44808477 0.4375 0.44808477 0.40625 0.44808477 0.625 0.44808477 0.375 0.44808477
		 0.59375 0.44192183 0.5625 0.44192183 0.53125 0.44192183 0.5 0.44192183 0.46875 0.44192183
		 0.4375 0.44192183 0.40625 0.44192183 0.625 0.44192183 0.375 0.44192183 0.59375 0.43575889
		 0.5625 0.43575889 0.53125 0.43575889 0.5 0.43575889 0.46875 0.43575889 0.4375 0.43575889
		 0.40625 0.43575889 0.625 0.43575889 0.375 0.43575889 0.59375 0.42959595 0.5625 0.42959595
		 0.53125 0.42959595 0.5 0.42959595 0.46875 0.42959595 0.4375 0.42959595 0.40625 0.42959595
		 0.625 0.42959595 0.375 0.42959595 0.59375 0.42343301 0.5625 0.42343301 0.53125 0.42343301
		 0.5 0.42343301 0.46875 0.42343301 0.4375 0.42343301 0.40625 0.42343301 0.625 0.42343301
		 0.375 0.42343301 0.59375 0.41727006 0.5625 0.41727006 0.53125 0.41727006 0.5 0.41727006
		 0.46875 0.41727006 0.4375 0.41727006 0.40625 0.41727006 0.625 0.41727006 0.375 0.41727006
		 0.59375 0.41110712 0.5625 0.41110712 0.53125 0.41110712 0.5 0.41110712 0.46875 0.41110712
		 0.4375 0.41110712 0.40625 0.41110712 0.625 0.41110712 0.375 0.41110712 0.59375 0.40494418
		 0.5625 0.40494418 0.53125 0.40494418 0.5 0.40494418 0.46875 0.40494418 0.4375 0.40494418
		 0.40625 0.40494418 0.625 0.40494418 0.375 0.40494418 0.59375 0.39878124 0.5625 0.39878124
		 0.53125 0.39878124 0.5 0.39878124 0.46875 0.39878124 0.4375 0.39878124 0.40625 0.39878124
		 0.625 0.39878124 0.375 0.39878124 0.59375 0.3926183 0.5625 0.3926183 0.53125 0.3926183
		 0.5 0.3926183 0.46875 0.3926183 0.4375 0.3926183 0.40625 0.3926183 0.625 0.3926183
		 0.375 0.3926183 0.59375 0.38645536 0.5625 0.38645536 0.53125 0.38645536 0.5 0.38645536
		 0.46875 0.38645536 0.4375 0.38645536 0.40625 0.38645536 0.625 0.38645536 0.375 0.38645536
		 0.59375 0.38029242 0.5625 0.38029242 0.53125 0.38029242 0.5 0.38029242 0.46875 0.38029242
		 0.4375 0.38029242 0.40625 0.38029242 0.625 0.38029242 0.375 0.38029242 0.59375 0.37412944
		 0.5625 0.37412944 0.53125 0.37412944 0.5 0.37412944 0.46875 0.37412944 0.4375 0.37412944
		 0.40625 0.37412944 0.625 0.37412944 0.375 0.37412944 0.59375 0.3679665 0.5625 0.3679665
		 0.53125 0.3679665 0.5 0.3679665 0.46875 0.3679665;
	setAttr ".uvst[0].uvsp[500:575]" 0.4375 0.3679665 0.40625 0.3679665 0.625 0.3679665
		 0.375 0.3679665 0.59375 0.36180356 0.5625 0.36180356 0.53125 0.36180356 0.5 0.36180356
		 0.46875 0.36180356 0.4375 0.36180356 0.40625 0.36180356 0.625 0.36180356 0.375 0.36180356
		 0.59375 0.35564062 0.5625 0.35564062 0.53125 0.35564062 0.5 0.35564062 0.46875 0.35564062
		 0.4375 0.35564062 0.40625 0.35564062 0.625 0.35564062 0.375 0.35564062 0.59375 0.34947768
		 0.5625 0.34947768 0.53125 0.34947768 0.5 0.34947768 0.46875 0.34947768 0.4375 0.34947768
		 0.40625 0.34947768 0.625 0.34947768 0.375 0.34947768 0.59375 0.34331474 0.5625 0.34331474
		 0.53125 0.34331474 0.5 0.34331474 0.46875 0.34331474 0.4375 0.34331474 0.40625 0.34331474
		 0.625 0.34331474 0.375 0.34331474 0.59375 0.3371518 0.5625 0.3371518 0.53125 0.3371518
		 0.5 0.3371518 0.46875 0.3371518 0.4375 0.3371518 0.40625 0.3371518 0.625 0.3371518
		 0.375 0.3371518 0.59375 0.33098885 0.5625 0.33098885 0.53125 0.33098885 0.5 0.33098885
		 0.46875 0.33098885 0.4375 0.33098885 0.40625 0.33098885 0.625 0.33098885 0.375 0.33098885
		 0.59375 0.32482591 0.5625 0.32482591 0.53125 0.32482591 0.5 0.32482591 0.46875 0.32482591
		 0.4375 0.32482591 0.40625 0.32482591 0.625 0.32482591 0.375 0.32482591 0.59375 0.31866294
		 0.5625 0.31866294 0.53125 0.31866294 0.5 0.31866294 0.46875 0.31866294 0.4375 0.31866294
		 0.40625 0.31866294 0.625 0.31866294 0.375 0.31866294;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 498 ".vt";
	setAttr ".vt[0:165]"  0.26484758 0.022978663 -0.26484758 -1.3322676e-015 0.022978663 -0.37455106
		 -0.26484758 0.022978663 -0.26484758 -0.37455106 0.022978663 0 -0.26484758 0.022978663 0.26484758
		 -1.3322676e-015 0.022978663 0.37455106 0.26484761 0.022978663 0.26484761 0.37455109 0.022978663 0
		 0.26484758 0.90185082 -0.26484758 -1.3322676e-015 0.90185082 -0.37455106 -0.26484758 0.90185082 -0.26484758
		 -0.37455106 0.90185082 0 -0.26484758 0.90185082 0.26484758 -1.3322676e-015 0.90185082 0.37455106
		 0.26484761 0.90185082 0.26484761 0.37455109 0.90185082 0 -1.3322676e-015 0.022978663 0
		 -1.3322676e-015 0.90185082 0 0.3771365 0.88744313 -1.2509899e-010 0.26667577 0.88744313 0.26667577
		 -1.6679998e-010 0.88744313 0.37713647 -0.26667574 0.88744313 0.26667574 -0.37713647 0.88744313 0
		 -0.26667574 0.88744313 -0.26667574 -1.3322676e-015 0.88744313 -0.37713647 0.26667574 0.88744313 -0.26667574
		 0.37988842 0.87303537 -2.5825497e-010 0.26862165 0.87303537 0.26862165 -3.4434128e-010 0.87303537 0.37988836
		 -0.26862162 0.87303537 0.26862162 -0.37988836 0.87303537 0 -0.26862162 0.87303537 -0.26862162
		 -1.3322676e-015 0.87303537 -0.37988836 0.26862162 0.87303537 -0.26862162 0.38283172 0.85862762 -4.0067213e-010
		 0.2707029 0.85862762 0.2707029 -5.3423083e-010 0.85862762 0.38283169 -0.27070287 0.85862762 0.27070287
		 -0.38283169 0.85862762 0 -0.27070287 0.85862762 -0.27070287 -1.3322676e-015 0.85862762 -0.38283169
		 0.27070287 0.85862762 -0.27070287 0.38599131 0.84421992 -5.5355465e-010 0.27293706 0.84421992 0.27293706
		 -7.3807421e-010 0.84421992 0.38599128 -0.27293703 0.84421992 0.27293703 -0.38599128 0.84421992 0
		 -0.27293703 0.84421992 -0.27293703 -1.3322676e-015 0.84421992 -0.38599128 0.27293703 0.84421992 -0.27293703
		 0.38939208 0.82981217 -7.181068e-010 0.27534178 0.82981217 0.27534178 -9.574771e-010 0.82981217 0.38939205
		 -0.27534175 0.82981217 0.27534175 -0.38939205 0.82981217 0 -0.27534175 0.82981217 -0.27534175
		 -1.3322676e-015 0.82981217 -0.38939205 0.27534175 0.82981217 -0.27534175 0.39305893 0.81540442 -8.9553281e-010
		 0.27793461 0.81540442 0.27793461 -1.1940451e-009 0.81540442 0.3930589 -0.27793458 0.81540442 0.27793458
		 -0.3930589 0.81540442 0 -0.27793458 0.81540442 -0.27793458 -1.3322676e-015 0.81540442 -0.3930589
		 0.27793458 0.81540442 -0.27793458 0.3970167 0.80099666 -1.0870368e-009 0.2807332 0.80099666 0.2807332
		 -1.4493836e-009 0.80099666 0.39701667 -0.28073317 0.80099666 0.28073317 -0.39701667 0.80099666 0
		 -0.28073317 0.80099666 -0.28073317 -1.3322676e-015 0.80099666 -0.39701667 0.28073317 0.80099666 -0.28073317
		 0.4012903 0.78658891 -1.2938228e-009 0.28375509 0.78658891 0.28375509 -1.7250984e-009 0.78658891 0.40129027
		 -0.28375506 0.78658891 0.28375506 -0.40129027 0.78658891 0 -0.28375506 0.78658891 -0.28375506
		 -1.3322676e-015 0.78658891 -0.40129027 0.28375506 0.78658891 -0.28375506 0.40590465 0.77218115 -1.5170956e-009
		 0.28701791 0.77218115 0.28701791 -2.0227955e-009 0.77218115 0.40590462 -0.28701788 0.77218115 0.28701788
		 -0.40590462 0.77218115 0 -0.28701788 0.77218115 -0.28701788 -1.3322676e-015 0.77218115 -0.40590462
		 0.28701788 0.77218115 -0.28701788 0.41088459 0.7577734 -1.7580587e-009 0.29053926 0.7577734 0.29053926
		 -2.3440796e-009 0.7577734 0.41088456 -0.29053923 0.7577734 0.29053923 -0.41088456 0.7577734 0
		 -0.29053923 0.7577734 -0.29053923 -1.3322676e-015 0.7577734 -0.41088456 0.29053923 0.7577734 -0.29053923
		 0.41625506 0.74336565 -2.0179169e-009 0.29433677 0.74336565 0.29433677 -2.6905571e-009 0.74336565 0.416255
		 -0.29433674 0.74336565 0.29433674 -0.416255 0.74336565 0 -0.29433674 0.74336565 -0.29433674
		 -1.3322676e-015 0.74336565 -0.416255 0.29433674 0.74336565 -0.29433674 0.42204088 0.72895789 -2.2978739e-009
		 0.29842794 0.72895789 0.29842794 -3.0638332e-009 0.72895789 0.42204085 -0.29842794 0.72895789 0.29842794
		 -0.42204085 0.72895789 0 -0.29842794 0.72895789 -0.29842794 -1.3322676e-015 0.72895789 -0.42204085
		 0.29842791 0.72895789 -0.29842794 0.42826697 0.7145502 -2.5991342e-009 0.30283046 0.7145502 0.30283046
		 -3.4655137e-009 0.7145502 0.42826694 -0.30283043 0.7145502 0.30283043 -0.42826694 0.7145502 0
		 -0.30283043 0.7145502 -0.30283043 -1.3322676e-015 0.7145502 -0.42826694 0.30283043 0.7145502 -0.30283043
		 0.43495822 0.7001425 -2.9229019e-009 0.3075619 0.7001425 0.3075619 -3.8972039e-009 0.7001425 0.43495819
		 -0.30756187 0.7001425 0.30756187 -0.43495819 0.7001425 0 -0.30756187 0.7001425 -0.30756187
		 -1.3322676e-015 0.7001425 -0.43495819 0.30756187 0.7001425 -0.30756187 0.44213951 0.68573481 -3.2703815e-009
		 0.31263983 0.68573481 0.31263986 -4.3605097e-009 0.68573481 0.44213951 -0.31263983 0.68573481 0.31263983
		 -0.44213951 0.68573481 0 -0.31263983 0.68573481 -0.31263983 -1.3322676e-015 0.68573481 -0.44213951
		 0.3126398 0.68573481 -0.31263983 0.44983575 0.67132705 -3.6427765e-009 0.31808192 0.67132705 0.31808195
		 -4.8570366e-009 0.67132705 0.44983572 -0.31808189 0.67132705 0.31808189 -0.44983572 0.67132705 0
		 -0.31808189 0.67132705 -0.31808189 -1.3322676e-015 0.67132705 -0.44983572 0.31808186 0.67132705 -0.31808189
		 0.4580718 0.6569193 -4.0412917e-009 0.32390571 0.6569193 0.32390571 -5.3883902e-009 0.6569193 0.45807177
		 -0.32390565 0.6569193 0.32390565 -0.45807177 0.6569193 0 -0.32390565 0.6569193 -0.32390565
		 -1.3322676e-015 0.6569193 -0.45807177 0.32390565 0.6569193 -0.32390565 0.46678191 0.64251161 -4.4627448e-009
		 0.33006465 0.64251161 0.33006468 -5.9503278e-009 0.64251161 0.46678185 -0.33006462 0.64251161 0.33006462
		 -0.46678185 0.64251161 0 -0.33006462 0.64251161 -0.33006462 -1.3322676e-015 0.64251161 -0.46678185
		 0.33006459 0.64251161 -0.33006462 0.4754734 0.62810391 -4.8832978e-009 0.33621049 0.62810391 0.33621049
		 -6.511065e-009 0.62810391 0.47547337 -0.33621043 0.62810391 0.33621043;
	setAttr ".vt[166:331]" -0.47547337 0.62810391 0 -0.33621043 0.62810391 -0.33621043
		 -1.3322676e-015 0.62810391 -0.47547337 0.33621043 0.62810391 -0.33621043 0.4841699 0.61369616 -5.3040936e-009
		 0.34235984 0.61369616 0.34235984 -7.072126e-009 0.61369616 0.4841699 -0.34235978 0.61369616 0.34235978
		 -0.4841699 0.61369616 0 -0.34235978 0.61369616 -0.34235978 -1.3322676e-015 0.61369616 -0.4841699
		 0.34235978 0.61369616 -0.34235978 0.49299306 0.59928846 -5.7310157e-009 0.34859875 0.59928846 0.34859875
		 -7.641356e-009 0.59928846 0.492993 -0.34859869 0.59928846 0.34859869 -0.492993 0.59928846 0
		 -0.34859869 0.59928846 -0.34859869 -1.3322676e-015 0.59928846 -0.492993 0.34859869 0.59928846 -0.34859869
		 0.50206435 0.58488071 -6.1699463e-009 0.35501313 0.58488071 0.35501313 -8.2265963e-009 0.58488071 0.50206435
		 -0.35501307 0.58488071 0.35501307 -0.50206435 0.58488071 0 -0.35501307 0.58488071 -0.35501307
		 -1.3322676e-015 0.58488071 -0.50206435 0.35501307 0.58488071 -0.35501307 0.51150542 0.57047296 -6.6267689e-009
		 0.36168897 0.57047296 0.36168897 -8.8356931e-009 0.57047296 0.51150537 -0.36168891 0.57047296 0.36168891
		 -0.51150537 0.57047296 0 -0.36168891 0.57047296 -0.36168891 -1.3322676e-015 0.57047296 -0.51150537
		 0.36168891 0.57047296 -0.36168891 0.52143788 0.5560652 -7.1073671e-009 0.36871228 0.5560652 0.36871228
		 -9.4764907e-009 0.5560652 0.52143782 -0.36871222 0.5560652 0.36871222 -0.52143782 0.5560652 0
		 -0.36871222 0.5560652 -0.36871222 -1.3322676e-015 0.5560652 -0.52143782 0.36871222 0.5560652 -0.36871222
		 0.53198326 0.54165745 -7.617623e-009 0.37616897 0.54165745 0.376169 -1.0156832e-008 0.54165745 0.5319832
		 -0.37616894 0.54165745 0.37616894 -0.5319832 0.54165745 0 -0.37616894 0.54165745 -0.37616894
		 -1.3322676e-015 0.54165745 -0.5319832 0.37616891 0.54165745 -0.37616894 0.54326314 0.52724969 -8.1634202e-009
		 0.38414508 0.52724969 0.38414508 -1.0884561e-008 0.52724969 0.54326308 -0.38414502 0.52724969 0.38414502
		 -0.54326308 0.52724969 0 -0.38414502 0.52724969 -0.38414502 -1.3322676e-015 0.52724969 -0.54326308
		 0.38414502 0.52724969 -0.38414502 0.55539912 0.51284194 -8.7506411e-009 0.39272651 0.51284194 0.39272654
		 -1.1667522e-008 0.51284194 0.55539912 -0.39272648 0.51284194 0.39272648 -0.55539912 0.51284194 0
		 -0.39272648 0.51284194 -0.39272648 -1.3322676e-015 0.51284194 -0.55539912 0.39272645 0.51284194 -0.39272648
		 0.5685128 0.49843419 -9.3851691e-009 0.40199929 0.49843419 0.40199929 -1.251356e-008 0.49843419 0.5685128
		 -0.40199924 0.49843419 0.40199924 -0.5685128 0.49843419 0 -0.40199924 0.49843419 -0.40199924
		 -1.3322676e-015 0.49843419 -0.5685128 0.40199924 0.49843419 -0.40199924 0.58272582 0.48402646 -1.0072888e-008
		 0.41204938 0.48402646 0.41204941 -1.3430519e-008 0.48402646 0.58272576 -0.41204935 0.48402646 0.41204935
		 -0.58272576 0.48402646 0 -0.41204935 0.48402646 -0.41204935 -1.3322676e-015 0.48402646 -0.58272576
		 0.41204932 0.48402646 -0.41204935 0.59815967 0.46961871 -1.0819682e-008 0.42296278 0.46961871 0.42296278
		 -1.4426243e-008 0.46961871 0.59815967 -0.42296273 0.46961871 0.42296273 -0.59815967 0.46961871 0
		 -0.42296273 0.46961871 -0.42296273 -1.3322676e-015 0.46961871 -0.59815967 0.42296273 0.46961871 -0.42296273
		 0.61493593 0.45521098 -1.1631429e-008 0.43482536 0.45521098 0.43482539 -1.5508574e-008 0.45521098 0.61493587
		 -0.43482533 0.45521098 0.43482533 -0.61493587 0.45521098 0 -0.43482533 0.45521098 -0.43482533
		 -1.3322676e-015 0.45521098 -0.61493587 0.4348253 0.45521098 -0.43482533 0.63317621 0.44080323 -1.2514016e-008
		 0.44772321 0.44080323 0.44772321 -1.6685357e-008 0.44080323 0.63317621 -0.44772315 0.44080323 0.44772315
		 -0.63317621 0.44080323 0 -0.44772315 0.44080323 -0.44772315 -1.3322676e-015 0.44080323 -0.63317621
		 0.44772315 0.44080323 -0.44772315 0.65300214 0.42639548 -1.347333e-008 0.46174228 0.42639548 0.46174228
		 -1.7964442e-008 0.42639548 0.65300214 -0.46174222 0.42639548 0.46174222 -0.65300214 0.42639548 0
		 -0.46174222 0.42639548 -0.46174222 -1.3322676e-015 0.42639548 -0.65300214 0.46174222 0.42639548 -0.46174222
		 0.67455357 0.41198775 -1.4516131e-008 0.47698143 0.41198775 0.47698146 -1.9354843e-008 0.41198775 0.67455351
		 -0.4769814 0.41198775 0.4769814 -0.67455351 0.41198775 0 -0.4769814 0.41198775 -0.4769814
		 -1.3322676e-015 0.41198775 -0.67455351 0.47698137 0.41198775 -0.4769814 0.70458782 0.39758003 -1.5969391e-008
		 0.49821886 0.39758003 0.49821889 -2.1292523e-008 0.39758003 0.70458782 -0.49821883 0.39758003 0.49821883
		 -0.70458782 0.39758003 0 -0.49821883 0.39758003 -0.49821883 -1.3322676e-015 0.39758003 -0.70458782
		 0.4982188 0.39758003 -0.49821883 0.74582696 0.38317227 -1.7964815e-008 0.52737927 0.38317227 0.52737933
		 -2.3953088e-008 0.38317227 0.74582696 -0.52737927 0.38317227 0.52737927 -0.74582696 0.38317227 0
		 -0.52737927 0.38317227 -0.52737927 -1.3322676e-015 0.38317227 -0.74582696 0.52737927 0.38317227 -0.52737927
		 0.7943536 0.36876452 -2.0312861e-008 0.56169283 0.36876452 0.56169289 -2.7083816e-008 0.36876452 0.7943536
		 -0.56169283 0.36876452 0.56169283 -0.7943536 0.36876452 0 -0.56169283 0.36876452 -0.56169283
		 -1.3322676e-015 0.36876452 -0.7943536 0.56169283 0.36876452 -0.56169283 0.84625095 0.3543568 -2.2824e-008
		 0.5983898 0.3543568 0.59838986 -3.0432002e-008 0.3543568 0.84625089 -0.59838974 0.3543568 0.59838974
		 -0.84625089 0.3543568 0 -0.59838974 0.3543568 -0.59838974 -1.3322676e-015 0.3543568 -0.84625089
		 0.59838974 0.3543568 -0.59838974 0.89760208 0.33994904 -2.5308715e-008 0.63470054 0.33994904 0.6347006
		 -3.3744953e-008 0.33994904 0.89760208 -0.63470054 0.33994904 0.63470054 -0.89760208 0.33994904 0
		 -0.63470054 0.33994904 -0.63470054 -1.3322676e-015 0.33994904 -0.89760208 0.63470054 0.33994904 -0.63470054
		 0.9444896 0.32554129 -2.7577446e-008 0.66785502 0.32554129 0.66785508;
	setAttr ".vt[332:497]" -3.6769929e-008 0.32554129 0.9444896 -0.66785502 0.32554129 0.66785502
		 -0.9444896 0.32554129 0 -0.66785502 0.32554129 -0.66785502 -1.3322676e-015 0.32554129 -0.9444896
		 0.66785496 0.32554129 -0.66785502 0.98299682 0.31113353 -2.9440685e-008 0.69508374 0.31113353 0.6950838
		 -3.9254246e-008 0.31113353 0.98299682 -0.69508374 0.31113353 0.69508374 -0.98299682 0.31113353 0
		 -0.69508374 0.31113353 -0.69508374 -1.3322676e-015 0.31113353 -0.98299682 0.69508374 0.31113353 -0.69508374
		 1.0092726946 0.29672578 -3.0712087e-008 0.71366358 0.29672578 0.71366364 -4.0949448e-008 0.29672578 1.0092726946
		 -0.71366358 0.29672578 0.71366358 -1.0092726946 0.29672578 0 -0.71366358 0.29672578 -0.71366358
		 -1.3322676e-015 0.29672578 -1.0092726946 0.71366358 0.29672578 -0.71366358 1.028668284 0.28231806 -3.1650575e-008
		 0.72737837 0.28231806 0.72737837 -4.2200767e-008 0.28231806 1.028668284 -0.72737837 0.28231806 0.72737837
		 -1.028668284 0.28231806 0 -0.72737837 0.28231806 -0.72737837 -1.3322676e-015 0.28231806 -1.028668284
		 0.72737831 0.28231806 -0.72737837 1.046621323 0.2679103 -3.2519264e-008 0.74007308 0.2679103 0.74007308
		 -4.3359019e-008 0.2679103 1.046621323 -0.74007308 0.2679103 0.74007308 -1.046621323 0.2679103 0
		 -0.74007308 0.2679103 -0.74007308 -1.3322676e-015 0.2679103 -1.046621323 0.74007297 0.2679103 -0.74007308
		 1.063209653 0.25350255 -3.3321914e-008 0.75180274 0.25350255 0.7518028 -4.4429221e-008 0.25350255 1.063209534
		 -0.75180274 0.25350255 0.75180274 -1.063209534 0.25350255 0 -0.75180274 0.25350255 -0.75180274
		 -1.3322676e-015 0.25350255 -1.063209534 0.75180268 0.25350255 -0.75180274 1.078510523 0.23909479 -3.4062275e-008
		 0.76262212 0.23909479 0.76262212 -4.5416368e-008 0.23909479 1.078510523 -0.76262212 0.23909479 0.76262212
		 -1.078510523 0.23909479 0 -0.76262212 0.23909479 -0.76262212 -1.3322676e-015 0.23909479 -1.078510523
		 0.762622 0.23909479 -0.76262212 1.092601657 0.22468705 -3.4744101e-008 0.77258605 0.22468705 0.77258611
		 -4.6325468e-008 0.22468705 1.092601657 -0.77258605 0.22468705 0.77258605 -1.092601657 0.22468705 0
		 -0.77258605 0.22468705 -0.77258605 -1.3322676e-015 0.22468705 -1.092601657 0.77258599 0.22468705 -0.77258605
		 1.1055609 0.2102793 -3.5371151e-008 0.78174961 0.2102793 0.78174967 -4.7161539e-008 0.2102793 1.10556078
		 -0.78174961 0.2102793 0.78174961 -1.10556078 0.2102793 0 -0.78174961 0.2102793 -0.78174961
		 -1.3322676e-015 0.2102793 -1.10556078 0.78174955 0.2102793 -0.78174961 1.11746562 0.19587156 -3.5947181e-008
		 0.79016751 0.19587156 0.79016757 -4.7929579e-008 0.19587156 1.1174655 -0.79016751 0.19587156 0.79016751
		 -1.1174655 0.19587156 0 -0.79016751 0.19587156 -0.79016751 -1.3322676e-015 0.19587156 -1.1174655
		 0.79016745 0.19587156 -0.79016751 1.12839341 0.18146382 -3.6475942e-008 0.7978946 0.18146382 0.79789466
		 -4.863459e-008 0.18146382 1.12839341 -0.7978946 0.18146382 0.7978946 -1.12839341 0.18146382 0
		 -0.7978946 0.18146382 -0.7978946 -1.3322676e-015 0.18146382 -1.12839341 0.79789454 0.18146382 -0.7978946
		 1.13842189 0.16705607 -3.696119e-008 0.80498588 0.16705607 0.80498594 -4.9281589e-008 0.16705607 1.13842189
		 -0.80498588 0.16705607 0.80498588 -1.13842189 0.16705607 0 -0.80498588 0.16705607 -0.80498588
		 -1.3322676e-015 0.16705607 -1.13842189 0.80498582 0.16705607 -0.80498588 1.14762878 0.15264831 -3.7406682e-008
		 0.81149614 0.15264831 0.8114962 -4.9875577e-008 0.15264831 1.14762878 -0.81149614 0.15264831 0.81149614
		 -1.14762878 0.15264831 0 -0.81149614 0.15264831 -0.81149614 -1.3322676e-015 0.15264831 -1.14762878
		 0.81149608 0.15264831 -0.81149614 1.15609169 0.13824058 -3.7816172e-008 0.81748027 0.13824058 0.81748033
		 -5.0421562e-008 0.13824058 1.15609169 -0.81748027 0.13824058 0.81748027 -1.15609169 0.13824058 0
		 -0.81748027 0.13824058 -0.81748027 -1.3322676e-015 0.13824058 -1.15609169 0.81748021 0.13824058 -0.81748027
		 1.1638881 0.12383284 -3.8193413e-008 0.82299316 0.12383284 0.82299322 -5.0924552e-008 0.12383284 1.16388798
		 -0.82299316 0.12383284 0.82299316 -1.16388798 0.12383284 0 -0.82299316 0.12383284 -0.82299316
		 -1.3322676e-015 0.12383284 -1.16388798 0.8229931 0.12383284 -0.82299316 1.17109561 0.1094251 -3.8542165e-008
		 0.82808965 0.1094251 0.82808971 -5.1389552e-008 0.1094251 1.17109561 -0.82808965 0.1094251 0.82808965
		 -1.17109561 0.1094251 0 -0.82808965 0.1094251 -0.82808965 -1.3322676e-015 0.1094251 -1.17109561
		 0.82808959 0.1094251 -0.82808965 1.17779195 0.095017359 -3.886618e-008 0.83282471 0.095017359 0.83282477
		 -5.1821573e-008 0.095017359 1.17779195 -0.83282471 0.095017359 0.83282471 -1.17779195 0.095017359 0
		 -0.83282471 0.095017359 -0.83282471 -1.3322676e-015 0.095017359 -1.17779195 0.83282465 0.095017359 -0.83282471
		 1.18405473 0.08060962 -3.9169212e-008 0.83725309 0.08060962 0.83725315 -5.2225616e-008 0.08060962 1.18405461
		 -0.83725309 0.08060962 0.83725309 -1.18405461 0.08060962 0 -0.83725309 0.08060962 -0.83725309
		 -1.3322676e-015 0.08060962 -1.18405461 0.83725303 0.08060962 -0.83725309 1.18996131 0.066201881 -3.9455013e-008
		 0.84142977 0.066201881 0.84142977 -5.2606683e-008 0.066201881 1.18996131 -0.84142971 0.066201881 0.84142971
		 -1.18996131 0.066201881 0 -0.84142971 0.066201881 -0.84142971 -1.3322676e-015 0.066201881 -1.18996131
		 0.84142971 0.066201881 -0.84142971 1.19558954 0.051794138 -3.9727347e-008 0.84540951 0.051794138 0.84540957
		 -5.2969792e-008 0.051794138 1.19558954 -0.84540951 0.051794138 0.84540951 -1.19558954 0.051794138 0
		 -0.84540951 0.051794138 -0.84540951 -1.3322676e-015 0.051794138 -1.19558954 0.84540945 0.051794138 -0.84540951
		 1.20069087 0.037386402 -3.9974182e-008 0.84901667 0.037386402 0.84901673 -5.3298908e-008 0.037386402 1.20069087
		 -0.84901667 0.037386402 0.84901667 -1.20069087 0.037386402 0 -0.84901667 0.037386402 -0.84901667
		 -1.3322676e-015 0.037386402 -1.20069087 0.84901661 0.037386402 -0.84901667;
	setAttr -s 1000 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 0 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 8 0 0 497 1 1 496 1 2 495 1 3 494 1
		 4 493 1 5 492 1 6 491 1 7 490 1 16 0 1 16 1 1 16 2 1 16 3 1 16 4 1 16 5 1 16 6 1
		 16 7 1 8 17 1 9 17 1 10 17 1 11 17 1 12 17 1 13 17 1 14 17 1 15 17 1 18 15 1 19 14 1
		 18 19 1 20 13 1 19 20 1 21 12 1 20 21 1 22 11 1 21 22 1 23 10 1 22 23 1 24 9 1 23 24 1
		 25 8 1 24 25 1 25 18 1 26 18 1 27 19 1 26 27 1 28 20 1 27 28 1 29 21 1 28 29 1 30 22 1
		 29 30 1 31 23 1 30 31 1 32 24 1 31 32 1 33 25 1 32 33 1 33 26 1 34 26 1 35 27 1 34 35 1
		 36 28 1 35 36 1 37 29 1 36 37 1 38 30 1 37 38 1 39 31 1 38 39 1 40 32 1 39 40 1 41 33 1
		 40 41 1 41 34 1 42 34 1 43 35 1 42 43 1 44 36 1 43 44 1 45 37 1 44 45 1 46 38 1 45 46 1
		 47 39 1 46 47 1 48 40 1 47 48 1 49 41 1 48 49 1 49 42 1 50 42 1 51 43 1 50 51 1 52 44 1
		 51 52 1 53 45 1 52 53 1 54 46 1 53 54 1 55 47 1 54 55 1 56 48 1 55 56 1 57 49 1 56 57 1
		 57 50 1 58 50 1 59 51 1 58 59 1 60 52 1 59 60 1 61 53 1 60 61 1 62 54 1 61 62 1 63 55 1
		 62 63 1 64 56 1 63 64 1 65 57 1 64 65 1 65 58 1 66 58 1 67 59 1 66 67 1 68 60 1 67 68 1
		 69 61 1 68 69 1 70 62 1 69 70 1 71 63 1 70 71 1 72 64 1 71 72 1 73 65 1 72 73 1 73 66 1
		 74 66 1 75 67 1 74 75 1 76 68 1 75 76 1 77 69 1 76 77 1 78 70 1 77 78 1 79 71 1 78 79 1
		 80 72 1 79 80 1 81 73 1;
	setAttr ".ed[166:331]" 80 81 1 81 74 1 82 74 1 83 75 1 82 83 1 84 76 1 83 84 1
		 85 77 1 84 85 1 86 78 1 85 86 1 87 79 1 86 87 1 88 80 1 87 88 1 89 81 1 88 89 1 89 82 1
		 90 82 1 91 83 1 90 91 1 92 84 1 91 92 1 93 85 1 92 93 1 94 86 1 93 94 1 95 87 1 94 95 1
		 96 88 1 95 96 1 97 89 1 96 97 1 97 90 1 98 90 1 99 91 1 98 99 1 100 92 1 99 100 1
		 101 93 1 100 101 1 102 94 1 101 102 1 103 95 1 102 103 1 104 96 1 103 104 1 105 97 1
		 104 105 1 105 98 1 106 98 1 107 99 1 106 107 1 108 100 1 107 108 1 109 101 1 108 109 1
		 110 102 1 109 110 1 111 103 1 110 111 1 112 104 1 111 112 1 113 105 1 112 113 1 113 106 1
		 114 106 1 115 107 1 114 115 1 116 108 1 115 116 1 117 109 1 116 117 1 118 110 1 117 118 1
		 119 111 1 118 119 1 120 112 1 119 120 1 121 113 1 120 121 1 121 114 1 122 114 1 123 115 1
		 122 123 1 124 116 1 123 124 1 125 117 1 124 125 1 126 118 1 125 126 1 127 119 1 126 127 1
		 128 120 1 127 128 1 129 121 1 128 129 1 129 122 1 130 122 1 131 123 1 130 131 1 132 124 1
		 131 132 1 133 125 1 132 133 1 134 126 1 133 134 1 135 127 1 134 135 1 136 128 1 135 136 1
		 137 129 1 136 137 1 137 130 1 138 130 1 139 131 1 138 139 1 140 132 1 139 140 1 141 133 1
		 140 141 1 142 134 1 141 142 1 143 135 1 142 143 1 144 136 1 143 144 1 145 137 1 144 145 1
		 145 138 1 146 138 1 147 139 1 146 147 1 148 140 1 147 148 1 149 141 1 148 149 1 150 142 1
		 149 150 1 151 143 1 150 151 1 152 144 1 151 152 1 153 145 1 152 153 1 153 146 1 154 146 1
		 155 147 1 154 155 1 156 148 1 155 156 1 157 149 1 156 157 1 158 150 1 157 158 1 159 151 1
		 158 159 1 160 152 1 159 160 1 161 153 1 160 161 1 161 154 1 162 154 1 163 155 1 162 163 1
		 164 156 1;
	setAttr ".ed[332:497]" 163 164 1 165 157 1 164 165 1 166 158 1 165 166 1 167 159 1
		 166 167 1 168 160 1 167 168 1 169 161 1 168 169 1 169 162 1 170 162 1 171 163 1 170 171 1
		 172 164 1 171 172 1 173 165 1 172 173 1 174 166 1 173 174 1 175 167 1 174 175 1 176 168 1
		 175 176 1 177 169 1 176 177 1 177 170 1 178 170 1 179 171 1 178 179 1 180 172 1 179 180 1
		 181 173 1 180 181 1 182 174 1 181 182 1 183 175 1 182 183 1 184 176 1 183 184 1 185 177 1
		 184 185 1 185 178 1 186 178 1 187 179 1 186 187 1 188 180 1 187 188 1 189 181 1 188 189 1
		 190 182 1 189 190 1 191 183 1 190 191 1 192 184 1 191 192 1 193 185 1 192 193 1 193 186 1
		 194 186 1 195 187 1 194 195 1 196 188 1 195 196 1 197 189 1 196 197 1 198 190 1 197 198 1
		 199 191 1 198 199 1 200 192 1 199 200 1 201 193 1 200 201 1 201 194 1 202 194 1 203 195 1
		 202 203 1 204 196 1 203 204 1 205 197 1 204 205 1 206 198 1 205 206 1 207 199 1 206 207 1
		 208 200 1 207 208 1 209 201 1 208 209 1 209 202 1 210 202 1 211 203 1 210 211 1 212 204 1
		 211 212 1 213 205 1 212 213 1 214 206 1 213 214 1 215 207 1 214 215 1 216 208 1 215 216 1
		 217 209 1 216 217 1 217 210 1 218 210 1 219 211 1 218 219 1 220 212 1 219 220 1 221 213 1
		 220 221 1 222 214 1 221 222 1 223 215 1 222 223 1 224 216 1 223 224 1 225 217 1 224 225 1
		 225 218 1 226 218 1 227 219 1 226 227 1 228 220 1 227 228 1 229 221 1 228 229 1 230 222 1
		 229 230 1 231 223 1 230 231 1 232 224 1 231 232 1 233 225 1 232 233 1 233 226 1 234 226 1
		 235 227 1 234 235 1 236 228 1 235 236 1 237 229 1 236 237 1 238 230 1 237 238 1 239 231 1
		 238 239 1 240 232 1 239 240 1 241 233 1 240 241 1 241 234 1 242 234 1 243 235 1 242 243 1
		 244 236 1 243 244 1 245 237 1 244 245 1 246 238 1 245 246 1 247 239 1;
	setAttr ".ed[498:663]" 246 247 1 248 240 1 247 248 1 249 241 1 248 249 1 249 242 1
		 250 242 1 251 243 1 250 251 1 252 244 1 251 252 1 253 245 1 252 253 1 254 246 1 253 254 1
		 255 247 1 254 255 1 256 248 1 255 256 1 257 249 1 256 257 1 257 250 1 258 250 1 259 251 1
		 258 259 1 260 252 1 259 260 1 261 253 1 260 261 1 262 254 1 261 262 1 263 255 1 262 263 1
		 264 256 1 263 264 1 265 257 1 264 265 1 265 258 1 266 258 1 267 259 1 266 267 1 268 260 1
		 267 268 1 269 261 1 268 269 1 270 262 1 269 270 1 271 263 1 270 271 1 272 264 1 271 272 1
		 273 265 1 272 273 1 273 266 1 274 266 1 275 267 1 274 275 1 276 268 1 275 276 1 277 269 1
		 276 277 1 278 270 1 277 278 1 279 271 1 278 279 1 280 272 1 279 280 1 281 273 1 280 281 1
		 281 274 1 282 274 1 283 275 1 282 283 1 284 276 1 283 284 1 285 277 1 284 285 1 286 278 1
		 285 286 1 287 279 1 286 287 1 288 280 1 287 288 1 289 281 1 288 289 1 289 282 1 290 282 1
		 291 283 1 290 291 1 292 284 1 291 292 1 293 285 1 292 293 1 294 286 1 293 294 1 295 287 1
		 294 295 1 296 288 1 295 296 1 297 289 1 296 297 1 297 290 1 298 290 1 299 291 1 298 299 1
		 300 292 1 299 300 1 301 293 1 300 301 1 302 294 1 301 302 1 303 295 1 302 303 1 304 296 1
		 303 304 1 305 297 1 304 305 1 305 298 1 306 298 1 307 299 1 306 307 1 308 300 1 307 308 1
		 309 301 1 308 309 1 310 302 1 309 310 1 311 303 1 310 311 1 312 304 1 311 312 1 313 305 1
		 312 313 1 313 306 1 314 306 1 315 307 1 314 315 1 316 308 1 315 316 1 317 309 1 316 317 1
		 318 310 1 317 318 1 319 311 1 318 319 1 320 312 1 319 320 1 321 313 1 320 321 1 321 314 1
		 322 314 1 323 315 1 322 323 1 324 316 1 323 324 1 325 317 1 324 325 1 326 318 1 325 326 1
		 327 319 1 326 327 1 328 320 1 327 328 1 329 321 1 328 329 1 329 322 1;
	setAttr ".ed[664:829]" 330 322 1 331 323 1 330 331 1 332 324 1 331 332 1 333 325 1
		 332 333 1 334 326 1 333 334 1 335 327 1 334 335 1 336 328 1 335 336 1 337 329 1 336 337 1
		 337 330 1 338 330 1 339 331 1 338 339 1 340 332 1 339 340 1 341 333 1 340 341 1 342 334 1
		 341 342 1 343 335 1 342 343 1 344 336 1 343 344 1 345 337 1 344 345 1 345 338 1 346 338 1
		 347 339 1 346 347 1 348 340 1 347 348 1 349 341 1 348 349 1 350 342 1 349 350 1 351 343 1
		 350 351 1 352 344 1 351 352 1 353 345 1 352 353 1 353 346 1 354 346 1 355 347 1 354 355 1
		 356 348 1 355 356 1 357 349 1 356 357 1 358 350 1 357 358 1 359 351 1 358 359 1 360 352 1
		 359 360 1 361 353 1 360 361 1 361 354 1 362 354 1 363 355 1 362 363 1 364 356 1 363 364 1
		 365 357 1 364 365 1 366 358 1 365 366 1 367 359 1 366 367 1 368 360 1 367 368 1 369 361 1
		 368 369 1 369 362 1 370 362 1 371 363 1 370 371 1 372 364 1 371 372 1 373 365 1 372 373 1
		 374 366 1 373 374 1 375 367 1 374 375 1 376 368 1 375 376 1 377 369 1 376 377 1 377 370 1
		 378 370 1 379 371 1 378 379 1 380 372 1 379 380 1 381 373 1 380 381 1 382 374 1 381 382 1
		 383 375 1 382 383 1 384 376 1 383 384 1 385 377 1 384 385 1 385 378 1 386 378 1 387 379 1
		 386 387 1 388 380 1 387 388 1 389 381 1 388 389 1 390 382 1 389 390 1 391 383 1 390 391 1
		 392 384 1 391 392 1 393 385 1 392 393 1 393 386 1 394 386 1 395 387 1 394 395 1 396 388 1
		 395 396 1 397 389 1 396 397 1 398 390 1 397 398 1 399 391 1 398 399 1 400 392 1 399 400 1
		 401 393 1 400 401 1 401 394 1 402 394 1 403 395 1 402 403 1 404 396 1 403 404 1 405 397 1
		 404 405 1 406 398 1 405 406 1 407 399 1 406 407 1 408 400 1 407 408 1 409 401 1 408 409 1
		 409 402 1 410 402 1 411 403 1 410 411 1 412 404 1 411 412 1 413 405 1;
	setAttr ".ed[830:995]" 412 413 1 414 406 1 413 414 1 415 407 1 414 415 1 416 408 1
		 415 416 1 417 409 1 416 417 1 417 410 1 418 410 1 419 411 1 418 419 1 420 412 1 419 420 1
		 421 413 1 420 421 1 422 414 1 421 422 1 423 415 1 422 423 1 424 416 1 423 424 1 425 417 1
		 424 425 1 425 418 1 426 418 1 427 419 1 426 427 1 428 420 1 427 428 1 429 421 1 428 429 1
		 430 422 1 429 430 1 431 423 1 430 431 1 432 424 1 431 432 1 433 425 1 432 433 1 433 426 1
		 434 426 1 435 427 1 434 435 1 436 428 1 435 436 1 437 429 1 436 437 1 438 430 1 437 438 1
		 439 431 1 438 439 1 440 432 1 439 440 1 441 433 1 440 441 1 441 434 1 442 434 1 443 435 1
		 442 443 1 444 436 1 443 444 1 445 437 1 444 445 1 446 438 1 445 446 1 447 439 1 446 447 1
		 448 440 1 447 448 1 449 441 1 448 449 1 449 442 1 450 442 1 451 443 1 450 451 1 452 444 1
		 451 452 1 453 445 1 452 453 1 454 446 1 453 454 1 455 447 1 454 455 1 456 448 1 455 456 1
		 457 449 1 456 457 1 457 450 1 458 450 1 459 451 1 458 459 1 460 452 1 459 460 1 461 453 1
		 460 461 1 462 454 1 461 462 1 463 455 1 462 463 1 464 456 1 463 464 1 465 457 1 464 465 1
		 465 458 1 466 458 1 467 459 1 466 467 1 468 460 1 467 468 1 469 461 1 468 469 1 470 462 1
		 469 470 1 471 463 1 470 471 1 472 464 1 471 472 1 473 465 1 472 473 1 473 466 1 474 466 1
		 475 467 1 474 475 1 476 468 1 475 476 1 477 469 1 476 477 1 478 470 1 477 478 1 479 471 1
		 478 479 1 480 472 1 479 480 1 481 473 1 480 481 1 481 474 1 482 474 1 483 475 1 482 483 1
		 484 476 1 483 484 1 485 477 1 484 485 1 486 478 1 485 486 1 487 479 1 486 487 1 488 480 1
		 487 488 1 489 481 1 488 489 1 489 482 1 490 482 1 491 483 1 490 491 1 492 484 1 491 492 1
		 493 485 1 492 493 1 494 486 1 493 494 1 495 487 1 494 495 1 496 488 1;
	setAttr ".ed[996:999]" 495 496 1 497 489 1 496 497 1 497 490 1;
	setAttr -s 504 -ch 2000 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 17 998 -17
		mu 0 4 8 9 573 575
		f 4 1 18 996 -18
		mu 0 4 9 10 572 573
		f 4 2 19 994 -19
		mu 0 4 10 11 571 572
		f 4 3 20 992 -20
		mu 0 4 11 12 570 571
		f 4 4 21 990 -21
		mu 0 4 12 13 569 570
		f 4 5 22 988 -22
		mu 0 4 13 14 568 569
		f 4 6 23 986 -23
		mu 0 4 14 15 567 568
		f 4 7 16 999 -24
		mu 0 4 15 16 574 567
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
		mu 0 3 33 32 35
		f 4 -43 40 -15 -42
		mu 0 4 37 36 24 23
		f 4 -45 41 -14 -44
		mu 0 4 38 37 23 22
		f 4 -47 43 -13 -46
		mu 0 4 39 38 22 21
		f 4 -49 45 -12 -48
		mu 0 4 40 39 21 20
		f 4 -51 47 -11 -50
		mu 0 4 41 40 20 19
		f 4 -53 49 -10 -52
		mu 0 4 42 41 19 18
		f 4 -55 51 -9 -54
		mu 0 4 44 42 18 17
		f 4 -56 53 -16 -41
		mu 0 4 36 43 25 24
		f 4 -59 56 42 -58
		mu 0 4 46 45 36 37
		f 4 -61 57 44 -60
		mu 0 4 47 46 37 38
		f 4 -63 59 46 -62
		mu 0 4 48 47 38 39
		f 4 -65 61 48 -64
		mu 0 4 49 48 39 40
		f 4 -67 63 50 -66
		mu 0 4 50 49 40 41
		f 4 -69 65 52 -68
		mu 0 4 51 50 41 42
		f 4 -71 67 54 -70
		mu 0 4 53 51 42 44
		f 4 -72 69 55 -57
		mu 0 4 45 52 43 36
		f 4 -75 72 58 -74
		mu 0 4 55 54 45 46
		f 4 -77 73 60 -76
		mu 0 4 56 55 46 47
		f 4 -79 75 62 -78
		mu 0 4 57 56 47 48
		f 4 -81 77 64 -80
		mu 0 4 58 57 48 49
		f 4 -83 79 66 -82
		mu 0 4 59 58 49 50
		f 4 -85 81 68 -84
		mu 0 4 60 59 50 51
		f 4 -87 83 70 -86
		mu 0 4 62 60 51 53
		f 4 -88 85 71 -73
		mu 0 4 54 61 52 45
		f 4 -91 88 74 -90
		mu 0 4 64 63 54 55
		f 4 -93 89 76 -92
		mu 0 4 65 64 55 56
		f 4 -95 91 78 -94
		mu 0 4 66 65 56 57
		f 4 -97 93 80 -96
		mu 0 4 67 66 57 58
		f 4 -99 95 82 -98
		mu 0 4 68 67 58 59
		f 4 -101 97 84 -100
		mu 0 4 69 68 59 60
		f 4 -103 99 86 -102
		mu 0 4 71 69 60 62
		f 4 -104 101 87 -89
		mu 0 4 63 70 61 54
		f 4 -107 104 90 -106
		mu 0 4 73 72 63 64
		f 4 -109 105 92 -108
		mu 0 4 74 73 64 65
		f 4 -111 107 94 -110
		mu 0 4 75 74 65 66
		f 4 -113 109 96 -112
		mu 0 4 76 75 66 67
		f 4 -115 111 98 -114
		mu 0 4 77 76 67 68
		f 4 -117 113 100 -116
		mu 0 4 78 77 68 69
		f 4 -119 115 102 -118
		mu 0 4 80 78 69 71
		f 4 -120 117 103 -105
		mu 0 4 72 79 70 63
		f 4 -123 120 106 -122
		mu 0 4 82 81 72 73
		f 4 -125 121 108 -124
		mu 0 4 83 82 73 74
		f 4 -127 123 110 -126
		mu 0 4 84 83 74 75
		f 4 -129 125 112 -128
		mu 0 4 85 84 75 76
		f 4 -131 127 114 -130
		mu 0 4 86 85 76 77
		f 4 -133 129 116 -132
		mu 0 4 87 86 77 78
		f 4 -135 131 118 -134
		mu 0 4 89 87 78 80
		f 4 -136 133 119 -121
		mu 0 4 81 88 79 72
		f 4 -139 136 122 -138
		mu 0 4 91 90 81 82
		f 4 -141 137 124 -140
		mu 0 4 92 91 82 83
		f 4 -143 139 126 -142
		mu 0 4 93 92 83 84
		f 4 -145 141 128 -144
		mu 0 4 94 93 84 85
		f 4 -147 143 130 -146
		mu 0 4 95 94 85 86
		f 4 -149 145 132 -148
		mu 0 4 96 95 86 87
		f 4 -151 147 134 -150
		mu 0 4 98 96 87 89
		f 4 -152 149 135 -137
		mu 0 4 90 97 88 81
		f 4 -155 152 138 -154
		mu 0 4 100 99 90 91
		f 4 -157 153 140 -156
		mu 0 4 101 100 91 92
		f 4 -159 155 142 -158
		mu 0 4 102 101 92 93
		f 4 -161 157 144 -160
		mu 0 4 103 102 93 94
		f 4 -163 159 146 -162
		mu 0 4 104 103 94 95
		f 4 -165 161 148 -164
		mu 0 4 105 104 95 96
		f 4 -167 163 150 -166
		mu 0 4 107 105 96 98
		f 4 -168 165 151 -153
		mu 0 4 99 106 97 90
		f 4 -171 168 154 -170
		mu 0 4 109 108 99 100
		f 4 -173 169 156 -172
		mu 0 4 110 109 100 101
		f 4 -175 171 158 -174
		mu 0 4 111 110 101 102
		f 4 -177 173 160 -176
		mu 0 4 112 111 102 103
		f 4 -179 175 162 -178
		mu 0 4 113 112 103 104
		f 4 -181 177 164 -180
		mu 0 4 114 113 104 105
		f 4 -183 179 166 -182
		mu 0 4 116 114 105 107
		f 4 -184 181 167 -169
		mu 0 4 108 115 106 99
		f 4 -187 184 170 -186
		mu 0 4 118 117 108 109
		f 4 -189 185 172 -188
		mu 0 4 119 118 109 110
		f 4 -191 187 174 -190
		mu 0 4 120 119 110 111
		f 4 -193 189 176 -192
		mu 0 4 121 120 111 112
		f 4 -195 191 178 -194
		mu 0 4 122 121 112 113
		f 4 -197 193 180 -196
		mu 0 4 123 122 113 114
		f 4 -199 195 182 -198
		mu 0 4 125 123 114 116
		f 4 -200 197 183 -185
		mu 0 4 117 124 115 108
		f 4 -203 200 186 -202
		mu 0 4 127 126 117 118
		f 4 -205 201 188 -204
		mu 0 4 128 127 118 119
		f 4 -207 203 190 -206
		mu 0 4 129 128 119 120
		f 4 -209 205 192 -208
		mu 0 4 130 129 120 121
		f 4 -211 207 194 -210
		mu 0 4 131 130 121 122
		f 4 -213 209 196 -212
		mu 0 4 132 131 122 123
		f 4 -215 211 198 -214
		mu 0 4 134 132 123 125
		f 4 -216 213 199 -201
		mu 0 4 126 133 124 117
		f 4 -219 216 202 -218
		mu 0 4 136 135 126 127
		f 4 -221 217 204 -220
		mu 0 4 137 136 127 128
		f 4 -223 219 206 -222
		mu 0 4 138 137 128 129
		f 4 -225 221 208 -224
		mu 0 4 139 138 129 130
		f 4 -227 223 210 -226
		mu 0 4 140 139 130 131
		f 4 -229 225 212 -228
		mu 0 4 141 140 131 132
		f 4 -231 227 214 -230
		mu 0 4 143 141 132 134
		f 4 -232 229 215 -217
		mu 0 4 135 142 133 126
		f 4 -235 232 218 -234
		mu 0 4 145 144 135 136
		f 4 -237 233 220 -236
		mu 0 4 146 145 136 137
		f 4 -239 235 222 -238
		mu 0 4 147 146 137 138
		f 4 -241 237 224 -240
		mu 0 4 148 147 138 139
		f 4 -243 239 226 -242
		mu 0 4 149 148 139 140
		f 4 -245 241 228 -244
		mu 0 4 150 149 140 141
		f 4 -247 243 230 -246
		mu 0 4 152 150 141 143
		f 4 -248 245 231 -233
		mu 0 4 144 151 142 135
		f 4 -251 248 234 -250
		mu 0 4 154 153 144 145
		f 4 -253 249 236 -252
		mu 0 4 155 154 145 146
		f 4 -255 251 238 -254
		mu 0 4 156 155 146 147
		f 4 -257 253 240 -256
		mu 0 4 157 156 147 148
		f 4 -259 255 242 -258
		mu 0 4 158 157 148 149
		f 4 -261 257 244 -260
		mu 0 4 159 158 149 150
		f 4 -263 259 246 -262
		mu 0 4 161 159 150 152
		f 4 -264 261 247 -249
		mu 0 4 153 160 151 144
		f 4 -267 264 250 -266
		mu 0 4 163 162 153 154
		f 4 -269 265 252 -268
		mu 0 4 164 163 154 155
		f 4 -271 267 254 -270
		mu 0 4 165 164 155 156
		f 4 -273 269 256 -272
		mu 0 4 166 165 156 157
		f 4 -275 271 258 -274
		mu 0 4 167 166 157 158
		f 4 -277 273 260 -276
		mu 0 4 168 167 158 159
		f 4 -279 275 262 -278
		mu 0 4 170 168 159 161
		f 4 -280 277 263 -265
		mu 0 4 162 169 160 153
		f 4 -283 280 266 -282
		mu 0 4 172 171 162 163
		f 4 -285 281 268 -284
		mu 0 4 173 172 163 164
		f 4 -287 283 270 -286
		mu 0 4 174 173 164 165
		f 4 -289 285 272 -288
		mu 0 4 175 174 165 166
		f 4 -291 287 274 -290
		mu 0 4 176 175 166 167
		f 4 -293 289 276 -292
		mu 0 4 177 176 167 168
		f 4 -295 291 278 -294
		mu 0 4 179 177 168 170
		f 4 -296 293 279 -281
		mu 0 4 171 178 169 162
		f 4 -299 296 282 -298
		mu 0 4 181 180 171 172
		f 4 -301 297 284 -300
		mu 0 4 182 181 172 173
		f 4 -303 299 286 -302
		mu 0 4 183 182 173 174
		f 4 -305 301 288 -304
		mu 0 4 184 183 174 175
		f 4 -307 303 290 -306
		mu 0 4 185 184 175 176
		f 4 -309 305 292 -308
		mu 0 4 186 185 176 177
		f 4 -311 307 294 -310
		mu 0 4 188 186 177 179
		f 4 -312 309 295 -297
		mu 0 4 180 187 178 171
		f 4 -315 312 298 -314
		mu 0 4 190 189 180 181
		f 4 -317 313 300 -316
		mu 0 4 191 190 181 182
		f 4 -319 315 302 -318
		mu 0 4 192 191 182 183
		f 4 -321 317 304 -320
		mu 0 4 193 192 183 184
		f 4 -323 319 306 -322
		mu 0 4 194 193 184 185
		f 4 -325 321 308 -324
		mu 0 4 195 194 185 186
		f 4 -327 323 310 -326
		mu 0 4 197 195 186 188
		f 4 -328 325 311 -313
		mu 0 4 189 196 187 180
		f 4 -331 328 314 -330
		mu 0 4 199 198 189 190
		f 4 -333 329 316 -332
		mu 0 4 200 199 190 191
		f 4 -335 331 318 -334
		mu 0 4 201 200 191 192
		f 4 -337 333 320 -336
		mu 0 4 202 201 192 193
		f 4 -339 335 322 -338
		mu 0 4 203 202 193 194
		f 4 -341 337 324 -340
		mu 0 4 204 203 194 195
		f 4 -343 339 326 -342
		mu 0 4 206 204 195 197
		f 4 -344 341 327 -329
		mu 0 4 198 205 196 189
		f 4 -347 344 330 -346
		mu 0 4 208 207 198 199
		f 4 -349 345 332 -348
		mu 0 4 209 208 199 200
		f 4 -351 347 334 -350
		mu 0 4 210 209 200 201
		f 4 -353 349 336 -352
		mu 0 4 211 210 201 202
		f 4 -355 351 338 -354
		mu 0 4 212 211 202 203
		f 4 -357 353 340 -356
		mu 0 4 213 212 203 204
		f 4 -359 355 342 -358
		mu 0 4 215 213 204 206
		f 4 -360 357 343 -345
		mu 0 4 207 214 205 198
		f 4 -363 360 346 -362
		mu 0 4 217 216 207 208
		f 4 -365 361 348 -364
		mu 0 4 218 217 208 209
		f 4 -367 363 350 -366
		mu 0 4 219 218 209 210
		f 4 -369 365 352 -368
		mu 0 4 220 219 210 211
		f 4 -371 367 354 -370
		mu 0 4 221 220 211 212
		f 4 -373 369 356 -372
		mu 0 4 222 221 212 213
		f 4 -375 371 358 -374
		mu 0 4 224 222 213 215
		f 4 -376 373 359 -361
		mu 0 4 216 223 214 207
		f 4 -379 376 362 -378
		mu 0 4 226 225 216 217
		f 4 -381 377 364 -380
		mu 0 4 227 226 217 218
		f 4 -383 379 366 -382
		mu 0 4 228 227 218 219
		f 4 -385 381 368 -384
		mu 0 4 229 228 219 220
		f 4 -387 383 370 -386
		mu 0 4 230 229 220 221
		f 4 -389 385 372 -388
		mu 0 4 231 230 221 222
		f 4 -391 387 374 -390
		mu 0 4 233 231 222 224
		f 4 -392 389 375 -377
		mu 0 4 225 232 223 216
		f 4 -395 392 378 -394
		mu 0 4 235 234 225 226
		f 4 -397 393 380 -396
		mu 0 4 236 235 226 227
		f 4 -399 395 382 -398
		mu 0 4 237 236 227 228
		f 4 -401 397 384 -400
		mu 0 4 238 237 228 229
		f 4 -403 399 386 -402
		mu 0 4 239 238 229 230
		f 4 -405 401 388 -404
		mu 0 4 240 239 230 231
		f 4 -407 403 390 -406
		mu 0 4 242 240 231 233
		f 4 -408 405 391 -393
		mu 0 4 234 241 232 225
		f 4 -411 408 394 -410
		mu 0 4 244 243 234 235
		f 4 -413 409 396 -412
		mu 0 4 245 244 235 236
		f 4 -415 411 398 -414
		mu 0 4 246 245 236 237
		f 4 -417 413 400 -416
		mu 0 4 247 246 237 238
		f 4 -419 415 402 -418
		mu 0 4 248 247 238 239
		f 4 -421 417 404 -420
		mu 0 4 249 248 239 240
		f 4 -423 419 406 -422
		mu 0 4 251 249 240 242
		f 4 -424 421 407 -409
		mu 0 4 243 250 241 234
		f 4 -427 424 410 -426
		mu 0 4 253 252 243 244
		f 4 -429 425 412 -428
		mu 0 4 254 253 244 245
		f 4 -431 427 414 -430
		mu 0 4 255 254 245 246
		f 4 -433 429 416 -432
		mu 0 4 256 255 246 247
		f 4 -435 431 418 -434
		mu 0 4 257 256 247 248
		f 4 -437 433 420 -436
		mu 0 4 258 257 248 249
		f 4 -439 435 422 -438
		mu 0 4 260 258 249 251
		f 4 -440 437 423 -425
		mu 0 4 252 259 250 243
		f 4 -443 440 426 -442
		mu 0 4 262 261 252 253
		f 4 -445 441 428 -444
		mu 0 4 263 262 253 254
		f 4 -447 443 430 -446
		mu 0 4 264 263 254 255
		f 4 -449 445 432 -448
		mu 0 4 265 264 255 256
		f 4 -451 447 434 -450
		mu 0 4 266 265 256 257
		f 4 -453 449 436 -452
		mu 0 4 267 266 257 258
		f 4 -455 451 438 -454
		mu 0 4 269 267 258 260
		f 4 -456 453 439 -441
		mu 0 4 261 268 259 252
		f 4 -459 456 442 -458
		mu 0 4 271 270 261 262
		f 4 -461 457 444 -460
		mu 0 4 272 271 262 263
		f 4 -463 459 446 -462
		mu 0 4 273 272 263 264
		f 4 -465 461 448 -464
		mu 0 4 274 273 264 265
		f 4 -467 463 450 -466
		mu 0 4 275 274 265 266
		f 4 -469 465 452 -468
		mu 0 4 276 275 266 267
		f 4 -471 467 454 -470
		mu 0 4 278 276 267 269
		f 4 -472 469 455 -457
		mu 0 4 270 277 268 261
		f 4 -475 472 458 -474
		mu 0 4 280 279 270 271
		f 4 -477 473 460 -476
		mu 0 4 281 280 271 272
		f 4 -479 475 462 -478
		mu 0 4 282 281 272 273
		f 4 -481 477 464 -480
		mu 0 4 283 282 273 274
		f 4 -483 479 466 -482
		mu 0 4 284 283 274 275
		f 4 -485 481 468 -484
		mu 0 4 285 284 275 276
		f 4 -487 483 470 -486
		mu 0 4 287 285 276 278
		f 4 -488 485 471 -473
		mu 0 4 279 286 277 270
		f 4 -491 488 474 -490
		mu 0 4 289 288 279 280
		f 4 -493 489 476 -492
		mu 0 4 290 289 280 281
		f 4 -495 491 478 -494
		mu 0 4 291 290 281 282
		f 4 -497 493 480 -496
		mu 0 4 292 291 282 283
		f 4 -499 495 482 -498
		mu 0 4 293 292 283 284
		f 4 -501 497 484 -500
		mu 0 4 294 293 284 285
		f 4 -503 499 486 -502
		mu 0 4 296 294 285 287
		f 4 -504 501 487 -489
		mu 0 4 288 295 286 279
		f 4 -507 504 490 -506
		mu 0 4 298 297 288 289
		f 4 -509 505 492 -508
		mu 0 4 299 298 289 290
		f 4 -511 507 494 -510
		mu 0 4 300 299 290 291
		f 4 -513 509 496 -512
		mu 0 4 301 300 291 292
		f 4 -515 511 498 -514
		mu 0 4 302 301 292 293
		f 4 -517 513 500 -516
		mu 0 4 303 302 293 294
		f 4 -519 515 502 -518
		mu 0 4 305 303 294 296
		f 4 -520 517 503 -505
		mu 0 4 297 304 295 288
		f 4 -523 520 506 -522
		mu 0 4 307 306 297 298
		f 4 -525 521 508 -524
		mu 0 4 308 307 298 299
		f 4 -527 523 510 -526
		mu 0 4 309 308 299 300
		f 4 -529 525 512 -528
		mu 0 4 310 309 300 301
		f 4 -531 527 514 -530
		mu 0 4 311 310 301 302
		f 4 -533 529 516 -532
		mu 0 4 312 311 302 303
		f 4 -535 531 518 -534
		mu 0 4 314 312 303 305
		f 4 -536 533 519 -521
		mu 0 4 306 313 304 297
		f 4 -539 536 522 -538
		mu 0 4 316 315 306 307
		f 4 -541 537 524 -540
		mu 0 4 317 316 307 308
		f 4 -543 539 526 -542
		mu 0 4 318 317 308 309
		f 4 -545 541 528 -544
		mu 0 4 319 318 309 310
		f 4 -547 543 530 -546
		mu 0 4 320 319 310 311
		f 4 -549 545 532 -548
		mu 0 4 321 320 311 312
		f 4 -551 547 534 -550
		mu 0 4 323 321 312 314
		f 4 -552 549 535 -537
		mu 0 4 315 322 313 306
		f 4 -555 552 538 -554
		mu 0 4 325 324 315 316
		f 4 -557 553 540 -556
		mu 0 4 326 325 316 317
		f 4 -559 555 542 -558
		mu 0 4 327 326 317 318
		f 4 -561 557 544 -560
		mu 0 4 328 327 318 319
		f 4 -563 559 546 -562
		mu 0 4 329 328 319 320
		f 4 -565 561 548 -564
		mu 0 4 330 329 320 321
		f 4 -567 563 550 -566
		mu 0 4 332 330 321 323
		f 4 -568 565 551 -553
		mu 0 4 324 331 322 315
		f 4 -571 568 554 -570
		mu 0 4 334 333 324 325
		f 4 -573 569 556 -572
		mu 0 4 335 334 325 326
		f 4 -575 571 558 -574
		mu 0 4 336 335 326 327
		f 4 -577 573 560 -576
		mu 0 4 337 336 327 328
		f 4 -579 575 562 -578
		mu 0 4 338 337 328 329
		f 4 -581 577 564 -580
		mu 0 4 339 338 329 330
		f 4 -583 579 566 -582
		mu 0 4 341 339 330 332
		f 4 -584 581 567 -569
		mu 0 4 333 340 331 324
		f 4 -587 584 570 -586
		mu 0 4 343 342 333 334
		f 4 -589 585 572 -588
		mu 0 4 344 343 334 335
		f 4 -591 587 574 -590
		mu 0 4 345 344 335 336
		f 4 -593 589 576 -592
		mu 0 4 346 345 336 337
		f 4 -595 591 578 -594
		mu 0 4 347 346 337 338
		f 4 -597 593 580 -596
		mu 0 4 348 347 338 339
		f 4 -599 595 582 -598
		mu 0 4 350 348 339 341
		f 4 -600 597 583 -585
		mu 0 4 342 349 340 333
		f 4 -603 600 586 -602
		mu 0 4 352 351 342 343
		f 4 -605 601 588 -604
		mu 0 4 353 352 343 344
		f 4 -607 603 590 -606
		mu 0 4 354 353 344 345
		f 4 -609 605 592 -608
		mu 0 4 355 354 345 346
		f 4 -611 607 594 -610
		mu 0 4 356 355 346 347
		f 4 -613 609 596 -612
		mu 0 4 357 356 347 348
		f 4 -615 611 598 -614
		mu 0 4 359 357 348 350
		f 4 -616 613 599 -601
		mu 0 4 351 358 349 342
		f 4 -619 616 602 -618
		mu 0 4 361 360 351 352
		f 4 -621 617 604 -620
		mu 0 4 362 361 352 353
		f 4 -623 619 606 -622
		mu 0 4 363 362 353 354
		f 4 -625 621 608 -624
		mu 0 4 364 363 354 355
		f 4 -627 623 610 -626
		mu 0 4 365 364 355 356
		f 4 -629 625 612 -628
		mu 0 4 366 365 356 357
		f 4 -631 627 614 -630
		mu 0 4 368 366 357 359
		f 4 -632 629 615 -617
		mu 0 4 360 367 358 351
		f 4 -635 632 618 -634
		mu 0 4 370 369 360 361
		f 4 -637 633 620 -636
		mu 0 4 371 370 361 362
		f 4 -639 635 622 -638
		mu 0 4 372 371 362 363
		f 4 -641 637 624 -640
		mu 0 4 373 372 363 364
		f 4 -643 639 626 -642
		mu 0 4 374 373 364 365
		f 4 -645 641 628 -644
		mu 0 4 375 374 365 366
		f 4 -647 643 630 -646
		mu 0 4 377 375 366 368
		f 4 -648 645 631 -633
		mu 0 4 369 376 367 360
		f 4 -651 648 634 -650
		mu 0 4 379 378 369 370
		f 4 -653 649 636 -652
		mu 0 4 380 379 370 371
		f 4 -655 651 638 -654
		mu 0 4 381 380 371 372
		f 4 -657 653 640 -656
		mu 0 4 382 381 372 373
		f 4 -659 655 642 -658
		mu 0 4 383 382 373 374
		f 4 -661 657 644 -660
		mu 0 4 384 383 374 375
		f 4 -663 659 646 -662
		mu 0 4 386 384 375 377
		f 4 -664 661 647 -649
		mu 0 4 378 385 376 369
		f 4 -667 664 650 -666
		mu 0 4 388 387 378 379
		f 4 -669 665 652 -668
		mu 0 4 389 388 379 380
		f 4 -671 667 654 -670
		mu 0 4 390 389 380 381
		f 4 -673 669 656 -672
		mu 0 4 391 390 381 382
		f 4 -675 671 658 -674
		mu 0 4 392 391 382 383
		f 4 -677 673 660 -676
		mu 0 4 393 392 383 384
		f 4 -679 675 662 -678
		mu 0 4 395 393 384 386
		f 4 -680 677 663 -665
		mu 0 4 387 394 385 378
		f 4 -683 680 666 -682
		mu 0 4 397 396 387 388
		f 4 -685 681 668 -684
		mu 0 4 398 397 388 389
		f 4 -687 683 670 -686
		mu 0 4 399 398 389 390
		f 4 -689 685 672 -688
		mu 0 4 400 399 390 391
		f 4 -691 687 674 -690
		mu 0 4 401 400 391 392
		f 4 -693 689 676 -692
		mu 0 4 402 401 392 393
		f 4 -695 691 678 -694
		mu 0 4 404 402 393 395
		f 4 -696 693 679 -681
		mu 0 4 396 403 394 387
		f 4 -699 696 682 -698
		mu 0 4 406 405 396 397
		f 4 -701 697 684 -700
		mu 0 4 407 406 397 398
		f 4 -703 699 686 -702
		mu 0 4 408 407 398 399
		f 4 -705 701 688 -704
		mu 0 4 409 408 399 400
		f 4 -707 703 690 -706
		mu 0 4 410 409 400 401
		f 4 -709 705 692 -708
		mu 0 4 411 410 401 402
		f 4 -711 707 694 -710
		mu 0 4 413 411 402 404
		f 4 -712 709 695 -697
		mu 0 4 405 412 403 396
		f 4 -715 712 698 -714
		mu 0 4 415 414 405 406
		f 4 -717 713 700 -716
		mu 0 4 416 415 406 407
		f 4 -719 715 702 -718
		mu 0 4 417 416 407 408
		f 4 -721 717 704 -720
		mu 0 4 418 417 408 409
		f 4 -723 719 706 -722
		mu 0 4 419 418 409 410
		f 4 -725 721 708 -724
		mu 0 4 420 419 410 411
		f 4 -727 723 710 -726
		mu 0 4 422 420 411 413
		f 4 -728 725 711 -713
		mu 0 4 414 421 412 405
		f 4 -731 728 714 -730
		mu 0 4 424 423 414 415
		f 4 -733 729 716 -732
		mu 0 4 425 424 415 416
		f 4 -735 731 718 -734
		mu 0 4 426 425 416 417
		f 4 -737 733 720 -736
		mu 0 4 427 426 417 418
		f 4 -739 735 722 -738
		mu 0 4 428 427 418 419
		f 4 -741 737 724 -740
		mu 0 4 429 428 419 420
		f 4 -743 739 726 -742
		mu 0 4 431 429 420 422
		f 4 -744 741 727 -729
		mu 0 4 423 430 421 414
		f 4 -747 744 730 -746
		mu 0 4 433 432 423 424
		f 4 -749 745 732 -748
		mu 0 4 434 433 424 425
		f 4 -751 747 734 -750
		mu 0 4 435 434 425 426
		f 4 -753 749 736 -752
		mu 0 4 436 435 426 427
		f 4 -755 751 738 -754
		mu 0 4 437 436 427 428
		f 4 -757 753 740 -756
		mu 0 4 438 437 428 429
		f 4 -759 755 742 -758
		mu 0 4 440 438 429 431
		f 4 -760 757 743 -745
		mu 0 4 432 439 430 423
		f 4 -763 760 746 -762
		mu 0 4 442 441 432 433
		f 4 -765 761 748 -764
		mu 0 4 443 442 433 434
		f 4 -767 763 750 -766
		mu 0 4 444 443 434 435
		f 4 -769 765 752 -768
		mu 0 4 445 444 435 436
		f 4 -771 767 754 -770
		mu 0 4 446 445 436 437
		f 4 -773 769 756 -772
		mu 0 4 447 446 437 438
		f 4 -775 771 758 -774
		mu 0 4 449 447 438 440
		f 4 -776 773 759 -761
		mu 0 4 441 448 439 432
		f 4 -779 776 762 -778
		mu 0 4 451 450 441 442
		f 4 -781 777 764 -780
		mu 0 4 452 451 442 443
		f 4 -783 779 766 -782
		mu 0 4 453 452 443 444
		f 4 -785 781 768 -784
		mu 0 4 454 453 444 445
		f 4 -787 783 770 -786
		mu 0 4 455 454 445 446
		f 4 -789 785 772 -788
		mu 0 4 456 455 446 447
		f 4 -791 787 774 -790
		mu 0 4 458 456 447 449
		f 4 -792 789 775 -777
		mu 0 4 450 457 448 441
		f 4 -795 792 778 -794
		mu 0 4 460 459 450 451
		f 4 -797 793 780 -796
		mu 0 4 461 460 451 452
		f 4 -799 795 782 -798
		mu 0 4 462 461 452 453
		f 4 -801 797 784 -800
		mu 0 4 463 462 453 454
		f 4 -803 799 786 -802
		mu 0 4 464 463 454 455
		f 4 -805 801 788 -804
		mu 0 4 465 464 455 456
		f 4 -807 803 790 -806
		mu 0 4 467 465 456 458
		f 4 -808 805 791 -793
		mu 0 4 459 466 457 450
		f 4 -811 808 794 -810
		mu 0 4 469 468 459 460
		f 4 -813 809 796 -812
		mu 0 4 470 469 460 461
		f 4 -815 811 798 -814
		mu 0 4 471 470 461 462
		f 4 -817 813 800 -816
		mu 0 4 472 471 462 463
		f 4 -819 815 802 -818
		mu 0 4 473 472 463 464
		f 4 -821 817 804 -820
		mu 0 4 474 473 464 465
		f 4 -823 819 806 -822
		mu 0 4 476 474 465 467
		f 4 -824 821 807 -809
		mu 0 4 468 475 466 459
		f 4 -827 824 810 -826
		mu 0 4 478 477 468 469
		f 4 -829 825 812 -828
		mu 0 4 479 478 469 470
		f 4 -831 827 814 -830
		mu 0 4 480 479 470 471
		f 4 -833 829 816 -832
		mu 0 4 481 480 471 472
		f 4 -835 831 818 -834
		mu 0 4 482 481 472 473
		f 4 -837 833 820 -836
		mu 0 4 483 482 473 474
		f 4 -839 835 822 -838
		mu 0 4 485 483 474 476
		f 4 -840 837 823 -825
		mu 0 4 477 484 475 468
		f 4 -843 840 826 -842
		mu 0 4 487 486 477 478
		f 4 -845 841 828 -844
		mu 0 4 488 487 478 479
		f 4 -847 843 830 -846
		mu 0 4 489 488 479 480
		f 4 -849 845 832 -848
		mu 0 4 490 489 480 481
		f 4 -851 847 834 -850
		mu 0 4 491 490 481 482
		f 4 -853 849 836 -852
		mu 0 4 492 491 482 483
		f 4 -855 851 838 -854
		mu 0 4 494 492 483 485
		f 4 -856 853 839 -841
		mu 0 4 486 493 484 477
		f 4 -859 856 842 -858
		mu 0 4 496 495 486 487
		f 4 -861 857 844 -860
		mu 0 4 497 496 487 488
		f 4 -863 859 846 -862
		mu 0 4 498 497 488 489
		f 4 -865 861 848 -864
		mu 0 4 499 498 489 490
		f 4 -867 863 850 -866
		mu 0 4 500 499 490 491
		f 4 -869 865 852 -868
		mu 0 4 501 500 491 492
		f 4 -871 867 854 -870
		mu 0 4 503 501 492 494
		f 4 -872 869 855 -857
		mu 0 4 495 502 493 486
		f 4 -875 872 858 -874
		mu 0 4 505 504 495 496
		f 4 -877 873 860 -876
		mu 0 4 506 505 496 497
		f 4 -879 875 862 -878
		mu 0 4 507 506 497 498
		f 4 -881 877 864 -880
		mu 0 4 508 507 498 499
		f 4 -883 879 866 -882
		mu 0 4 509 508 499 500
		f 4 -885 881 868 -884
		mu 0 4 510 509 500 501
		f 4 -887 883 870 -886
		mu 0 4 512 510 501 503
		f 4 -888 885 871 -873
		mu 0 4 504 511 502 495
		f 4 -891 888 874 -890
		mu 0 4 514 513 504 505
		f 4 -893 889 876 -892
		mu 0 4 515 514 505 506
		f 4 -895 891 878 -894
		mu 0 4 516 515 506 507
		f 4 -897 893 880 -896
		mu 0 4 517 516 507 508
		f 4 -899 895 882 -898
		mu 0 4 518 517 508 509
		f 4 -901 897 884 -900
		mu 0 4 519 518 509 510
		f 4 -903 899 886 -902
		mu 0 4 521 519 510 512
		f 4 -904 901 887 -889
		mu 0 4 513 520 511 504
		f 4 -907 904 890 -906
		mu 0 4 523 522 513 514
		f 4 -909 905 892 -908
		mu 0 4 524 523 514 515
		f 4 -911 907 894 -910
		mu 0 4 525 524 515 516
		f 4 -913 909 896 -912
		mu 0 4 526 525 516 517
		f 4 -915 911 898 -914
		mu 0 4 527 526 517 518
		f 4 -917 913 900 -916
		mu 0 4 528 527 518 519
		f 4 -919 915 902 -918
		mu 0 4 530 528 519 521
		f 4 -920 917 903 -905
		mu 0 4 522 529 520 513
		f 4 -923 920 906 -922
		mu 0 4 532 531 522 523
		f 4 -925 921 908 -924
		mu 0 4 533 532 523 524
		f 4 -927 923 910 -926
		mu 0 4 534 533 524 525
		f 4 -929 925 912 -928
		mu 0 4 535 534 525 526
		f 4 -931 927 914 -930
		mu 0 4 536 535 526 527
		f 4 -933 929 916 -932
		mu 0 4 537 536 527 528
		f 4 -935 931 918 -934
		mu 0 4 539 537 528 530
		f 4 -936 933 919 -921
		mu 0 4 531 538 529 522
		f 4 -939 936 922 -938
		mu 0 4 541 540 531 532
		f 4 -941 937 924 -940
		mu 0 4 542 541 532 533
		f 4 -943 939 926 -942
		mu 0 4 543 542 533 534
		f 4 -945 941 928 -944
		mu 0 4 544 543 534 535
		f 4 -947 943 930 -946
		mu 0 4 545 544 535 536
		f 4 -949 945 932 -948
		mu 0 4 546 545 536 537
		f 4 -951 947 934 -950
		mu 0 4 548 546 537 539
		f 4 -952 949 935 -937
		mu 0 4 540 547 538 531
		f 4 -955 952 938 -954
		mu 0 4 550 549 540 541
		f 4 -957 953 940 -956
		mu 0 4 551 550 541 542
		f 4 -959 955 942 -958
		mu 0 4 552 551 542 543
		f 4 -961 957 944 -960
		mu 0 4 553 552 543 544
		f 4 -963 959 946 -962
		mu 0 4 554 553 544 545
		f 4 -965 961 948 -964
		mu 0 4 555 554 545 546
		f 4 -967 963 950 -966
		mu 0 4 557 555 546 548
		f 4 -968 965 951 -953
		mu 0 4 549 556 547 540
		f 4 -971 968 954 -970
		mu 0 4 559 558 549 550
		f 4 -973 969 956 -972
		mu 0 4 560 559 550 551
		f 4 -975 971 958 -974
		mu 0 4 561 560 551 552
		f 4 -977 973 960 -976
		mu 0 4 562 561 552 553
		f 4 -979 975 962 -978
		mu 0 4 563 562 553 554
		f 4 -981 977 964 -980
		mu 0 4 564 563 554 555
		f 4 -983 979 966 -982
		mu 0 4 566 564 555 557
		f 4 -984 981 967 -969
		mu 0 4 558 565 556 549
		f 4 -987 984 970 -986
		mu 0 4 568 567 558 559
		f 4 -989 985 972 -988
		mu 0 4 569 568 559 560
		f 4 -991 987 974 -990
		mu 0 4 570 569 560 561
		f 4 -993 989 976 -992
		mu 0 4 571 570 561 562;
	setAttr ".fc[500:503]"
		f 4 -995 991 978 -994
		mu 0 4 572 571 562 563
		f 4 -997 993 980 -996
		mu 0 4 573 572 563 564
		f 4 -999 995 982 -998
		mu 0 4 575 573 564 566
		f 4 -1000 997 983 -985
		mu 0 4 567 574 565 558;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "Rig" -p "placement_ctrl";
createNode transform -n "vine_crv" -p "Rig";
	setAttr ".s" -type "double3" 1 1.1315211185922631 1 ;
createNode nurbsCurve -n "vine_crvShape" -p "vine_crv";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		3 24 0 no 3
		29 0 0 0 0.041666666666666664 0.083333333333333329 0.125 0.16666666666666666
		 0.20833333333333337 0.25 0.29166666666666669 0.33333333333333331 0.375 0.41666666666666674
		 0.45833333333333326 0.5 0.54166666666666663 0.58333333333333337 0.625 0.66666666666666663
		 0.70833333333333337 0.75 0.79166666666666652 0.83333333333333348 0.875 0.91666666666666652
		 0.95833333333333348 1 1 1
		27
		0 -0.014144106020844578 0.34691744195707253
		0 0.25134273208106744 0.37794152087136562
		0 0.22266152920797841 0.29418656322856918
		-0.0021729337747729005 0.98844463480259237 0.43406544262082952
		-0.0021729337747729005 1.9700757954673429 0.2855917208625145
		-0.0021729337747729005 2.7706327468922267 0.18528677411583841
		-0.0061241692701869965 3.4458487570269192 -0.34366920838883208
		0.22275569466364509 4.42666918962232 -0.25857025689619684
		-0.28062295338550847 5.2800757093016299 0.75029979476623532
		-0.7837819627639071 5.2923782450550148 1.6371709155678509
		-1.4179456582060477 6.1608697161597199 2.5330761607702801
		-3.045785281699438 6.2014766292599646 2.5298196043688201
		-4.5369327839863569 5.3818759632651405 1.9961418695016009
		-4.8719070234841197 5.394128541561531 0.91599046137445805
		-5.0742567086631185 5.4015300222384353 -0.16937396281297218
		-5.9774695597618761 5.4345674468266223 -0.79379787773699428
		-6.975320886280949 5.471066526650378 -0.52618742222904613
		-7.7893982427020321 5.5008435822347748 0.47379982766080975
		-8.5080038877334783 6.508952106132508 1.905168600872619
		-9.3675877957632139 6.5403936854946672 2.2035506294270313
		-10.233397863607305 6.5720630032964458 1.966658932915057
		-10.772360390652896 5.6099533971498916 0.17950016919074752
		-11.695316930547945 5.6437129999366187 0.14760838918456357
		-12.406076344276016 5.5578221324154153 0.87958211653504892
		-13.111510619018167 5.9751716226486025 1.162830012264664
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
		 0.20833333333333337 0.25 0.29166666666666669 0.33333333333333331 0.375 0.41666666666666674
		 0.45833333333333326 0.5 0.54166666666666663 0.58333333333333337 0.625 0.66666666666666663
		 0.70833333333333337 0.75 0.79166666666666652 0.83333333333333348 0.875 0.91666666666666652
		 0.95833333333333348 1 1 1
		27
		0 -0.014144106020844332 -0.002376605912509534
		0 0.083269556600201092 -0.002376605912509534
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
		0 3.4927476313203738 -0.0023766059125094456
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
createNode transform -n "vine_unwrapped:Mesh";
	setAttr ".t" -type "double3" 0 0 -9.6969447531409791 ;
createNode transform -n "transform1" -p "vine_unwrapped:Mesh";
	setAttr ".v" no;
createNode mesh -n "vine_unwrapped:MeshShape" -p "transform1";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:641]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.39746452778550562 0.3429605197338832 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 736 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.41716799 0.32204801 0.39565799
		 0.314964 0.39122 0.245049 0.462176 0.26956502 0.375222 0.32472399 0.32394603 0.27836201
		 0.36741701 0.34621 0.30006704 0.34937799 0.37741199 0.36707699 0.33296403 0.416554
		 0.39947203 0.37463501 0.40367803 0.44087201 0.42038903 0.36433199 0.47073904 0.40778801
		 0.42764398 0.34236401 0.49486199 0.33698499 0.39756098 0.344749 0.89986116 0.98287106
		 0.90216875 0.98314333 0.90042788 0.9879595 0.90438944 0.9839927 0.90645921 0.98538864
		 0.90798211 0.98752302 0.8924365 0.98883104 0.89329845 0.98635554 0.8952263 0.9844963
		 0.89750844 0.98330438 0.8834095 0.97052252 0.89072526 0.96802264 0.87694305 0.97504002
		 0.87225026 0.98168629 0.91891396 0.97308552 0.92588186 0.97774196 0.91179097 0.97003281
		 0.90493846 0.96815348 0.89802521 0.96736795 0.87600505 0.95808953 0.88512081 0.95401633
		 0.86725765 0.96311796 0.85843539 0.96863937 0.92507041 0.95832109 0.93479717 0.96324182
		 0.9151901 0.95409268 0.90499568 0.95168686 0.89482534 0.95167792 0.87059075 0.94529414
		 0.88120484 0.94227374 0.86035055 0.94919062 0.85012686 0.9529829 0.92634028 0.94579577
		 0.93727869 0.94833165 0.91514844 0.94308591 0.90372705 0.94118744 0.89230567 0.94081628
		 0.86687088 0.93234569 0.87831134 0.93045294 0.85585856 0.93497193 0.84498602 0.93731117
		 0.92620671 0.93329626 0.93749744 0.93436325 0.91449535 0.93191159 0.9024142 0.93058062
		 0.8902365 0.92989373 0.86415273 0.91890967 0.8759467 0.91872001 0.85282809 0.91995227
		 0.84167421 0.92103273 0.92522955 0.92012197 0.93665612 0.91972429 0.91329086 0.92053759
		 0.90083688 0.92032063 0.88825345 0.91944325 0.86277407 0.90458345 0.87450266 0.90655893
		 0.85134208 0.904055 0.84001559 0.90443575 0.92305994 0.9062162 0.93435693 0.9038381
		 0.9113794 0.90898752 0.89909309 0.91018254 0.88663304 0.90902042 0.8637476 0.89087778
		 0.87532306 0.89367306 0.85220218 0.88980222 0.84075701 0.89000916 0.92131186 0.89150345
		 0.93225759 0.88780701 0.91023993 0.89557457 0.89872289 0.89761019 0.88697267 0.89663994
		 0.86692393 0.87899566 0.87837815 0.8810271 0.85532784 0.87840754 0.84395182 0.87895501
		 0.92126471 0.87611496 0.93169445 0.87167501 0.91078597 0.88048345 0.90019512 0.88301659
		 0.88943493 0.8829633 0.87205696 0.86887777 0.88329268 0.86868203 0.86058569 0.86972225
		 0.84951442 0.87104619 0.92336774 0.8600446 0.93314999 0.85549498 0.91349578 0.8638677
		 0.90367925 0.86675763 0.89375025 0.86828744 0.87915158 0.85813415 0.889274 0.85457361
		 0.86827981 0.86132085 0.85742533 0.86402416 0.92730254 0.8428725 0.93767083 0.83986008
		 0.91745883 0.84483981 0.9080776 0.84742653 0.89878666 0.8508516 0.88217854 0.8399334
		 0.89151937 0.833377 0.87244099 0.84592283 0.86192495 0.8507576 0.93265319 0.82484055
		 0.94410992 0.82395768 0.92157602 0.82429147 0.91104251 0.82476938 0.90104336 0.82784963
		 0.87571466 0.81648016 0.88575888 0.80920541 0.86553389 0.82351112 0.85480136 0.82928491
		 0.93205863 0.80183458 0.94418216 0.80133498 0.91984069 0.80090547 0.90779346 0.80084896
		 0.89634836 0.80354381 0.86471152 0.7950666 0.87584281 0.78777051 0.85368508 0.8015731
		 0.84240377 0.80656791 0.9263854 0.77817142 0.93880099 0.77754843 0.91350877 0.77760243
		 0.90048569 0.77814877 0.8877455 0.78156215 0.85135818 0.77911693 0.8637926 0.77428138
		 0.83925462 0.78288692 0.82745129 0.78599656 0.91642302 0.76028061 0.9286499 0.75824678
		 0.90358686 0.76192176 0.89022124 0.76464117 0.87677896 0.76902688 0.84061259 0.76403463
		 0.85385054 0.76239961 0.82787508 0.76548803 0.81567723 0.7674123 0.90648609 0.74967968
		 0.9183659 0.7461161 0.89400208 0.75313514 0.88083065 0.75671619 0.86733574 0.75998437
		 0.83437932 0.75015438 0.8476851 0.75029111 0.82135171 0.74971032 0.80865407 0.74975628
		 0.89936781 0.73963314 0.91157502 0.73684049 0.88704187 0.74305046 0.87422454 0.74657118
		 0.86103195 0.74918747 0.83015823 0.73490465 0.84281063 0.73628956 0.81743628 0.73344147
		 0.80461872 0.73254859 0.89411789 0.73000115 0.90683693 0.72820413 0.88132018 0.7327863
		 0.86837155 0.73532408 0.85550123 0.73659456 0.82665569 0.7164247 0.83903873 0.71767032
		 0.81389475 0.71627504 0.80075431 0.71671641 0.88982505 0.72086722 0.90293938 0.7201547
		 0.87667465 0.72156566 0.86375499 0.72107637 0.85128063 0.71952057 0.82390624 0.69493729
		 0.83701241 0.69498676 0.810601 0.69657475 0.79709196 0.69827974 0.88852853 0.70588344
		 0.90189785 0.70710778 0.8754462 0.703897 0.86261845 0.70062631 0.84988344 0.6971615
		 0.8226527 0.67056954 0.8367371 0.67040199 0.80866486 0.67225635 0.79472816 0.67374498
		 0.89183265 0.6833427 0.90553319 0.68584359 0.8782177 0.68027425 0.86458629 0.67630076
		 0.85076863 0.67252326 0.8227461 0.64590812 0.83765697 0.6467005 0.80823827 0.64661026
		 0.79395956 0.64741862 0.89707106 0.65866518 0.91124022 0.66070497 0.88264179 0.65632415
		 0.86787927 0.6530211 0.85281307 0.64936906 0.82474172 0.62464029 0.84001297 0.62744421
		 0.80990165 0.62342608 0.79535383 0.62323636 0.90155983 0.63488501 0.91610157 0.63516963
		 0.88661963 0.63494629 0.87122673 0.63381875 0.85558623 0.63101798 0.82825625 0.60716379
		 0.84357631 0.61109829 0.81318724 0.60466212 0.79842085 0.60389221 0.90467745 0.61318976
		 0.91930687 0.61182249 0.88980246 0.6152882 0.87456328 0.61619264 0.85906452 0.61468524
		 0.83281785 0.59275162 0.8481425 0.59617007 0.81754637 0.59014332 0.80256641 0.58940303
		 0.90779054 0.59352028 0.92241991 0.59133375 0.89316559 0.59640992 0.87838805 0.59849697
		 0.86336714 0.59848225 0.83770108 0.57995152 0.85300308 0.58200282 0.82226557 0.57793599
		 0.80705553 0.5776484 0.91135722 0.57528841 0.92606795 0.57282305 0.896909 0.57830459;
	setAttr ".uvst[0].uvsp[250:499]" 0.88252169 0.58111405 0.86794323 0.58254904
		 0.84291261 0.56765425 0.85801017 0.56768513 0.82739151 0.56691623 0.81192493 0.5673309
		 0.91556078 0.55840826 0.93064988 0.55651236 0.90096617 0.56071842 0.88674206 0.56362212
		 0.87254244 0.56625283 0.84764487 0.55388641 0.86234546 0.55178839 0.83228272 0.55511343
		 0.81662226 0.55671304 0.92049044 0.54311395 0.93615508 0.54252434 0.90534854 0.54390031
		 0.89079279 0.54594082 0.87658435 0.54888803 0.85116881 0.53801787 0.86561632 0.53447592
		 0.83598441 0.54117745 0.82020193 0.5442344 0.92551595 0.52917355 0.94171214 0.53003031
		 0.90965879 0.52821821 0.89441729 0.5287931 0.8798393 0.53111261 0.85446703 0.52059954
		 0.86899978 0.51560813 0.83942926 0.52610379 0.82359505 0.53084737 0.93153816 0.51736826
		 0.94819844 0.51973158 0.91503268 0.51405102 0.89899582 0.51192546 0.88368171 0.51242912
		 0.85585433 0.50237179 0.871131 0.49660689 0.84072435 0.50984079 0.8248179 0.51616013
		 0.93720442 0.50589836 0.95430982 0.50890255 0.92026341 0.50112826 0.90354109 0.49641022
		 0.88706213 0.49445307 0.85426259 0.48471937 0.87084776 0.47886872 0.83856654 0.49316353
		 0.82244968 0.50059539 0.94086963 0.49164256 0.95848727 0.49445108 0.92339456 0.48688951
		 0.90598637 0.48123306 0.88835096 0.47774833 0.84989882 0.46862471 0.86818397 0.46253595
		 0.83313823 0.47762814 0.81678176 0.48610273 0.94201922 0.47464257 0.96008456 0.47669697
		 0.92409217 0.47065124 0.90603364 0.46535611 0.88732868 0.46165735 0.84238857 0.45702097
		 0.86201209 0.4498387 0.82412523 0.46545908 0.80685556 0.47336817 0.93950486 0.4540599
		 0.95781022 0.45606196 0.92121899 0.45077106 0.90236616 0.44746518 0.88245332 0.4464747
		 0.8305335 0.4476499 0.85119104 0.44101802 0.81056994 0.45277599 0.79170269 0.45780009
		 0.93180734 0.42944404 0.95077574 0.43129697 0.91261715 0.42823225 0.89275086 0.42959467
		 0.87208772 0.4341765 0.81701201 0.43085092 0.8384282 0.42664742 0.79586726 0.43287686
		 0.77564806 0.43597418 0.92136312 0.40480506 0.94144982 0.40555692 0.90105861 0.40636557
		 0.88045955 0.41175398 0.85961556 0.41952422 0.80555856 0.40713745 0.82753503 0.40416503
		 0.78350288 0.40833712 0.76211095 0.4111931 0.91381609 0.38221121 0.93506551 0.38313794
		 0.89224541 0.38446105 0.87062722 0.39056283 0.84916061 0.39815459 0.79539239 0.38096362
		 0.81803632 0.37829867 0.77251756 0.38251591 0.75002152 0.38570762 0.90954602 0.36221522
		 0.93205321 0.36468714 0.88635343 0.36329389 0.86313796 0.36780709 0.84045267 0.37357426
		 0.78554553 0.35521674 0.80897796 0.3530075 0.7618587 0.35691595 0.73818552 0.35989016
		 0.90691769 0.34463221 0.9307425 0.34911358 0.88190365 0.34405363 0.85680842 0.3463192
		 0.83251017 0.34978282 0.77552092 0.3288973 0.79967982 0.32751966 0.75113946 0.33147746
		 0.72636992 0.3352887 0.90377557 0.33118731 0.92920738 0.33619964 0.87705183 0.32922944
		 0.85029244 0.32798955 0.82439047 0.32725102 0.76538527 0.30178207 0.7914263 0.30046684
		 0.739838 0.30720985 0.71411669 0.31392702 0.89991915 0.32130927 0.92679554 0.32544315
		 0.87236214 0.31761691 0.84502584 0.31125247 0.81808454 0.30426288 0.75848091 0.2787109
		 0.78698766 0.27867776 0.73118097 0.2836746 0.70398575 0.28944188 0.9001444 0.30610615
		 0.92799723 0.31041521 0.87204075 0.30187774 0.84396338 0.29450509 0.81580079 0.28516972
		 0.75596982 0.25873756 0.78535986 0.26471019 0.72729999 0.25782782 0.69874144 0.25913131
		 0.90331441 0.28531128 0.9321543 0.28773284 0.87415648 0.2852928 0.84440398 0.28257924
		 0.81474584 0.27455401 0.75782895 0.2418108 0.78583348 0.25435072 0.72903967 0.234166
		 0.69958985 0.23140162 0.904917 0.26480299 0.9346661 0.26409715 0.87526011 0.27013606
		 0.84489685 0.27262175 0.8144834 0.26680684 0.76061881 0.22718126 0.78831595 0.2403872
		 0.73149782 0.21787706 0.70135987 0.2139512 0.90541828 0.24842897 0.93569982 0.24741766
		 0.87553591 0.25389093 0.84573871 0.25647652 0.81638104 0.25179473 0.76279771 0.21247512
		 0.79125738 0.22199422 0.73306859 0.20554426 0.70253223 0.2022399 0.90685767 0.23272398
		 0.93741554 0.23414755 0.87677616 0.23439917 0.84759688 0.23430195 0.81924224 0.23013079
		 0.76457584 0.194662 0.79331326 0.20142975 0.73433954 0.19048724 0.70330626 0.1891588
		 0.90865803 0.21486673 0.93951803 0.21764052 0.87837458 0.21414599 0.84927183 0.2122663
		 0.82117814 0.2079325 0.76546037 0.17626262 0.79492337 0.17914051 0.73442912 0.17713508
		 0.7029835 0.17972326 0.90973544 0.19900179 0.94091368 0.20296982 0.87933177 0.19501311
		 0.85047632 0.18995667 0.82279325 0.18428695 0.76469833 0.16070622 0.79548383 0.15708312
		 0.73365003 0.16874132 0.70235175 0.17563805 0.91062927 0.18597329 0.9417721 0.1921424
		 0.88099891 0.17692998 0.85283846 0.16718876 0.82481116 0.1597091 0.76368767 0.14974687
		 0.79510343 0.14025754 0.73295391 0.16186801 0.70144844 0.16998646 0.91295254 0.17040929
		 0.94365412 0.17932189 0.88430756 0.15786746 0.85621923 0.14599967 0.82660639 0.13900048
		 0.76334107 0.14377454 0.79416603 0.12969765 0.73201501 0.15622857 0.6994915 0.16197437
		 0.91658777 0.15189713 0.94636095 0.16457984 0.88832122 0.13664916 0.85866439 0.12512267
		 0.82658082 0.12217668 0.76210403 0.13639671 0.79269922 0.12105349 0.73009306 0.1471428
		 0.69710743 0.15074539 0.92064822 0.13459617 0.95041305 0.1487096 0.89134526 0.11858582
		 0.85914928 0.10834563 0.82500917 0.10936651 0.75931501 0.12332028 0.79086238 0.11104238
		 0.72723269 0.13139063 0.69443208 0.13486686 0.92403036 0.11961076 0.95541382 0.1308853
		 0.89258558 0.10650784 0.85874927 0.098440707 0.82381362 0.10044637 0.75674313 0.10560951
		 0.78966659 0.09916234 0.72423184 0.11089215 0.69145155 0.11543813 0.92577702 0.10584891;
	setAttr ".uvst[0].uvsp[500:735]" 0.9589209 0.11121023 0.89242172 0.098695755
		 0.85823274 0.093563795 0.82357866 0.093884259 0.75565159 0.089524746 0.78931868 0.086324483
		 0.72232044 0.093201756 0.68905222 0.097493976 0.92624629 0.091666609 0.9599278 0.093867868
		 0.89231509 0.0881024 0.8580119 0.084933341 0.82351297 0.084282041 0.75507891 0.075085968
		 0.78913003 0.072483093 0.72120851 0.078134298 0.68746167 0.081262589 0.92639637 0.076780438
		 0.96028 0.078633487 0.89231473 0.074053764 0.85796183 0.071645498 0.82346243 0.071026921
		 0.75440305 0.06001839 0.78863066 0.057671905 0.72037095 0.062534332 0.68638819 0.064535558
		 0.92687249 0.061228663 0.96095055 0.063098013 0.89254844 0.058884472 0.85792601 0.05690673
		 0.8231799 0.056395262 0.75381196 0.043579936 0.78816527 0.042709291 0.71975023 0.045125872
		 0.68567061 0.046608239 0.92733133 0.045805305 0.96163601 0.046390772 0.89274251 0.045013249
		 0.85786438 0.043848068 0.82290977 0.042849064 0.75379008 0.026637465 0.78827888 0.028581709
		 0.7194593 0.026787758 0.68518591 0.028558403 0.92716295 0.031407118 0.96152759 0.029270977
		 0.89261454 0.033464968 0.85779035 0.033590466 0.8229475 0.031501532 0.75431472 0.012944341
		 0.78899968 0.016460031 0.71942818 0.012328148 0.68479025 0.014343828 0.92637229 0.019148648
		 0.96065694 0.01548636 0.89217514 0.022730917 0.85780209 0.023532599 0.82340324 0.020879567
		 0.75465286 0.0059517324 0.78970218 0.0077853203 0.71942568 0.0059978366 0.68452179
		 0.0072376728 0.92568451 0.010409862 0.96014249 0.0084507465 0.89169049 0.012259722
		 0.85799789 0.012354046 0.82414013 0.010467559 0.024599254 0.72740245 0.057086255
		 0.71113044 0.12541625 0.85999346 0.098473258 0.87485039 0.090346254 0.69544643 0.15255126
		 0.84680843 0.12468026 0.68126541 0.18000826 0.83526742 0.15998825 0.66888243 0.20783925
		 0.8253994 0.19609624 0.6584264 0.23602724 0.81718445 0.23283225 0.64995646 0.26452726
		 0.81058943 0.27003726 0.64349741 0.29328224 0.80558842 0.30757126 0.63906044 0.32222724
		 0.80216444 0.34530824 0.63664842 0.35129225 0.80030644 0.38312626 0.63626343 0.38040626
		 0.80001044 0.42091024 0.63790441 0.40949324 0.80127347 0.45854524 0.64156842 0.43848026
		 0.80409539 0.49591225 0.64725041 0.46729526 0.80847943 0.53288227 0.65494239 0.49586725
		 0.81443346 0.56931627 0.66462946 0.52413225 0.82197344 0.60505724 0.67628044 0.55203027
		 0.83112144 0.63993227 0.68983144 0.57951826 0.84190941 0.67377526 0.70514542 0.60657424
		 0.85435641 0.70649523 0.72192442 0.63325626 0.86843646 0.73842323 0.73926747 0.65969026
		 0.88417941 0.23883298 0.26136875 0.25522298 0.29353577 0.14547899 0.32919374 0.21330497
		 0.23583975 0.18113697 0.21944976 0.14547899 0.21380176 0.10982098 0.21944976 0.077652976
		 0.23583975 0.052124977 0.26136875 0.035734981 0.29353577 0.030086979 0.32919374 0.035734981
		 0.36485174 0.052124977 0.39701876 0.077652976 0.42254776 0.10982098 0.43893775 0.14547899
		 0.44458574 0.18113697 0.43893775 0.21330398 0.42254776 0.23883298 0.39701876 0.25522298
		 0.36485174 0.26087099 0.32919374 0.031783652 0.52887046 0.040683649 0.51140249 0.091377646
		 0.54823345 0.05454665 0.49753946 0.072014645 0.48863944 0.091377646 0.48557246 0.11074065
		 0.48863944 0.12820865 0.49753946 0.14207165 0.51140249 0.15097165 0.52887046 0.15403865
		 0.54823345 0.15097165 0.56759644 0.14207165 0.58506447 0.12820865 0.59892744 0.11074065
		 0.60782743 0.091377646 0.61089444 0.072014645 0.60782743 0.05454665 0.59892744 0.040683649
		 0.58506447 0.031783652 0.56759644 0.02871665 0.54823345 0.15023625 0.90398943 0.12787426
		 0.91740942 0.17396626 0.89209247 0.19845125 0.88177645 0.22345224 0.87298739 0.24886125
		 0.86566246 0.27460626 0.85976839 0.30062124 0.85528642 0.32683524 0.85221142 0.35317624
		 0.85054141 0.37957025 0.85027742 0.40593925 0.85141844 0.43221024 0.85396147 0.45830724
		 0.85790646 0.48415723 0.86325043 0.50969225 0.86999846 0.53484327 0.87816346 0.55953825
		 0.88778043 0.58366722 0.89890444 0.60698724 0.91158444 0.62889123 0.92573941 0.16501924
		 0.93010044 0.14398625 0.94364244 0.18691024 0.91882044 0.20955324 0.9092834 0.23278925
		 0.9011904 0.25649825 0.8944304 0.28058624 0.88896847 0.30496824 0.88480139 0.32956225
		 0.88193643 0.35429025 0.88037944 0.37907425 0.88013446 0.40383524 0.88120246 0.42849725
		 0.88358045 0.45298225 0.88726139 0.47721025 0.8922354 0.50110328 0.89849544 0.52457428
		 0.90604138 0.54752725 0.91490245 0.56984025 0.92518747 0.59134424 0.93718946 0.61191523
		 0.95142442 0.18574625 0.96331042 0.16916525 0.97451746 0.20432127 0.95382243 0.22419026
		 0.94553542 0.24498025 0.93835741 0.26642925 0.93228441 0.28835124 0.92733943 0.31061125
		 0.92355144 0.33310226 0.92093945 0.35573325 0.91951942 0.37842324 0.91929638 0.40109226
		 0.92027247 0.42366326 0.92244446 0.44605425 0.9258014 0.46817425 0.93032742 0.48991826
		 0.93599743 0.51115227 0.94278145 0.53169125 0.95064741 0.55127424 0.95959044 0.56952327
		 0.96969044 0.58572125 0.98144448 0.34652203 0.49306101 0.36899799 0.51461798 0.33855599
		 0.54196197 0.32374799 0.525262 0.20112105 0.51112598 0.22447403 0.490522 0.24588902
		 0.52364397 0.23040004 0.53971303 0.25324702 0.47571799 0.26452905 0.51323098 0.28593504
		 0.470763 0.28512204 0.50988197 0.31839001 0.47707298 0.30555701 0.51408297 0.30789804
		 0.55817199 0.30241305 0.54937798 0.26620501 0.54862499 0.26035905 0.55718398 0.27471906
		 0.54316097 0.28446704 0.54137999 0.29413301 0.54356498 0.28402501 0.56273401;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr -s 619 ".vt";
	setAttr ".vt[0:165]"  0.264781 0.25667 0.087637 -4.9999999e-005 0.23843201 -0.020579999
		 -0.26491299 0.25571001 0.087715998 -0.37465599 0.298383 0.349087 -0.264992 0.341454 0.610425
		 -0.000161 0.35969201 0.718642 0.26470301 0.34241399 0.61034697 0.37444499 0.299741 0.34897599
		 -13.98100853 7.36616802 0.74253702 -14.022756577 7.30573988 0.72957301 -14.06592083 7.26085186 0.77061403
		 -14.085215569 7.25779676 0.84161699 -14.069337845 7.29836607 0.90099001 -14.027589798 7.35879278 0.91395301
		 -13.98442554 7.4036808 0.872913 -13.96513081 7.4067359 0.80190998 -0.000105 0.29906201 0.349031
		 -14.11300468 7.39319086 0.77097398 -13.52903748 7.35756493 0.92378902 -13.57857323 7.33029222 1.15534902
		 -13.70265388 7.17779779 1.27903104 -13.82972908 6.99370623 1.22408199 -13.88632107 6.88400698 1.025174022
		 -13.83836174 6.90887499 0.79704797 -13.71286583 7.055476189 0.67097402 -13.58420563 7.24195194 0.72249901
		 -13.15895462 7.21024179 1.048223019 -13.24172115 7.15668106 1.32175303 -13.40096664 6.95112991 1.45185804
		 -13.54340553 6.71399593 1.362324 -13.58560276 6.58419085 1.10559905 -13.50283527 6.6377511 0.83206898
		 -13.34359074 6.8433032 0.70196402 -13.20114994 7.080437183 0.79149801 -12.87654781 7.026320934 1.10375798
		 -12.92702389 6.91100883 1.36834896 -13.072698593 6.67715979 1.46808195 -13.22823715 6.461761 1.34453499
		 -13.30252743 6.39098787 1.070080996 -13.2520504 6.50629997 0.80549097 -13.10637569 6.74014807 0.70575702
		 -12.95083714 6.95554781 0.82930398 -12.60567379 6.85111904 1.086833 -12.62420654 6.68010378 1.32701302
		 -12.75506496 6.42304516 1.39082801 -12.92159367 6.23052216 1.24089706 -13.02624321 6.21531391 0.965047
		 -13.0077104568 6.38632917 0.72486699 -12.87685204 6.64338923 0.66105199 -12.71032333 6.83590984 0.810983
		 -12.34726715 6.71011877 1.012292027 -12.3237381 6.48492718 1.20608401 -12.42890644 6.20638323 1.21926403
		 -12.60116577 6.03765583 1.044111013 -12.73960876 6.077582836 0.78322899 -12.76313782 6.30277491 0.58943701
		 -12.65796947 6.58131886 0.57625699 -12.48571014 6.75004578 0.75140899 -12.092937469 6.62613392 0.87667
		 -12.023001671 6.36390305 1.0064589977 -12.09807682 6.076447964 0.95918798 -12.27418327 5.93215609 0.76254702
		 -12.44816017 6.015552044 0.531726 -12.51809502 6.27778292 0.40193701 -12.44301987 6.565238 0.44920799
		 -12.26691341 6.70952988 0.64584899 -11.85206795 6.62695789 0.67580098 -11.75427437 6.36465883 0.793989
		 -11.79520702 6.070840836 0.72819602 -11.95088768 5.91762018 0.51696199 -12.13012028 5.99474907 0.28402501
		 -12.22791386 6.25704908 0.165837 -12.18698215 6.55086613 0.23163 -12.031300545 6.70408821 0.442864
		 -11.63314819 6.68821621 0.453385 -11.53709507 6.46093893 0.63627899 -11.5327673 6.1543932 0.61777502
		 -11.62269974 5.9481492 0.408712 -11.75421238 5.96302223 0.131558 -11.85026646 6.19029999 -0.051336002
		 -11.85459423 6.4968462 -0.032832 -11.76466084 6.70308924 0.17623 -11.39844513 6.74318123 0.22453301
		 -11.37967396 6.61425686 0.50656003 -11.35651398 6.32375717 0.61420202 -11.34253216 6.041851997 0.48440301
		 -11.34591866 5.9336791 0.193197 -11.36468983 6.062603951 -0.088830002 -11.38784981 6.35310411 -0.196472
		 -11.40183163 6.63500786 -0.066671997 -11.031796455 6.73837614 0.062061001 -11.19627953 6.7769599 0.32730201
		 -11.27506733 6.59185886 0.56901699 -11.22200489 6.29150391 0.64561403 -11.068177223 6.051837921 0.51222301
		 -10.9036932 6.013254166 0.24698199 -10.8249054 6.1983552 0.0052669998 -10.87796783 6.49871111 -0.071330003
		 -10.51675892 6.76648188 0.31069201 -10.78022957 6.93011093 0.38354 -11.031272888 6.88006592 0.57319999
		 -11.12283134 6.64566183 0.76857102 -11.0012712479 6.36421013 0.85520798 -10.7378006 6.20058012 0.782359
		 -10.48675728 6.25062609 0.5927 -10.39519882 6.48503017 0.39732799 -10.19339085 7.0070438385 0.83614802
		 -10.45141888 7.20131397 0.84057999 -10.7427187 7.19101191 0.97978401 -10.89665031 6.98217106 1.17221606
		 -10.82304287 6.69712877 1.30515206 -10.56501484 6.50285816 1.30071998 -10.27371502 6.51316118 1.16151702
		 -10.1197834 6.72200108 0.96908402 -9.98395348 7.33169889 1.31341195 -10.25155735 7.51340008 1.36644804
		 -10.52556801 7.47656584 1.54252195 -10.64547157 7.24277306 1.73849297 -10.54103088 6.94897509 1.83956301
		 -10.27342606 6.7672739 1.78652704 -9.9994154 6.80410814 1.61045301 -9.87951183 7.037899971 1.414482
		 -9.87594223 7.63801384 1.65811706 -10.097118378 7.73130703 1.88877201 -10.25210857 7.5795269 2.14128995
		 -10.25012112 7.27158499 2.26774907 -10.092320442 6.98786879 2.19407201 -9.87114429 6.89457607 1.96341705
		 -9.7161541 7.046356201 1.710899 -9.71814156 7.35429811 1.58443999 -9.65767765 7.792068 1.97530997
		 -9.74029922 7.74544096 2.30013895 -9.78168297 7.47564507 2.50016594 -9.75758839 7.14072084 2.45822001
		 -9.68212795 6.93686485 2.19886994 -9.59950733 6.98349094 1.87404203 -9.55812359 7.25328684 1.67401397
		 -9.58221817 7.58821106 1.71596098 -9.31925583 7.80682516 2.13983202 -9.307868 7.65733004 2.44976211
		 -9.31497574 7.33255482 2.56380701 -9.3364172 7.022749901 2.41515994 -9.35963154 6.90939283 2.090897083
		 -9.37101936 7.058887005 1.780967 -9.36391068 7.38366222 1.66692197 -9.34246922 7.69346809 1.81556904
		 -8.89790344 7.75666189 2.17491293 -8.8418808 7.52278185 2.43001604 -8.88396358 7.17621803 2.46222901
		 -8.99950027 6.919981 2.25268292 -9.12081146 6.90417194 1.92412698 -9.17683411 7.13805103 1.66902399
		 -9.13475037 7.4846158 1.63681102 -9.019213676 7.74085188 1.84635699 -8.40692043 7.576015 2.015588045
		 -8.38474846 7.28261995 2.218225 -8.54076958 6.96124315 2.21536112 -8.78359032 6.80014181 2.0086750984
		 -8.97096825 6.89369011 1.71923995 -8.99314022 7.18708515 1.51660299 -8.83711815 7.50846195 1.519467
		 -8.59429836 7.66956282 1.72615302 -7.99245882 7.25555277 1.65083003 -8.02758503 6.94946194 1.84449601
		 -8.27227688 6.68046093 1.85848606 -8.58319664 6.60612488 1.684605;
	setAttr ".vt[166:331]" -8.77821445 6.77000093 1.42471099 -8.74308681 7.076090813 1.23104501
		 -8.49839592 7.34509277 1.21705496 -8.1874752 7.41942787 1.39093602 -7.67391109 6.90714884 1.19219506
		 -7.72280407 6.59041405 1.37822902 -7.9899621 6.33406782 1.39351904 -8.31888771 6.28827477 1.22910702
		 -8.51690197 6.47986078 0.98130602 -8.468009 6.79659605 0.79527199 -8.20085144 7.052941799 0.77998197
		 -7.87192488 7.098734856 0.94439298 -7.39518976 6.6355648 0.73306698 -7.4217639 6.29397583 0.89112097
		 -7.67351294 6.013185024 0.87888598 -8.0029659271 5.95767689 0.70352799 -8.21713448 6.15996599 0.467769
		 -8.19055939 6.50155497 0.309715 -7.93880987 6.78234577 0.32194999 -7.60935783 6.83785486 0.49730799
		 -7.15096617 6.52761984 0.35277301 -7.11799908 6.16395903 0.47244799 -7.31181717 5.83832407 0.40876999
		 -7.61888409 5.74146795 0.19904 -7.85932493 5.93012714 -0.033884998 -7.89229202 6.29378796 -0.153561
		 -7.69847488 6.61942291 -0.089883 -7.39140701 6.71627903 0.119848 -6.92343092 6.53547907 0.036747001
		 -6.83121014 6.17776489 0.166361 -6.94660997 5.81376886 0.080027997 -7.20203304 5.65671492 -0.171681
		 -7.44785404 5.79860306 -0.44131699 -7.54007483 6.1563158 -0.57093197 -7.42467403 6.52031183 -0.48459899
		 -7.16925192 6.67736578 -0.23288999 -6.69223022 6.59692287 -0.246177 -6.57977486 6.2769289 -0.035863999
		 -6.62146997 5.88231611 -0.078474998 -6.79289007 5.64424181 -0.349049 -6.99361897 5.70216894 -0.68908697
		 -7.10607481 6.022163868 -0.8994 -7.064380169 6.41677713 -0.85678798 -6.89296007 6.65485001 -0.58621502
		 -6.42525196 6.64940786 -0.497428 -6.35255718 6.40360594 -0.181077 -6.35403299 6.00055980682 -0.123347
		 -6.4288168 5.67636919 -0.35805601 -6.53310108 5.62093782 -0.74771398 -6.60579586 5.86674023 -1.06406498
		 -6.6043191 6.26978588 -1.12179601 -6.52953577 6.59397793 -0.88708699 -6.083717823 6.66197586 -0.69658899
		 -6.11848116 6.53205109 -0.30314699 -6.14762688 6.16115093 -0.117488 -6.15408421 5.76654387 -0.248368
		 -6.13406801 5.57938623 -0.61912102 -6.099305153 5.70931101 -1.01256299 -6.070158958 6.080212116 -1.19822204
		 -6.06370306 6.47481918 -1.067342043 -5.64073801 6.61447191 -0.76363403 -5.81180286 6.62399578 -0.374607
		 -5.94583178 6.33043909 -0.097916998 -5.96431208 5.90576315 -0.095646001 -5.85641718 5.59873676 -0.36912501
		 -5.68535089 5.58921289 -0.75815201 -5.55132198 5.88277006 -1.034842014 -5.53284311 6.307446 -1.037111998
		 -5.16932201 6.52168798 -0.63323098 -5.43741989 6.66087294 -0.320052 -5.6986022 6.46793509 -0.030416001
		 -5.79987192 6.055895805 0.066012003 -5.68190718 5.66612196 -0.087255001 -5.41380882 5.52693796 -0.40043399
		 -5.15262699 5.71987486 -0.69006997 -5.051355839 6.13191509 -0.78649801 -4.74613619 6.38729715 -0.31704301
		 -5.05077219 6.65021515 -0.124724 -5.42779493 6.58147097 0.103404 -5.65635204 6.22133493 0.233707
		 -5.60255623 5.78076887 0.18985599 -5.29792023 5.51785088 -0.0024629999 -4.92089701 5.58659506 -0.230592
		 -4.6923399 5.94673109 -0.36089501 -4.47204113 6.26536798 0.12299 -4.75463915 6.61191416 0.22115199
		 -5.18799877 6.64546204 0.36490601 -5.51826477 6.34636021 0.470043 -5.55197096 5.88981819 0.47497499
		 -5.26937389 5.54327106 0.37681299 -4.83601379 5.50972319 0.233059 -4.5057478 5.80882502 0.127922
		 -4.32047606 6.21706676 0.56266397 -4.58881617 6.59763288 0.63104397 -5.040638924 6.67095089 0.74055701
		 -5.411273 6.39407206 0.827052 -5.48360586 5.92918777 0.83986002 -5.21526623 5.54862213 0.77148002
		 -4.76344299 5.47530508 0.66196698 -4.39280796 5.75218296 0.575472 -4.21312809 6.2462821 0.94636899
		 -4.50440979 6.6245842 1.02937901 -4.96705389 6.67791986 1.16341197 -5.33004904 6.37504578 1.26995301
		 -5.38075686 5.89338112 1.28659201 -5.089475155 5.51507902 1.20358205 -4.62683105 5.46174288 1.069548965
		 -4.26383591 5.76461697 0.96300799 -4.14523792 6.38973188 1.21704495 -4.50273085 6.71000195 1.35637403
		 -4.94304514 6.66871691 1.58919501 -5.20825005 6.2900629 1.77912498 -5.14299202 5.79584885 1.814906
		 -4.7854991 5.47557878 1.67557704 -4.3451848 5.51686382 1.44275606 -4.079979897 5.89551783 1.25282598
		 -4.17498207 6.65337181 1.42245996 -4.55268621 6.83158207 1.72598398 -4.83233213 6.63635302 2.11357903
		 -4.85010815 6.18204784 2.35819602 -4.59560108 5.73479319 2.31654191 -4.21789598 5.55658388 2.013016939
		 -3.93825006 5.75181293 1.62542295 -3.92047405 6.20611811 1.38080597 -4.076809883 6.97837019 1.74749601
		 -4.33134985 7.012384892 2.22169304 -4.37709522 6.69287777 2.65370297 -4.18724823 6.20701218 2.79046106
		 -3.87301993 5.83939981 2.55185509 -3.61847997 5.80538511 2.077657938 -3.57273507 6.12489223 1.645648
		 -3.76258206 6.61075783 1.50889003 -3.65317607 7.33091402 2.082310915 -3.78097701 7.26781607 2.63506198
		 -3.71172094 6.85250378 3.020508051 -3.48597598 6.32826281 3.012859106 -3.23598099 6.0021848679 2.61659598
		 -3.10817909 6.065282822 2.063844919 -3.17743611 6.48059511 1.67840004 -3.40318108 7.0048360825 1.68604898
		 -2.99952507 7.62966394 2.3446939 -3.044950008 7.47639418 2.93127298 -2.97767901 6.96153116 3.24753189
		 -2.83711696 6.38667297 3.10821104 -2.70560408 6.088563919 2.59492207 -2.6601789 6.24183321 2.0083429813
		 -2.72745109 6.75669718 1.69208395 -2.86801195 7.33155489 1.83140504 -2.23849201 7.76153898 2.52555609
		 -2.22946811 7.49842882 3.11733103 -2.23775196 6.8940258 3.34999704 -2.25849199 6.30238008 3.087260962
		 -2.27953792 6.07006979 2.48303103 -2.28856206 6.333179 1.89125597 -2.28027797 6.93758202 1.65858996
		 -2.25953794 7.52922821 1.92132604 -1.41925895 7.65924883 2.59410191 -1.395908 7.25714397 3.150635
		 -1.56700099 6.60590696 3.28693795 -1.83231294 6.087020874 2.92316699 -2.036429882 6.004445076 2.27241397
		 -2.059781075 6.40654993 1.71588099 -1.88868904 7.057787895 1.57957804 -1.62337601 7.57667208 1.943349
		 -0.665402 7.26469278 2.45127296 -0.70672399 6.74187994 2.94878197;
	setAttr ".vt[332:497]" -1.10582697 6.14477396 3.030864954 -1.62892401 5.82315111 2.6494379
		 -1.96958995 5.965415 2.027935982 -1.92826796 6.4882288 1.53042698 -1.52916503 7.085334778 1.44834399
		 -1.0060689449 7.4069581 1.829772 -0.206732 6.844347 2.16135406 -0.294572 6.24354696 2.60560608
		 -0.80741 5.69628096 2.66503596 -1.44483304 5.52312803 2.30483294 -1.83344603 5.82552099 1.73599696
		 -1.74560499 6.42632103 1.29174602 -1.23276699 6.97358704 1.23231494 -0.59534502 7.14673901 1.59251904
		 0.050078001 6.59259987 1.88358295 -0.002752 5.89637613 2.21401 -0.51492602 5.31855822 2.19155788
		 -1.18641901 5.19762278 1.82938099 -1.62387896 5.60441399 1.33963501 -1.57104802 6.30063677 1.0092079639
		 -1.058874011 6.87845516 1.031659961 -0.387382 6.99939013 1.39383698 0.25235999 6.47151518 1.60731399
		 0.249357 5.71472883 1.82438898 -0.23818 5.10622692 1.71536303 -0.92465901 5.0024590492 1.34410203
		 -1.40794802 5.46421289 0.92808598 -1.40494502 6.22099781 0.71101099 -0.91740799 6.82950115 0.82003701
		 -0.230929 6.93326902 1.19129801 0.49901301 6.34017515 1.22396803 0.458231 5.58137083 1.47740996
		 -0.073698997 4.98709011 1.40283799 -0.78517902 4.90545416 1.043934941 -1.25943506 5.38428497 0.61094302
		 -1.21865404 6.14308977 0.357501 -0.68672401 6.73737001 0.432073 0.024757 6.81900597 0.79097599
		 0.768206 6.092412949 0.76322198 0.63581198 5.39874077 1.16753995 0.021122999 4.86743116 1.21279502
		 -0.71578598 4.80971718 0.87247699 -1.143242 5.25940609 0.34593999 -1.010848999 5.95307779 -0.058378
		 -0.39615899 6.48438787 -0.103633 0.340749 6.54210186 0.23668499 1.0061539412 5.69618082 0.32812399
		 0.79465997 5.10191488 0.86056799 0.1083 4.66779423 1.008308053 -0.65086597 4.64812088 0.68479902
		 -1.038128972 5.054419041 0.079549998 -0.826635 5.64868498 -0.45289499 -0.140275 6.082805157 -0.60063398
		 0.618891 6.10247898 -0.27712601 1.174546 5.15795708 -0.035615999 0.88713002 4.73190498 0.62405902
		 0.135012 4.46440887 0.87318403 -0.64122802 4.51216412 0.56582397 -0.98687899 4.8471961 -0.117973
		 -0.69946301 5.2732482 -0.77764702 0.052655 5.54074383 -1.026772022 0.82889497 5.49298906 -0.71941203
		 1.21548998 4.54470921 -0.24338 0.887389 4.37990522 0.518969 0.104727 4.34487391 0.83865702
		 -0.67402202 4.46013689 0.52841401 -0.99267799 4.65817308 -0.230022 -0.66457701 4.82297707 -0.99237102
		 0.118084 4.85800695 -1.31205797 0.89683402 4.74274492 -1.0018160343 1.17611396 4.050021172 -0.27267599
		 0.85408902 4.12638378 0.51596701 0.072316997 4.24795818 0.84083802 -0.71125001 4.34352779 0.51163203
		 -1.037610054 4.35711002 -0.27880701 -0.71558601 4.28074884 -1.067450047 0.066186003 4.15917397 -1.39232099
		 0.84975398 4.063602924 -1.063115001 1.14515197 3.73053789 -0.195427 0.82761699 3.99994302 0.56118202
		 0.038075998 4.17354584 0.86507702 -0.76096898 4.14965391 0.53824002 -1.10144699 3.94226193 -0.227873
		 -0.78391099 3.67285705 -0.98448199 0.00563 3.49925399 -1.28837705 0.80467403 3.52314591 -0.96153998
		 1.13873994 3.4755981 -0.068471 0.81081003 3.83617496 0.65376699 0.0083990004 4.0048708916 0.94848901
		 -0.79844898 3.88286591 0.64305198 -1.13709497 3.54163003 -0.083623998 -0.80916399 3.18105197 -0.80586201
		 -0.0067540002 3.012356043 -1.10058403 0.80009401 3.13436103 -0.795147 1.14459705 3.19680905 0.074350998
		 0.80833501 3.52340007 0.817168 -0.003215 3.65816593 1.12496102 -0.81465697 3.52216291 0.81742799
		 -1.15065897 3.19506001 0.074718997 -0.81439698 2.86846995 -0.66809797 -0.002847 2.73370409 -0.97589099
		 0.808595 2.86970711 -0.66835803 1.15365303 2.87354708 0.18511 0.81492001 3.07258296 0.977938
		 -0.0026100001 3.15421391 1.30643904 -0.82003897 3.07062006 0.978181 -1.15852904 2.87077093 0.185454
		 -0.81979603 2.67173505 -0.60737401 -0.002266 2.5901041 -0.935875 0.81516302 2.67369795 -0.60761702
		 1.16168594 2.52567506 0.25147101 0.82077497 2.64508891 1.065749049 -0.0022239999 2.69437408 1.40304601
		 -0.82521099 2.64465904 1.065780044 -1.16609001 2.52506709 0.25151601 -0.82517999 2.405653 -0.56276101
		 -0.0021800001 2.35636806 -0.90005898 0.82080698 2.40608311 -0.56279302 1.16892302 2.15192008 0.29985699
		 0.82591701 2.25432897 1.12159002 -0.002173 2.29674697 1.46196198 -0.83026302 2.25432706 1.12159002
		 -1.17326903 2.15191698 0.29985699 -0.83026302 2.049508095 -0.52187598 -0.002173 2.0070888996 -0.86224902
		 0.82591701 2.049509048 -0.52187598 1.17564499 1.75436103 0.34779599 0.83067 1.845348 1.175632
		 -0.0021579999 1.88291299 1.51853895 -0.83498001 1.845052 1.17564797 -1.17993903 1.75394297 0.347819
		 -0.83496398 1.662956 -0.48001799 -0.002135 1.62539101 -0.82292497 0.83068597 1.663252 -0.48003399
		 1.18206704 1.35440803 0.382186 0.83525002 1.39930701 1.21822798 -0.0020089999 1.41743398 1.56454003
		 -0.83925599 1.39816999 1.21825802 -1.18604195 1.35280001 0.382229 -0.83922499 1.30790102 -0.45381299
		 -0.0019660001 1.28977501 -0.80012602 0.83528101 1.30903804 -0.45384401 1.18838203 0.97771698 0.38487801
		 0.83987802 0.941356 1.22553301 -0.001539 0.92523301 1.57372105 -0.84297901 0.93879199 1.22547901
		 -1.19153702 0.97409099 0.384801 -0.84303403 1.010452032 -0.455854 -0.001616 1.026576042 -0.80404299
		 0.83982402 1.013017058 -0.4558 1.19461298 0.65535301 0.36125401 0.844522 0.574503 1.20282602
		 -0.00085000001 0.53948098 1.55134296 -0.84629297 0.570804 1.20264995 -1.19656003 0.65012199 0.36100599
		 -0.84646899 0.73097199 -0.48056599 -0.001098 0.76599401 -0.82908303 0.84434599 0.734671 -0.48039001
		 1.20027196 0.425062 0.341483 0.84864599 0.38851699 1.18973303 -0.000348 0.37152499 1.54105103
		 -0.84938103 0.38404 1.18963897 -1.20110095 0.41872999 0.34134999 -0.84947503 0.455275 -0.506899
		 -0.000481 0.47226599 -0.858217 0.84855199 0.45975199 -0.506805;
	setAttr ".vt[498:618]" 1.35720396 -1.091449022 -0.075948998 1.15450597 -1.091449022 -0.47376499
		 0.83879799 -1.091449022 -0.789473 0.44098201 -1.091449022 -0.99216998 0 -1.091449022 -1.062015057
		 -0.44098201 -1.091449022 -0.99216998 -0.83879799 -1.091449022 -0.789473 -1.15450597 -1.091449022 -0.473764
		 -1.35720301 -1.091449022 -0.075948998 -1.42704797 -1.091449022 0.365033 -1.35720301 -1.091449022 0.80601501
		 -1.15450597 -1.091449022 1.20383096 -0.83879799 -1.091449022 1.519539 -0.44098201 -1.091449022 1.72223604
		 0 -1.091449022 1.792081 0.44098201 -1.091449022 1.72223604 0.83879697 -1.091449022 1.519539
		 1.15450597 -1.091449022 1.20383096 1.35720301 -1.091449022 0.80601501 1.42704701 -1.091449022 0.365033
		 1.17240703 0.92466497 -0.015905 0.99730903 0.92466497 -0.35955399 0.72458702 0.92466497 -0.632276
		 0.38093799 0.92466497 -0.807374 0 0.92466497 -0.86770803 -0.38093799 0.92466497 -0.807374
		 -0.72458702 0.92466497 -0.63227499 -0.99730903 0.92466497 -0.35955399 -1.17240703 0.92466497 -0.015905
		 -1.232741 0.92466497 0.365033 -1.17240703 0.92466497 0.74597102 -0.99730903 0.92466497 1.089619994
		 -0.72458702 0.92466497 1.362342 -0.38093799 0.92466497 1.53743994 0 0.92466497 1.59777498
		 0.38093799 0.92466497 1.53743994 0.72458702 0.92466497 1.362342 0.99730802 0.92466497 1.089619994
		 1.17240596 0.92466497 0.74597102 1.232741 0.92466497 0.365033 0 -1.091449022 0.365033
		 0.96545702 1.50694704 0.051337 0.82126701 1.50694704 -0.23165201 0.59668499 1.50694704 -0.45623401
		 0.313696 1.50694704 -0.60042399 0 1.50694704 -0.65010899 -0.313696 1.50694704 -0.60042399
		 -0.59668499 1.50694704 -0.45623401 -0.82126701 1.50694704 -0.23165201 -0.96545702 1.50694704 0.051337
		 -1.015141964 1.50694704 0.365033 -0.96545702 1.50694704 0.678729 -0.82126701 1.50694704 0.96171802
		 -0.59668499 1.50694704 1.18630004 -0.313696 1.50694704 1.33048999 0 1.50694704 1.38017499
		 0.313696 1.50694704 1.33048999 0.59668499 1.50694704 1.18630004 0.82126701 1.50694704 0.96171802
		 0.96545702 1.50694704 0.678729 1.01514101 1.50694704 0.365033 0.95399499 1.87539899 0.055061001
		 0.811517 1.87539899 -0.22456799 0.58960199 1.87539899 -0.446484 0.30997199 1.87539899 -0.58896202
		 0 1.87539899 -0.63805699 -0.30997199 1.87539899 -0.58896202 -0.58960199 1.87539899 -0.446484
		 -0.811517 1.87539899 -0.22456799 -0.95399499 1.87539899 0.055061001 -1.003090024 1.87539899 0.365033
		 -0.95399499 1.87539899 0.67500502 -0.811517 1.87539899 0.95463502 -0.58960199 1.87539899 1.17655003
		 -0.30997199 1.87539899 1.31902802 0 1.87539899 1.36812305 0.30997199 1.87539899 1.31902802
		 0.58960098 1.87539899 1.17655003 0.811517 1.87539899 0.95463502 0.95399499 1.87539899 0.67500502
		 1.003090024 1.87539899 0.365033 0.73699999 2.30284905 0.125567 0.62692899 2.30284905 -0.090457998
		 0 2.30284905 0.365033 0.45549101 2.30284905 -0.26189601 0.239466 2.30284905 -0.371966
		 0 2.30284905 -0.40989399 -0.239466 2.30284905 -0.371966 -0.45549101 2.30284905 -0.26189601
		 -0.62692899 2.30284905 -0.090457 -0.73699999 2.30284905 0.125568 -0.77492702 2.30284905 0.365033
		 -0.73699999 2.30284905 0.60449898 -0.62692899 2.30284905 0.82052398 -0.45549101 2.30284905 0.99196202
		 -0.239466 2.30284905 1.10203302 0 2.30284905 1.13996005 0.239465 2.30284905 1.10203302
		 0.45549101 2.30284905 0.99196202 0.62692899 2.30284905 0.82052398 0.73699898 2.30284905 0.60449898
		 0.77492702 2.30284905 0.365033 0.30745399 6.38145018 1.11080098 0.17309099 6.59194517 0.83107001
		 -0.155421 6.76843691 0.87033898 -0.34956899 6.73443508 1.18934 -0.215206 6.52393913 1.46907198
		 0.113306 6.34744692 1.42980194 0.45541799 6.80834818 1.29990304 0.353699 6.96770191 1.08813405
		 0.105001 7.10131502 1.11786199 -0.041978002 7.075572014 1.35936105 0.059741002 6.9162178 1.57113004
		 0.30843899 6.78260612 1.54140103 0.49643001 7.17343092 1.45308304 0.44915599 7.24749088 1.35466301
		 0.33357301 7.309587 1.36847997 0.265264 7.29762411 1.48071694 0.312538 7.22356415 1.57913697
		 0.428121 7.16146708 1.56532001 0.49237099 7.42354918 1.55481601;
	setAttr -s 1256 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 496 0 496 497 0 497 0 0 1 2 0 2 495 0 495 496 0
		 2 3 0 3 494 0 494 495 0 3 4 0 4 493 0 493 494 0 4 5 0 5 492 0 492 493 0 5 6 0 6 491 0
		 491 492 0 6 7 0 7 490 0 490 491 0 7 0 0 497 490 0 0 16 0 16 1 0 16 2 0 16 3 0 16 4 0
		 16 5 0 16 6 0 16 7 0 8 9 0 9 17 0 17 8 0 9 10 0 10 17 0 10 11 0 11 17 0 11 12 0 12 17 0
		 12 13 0 13 17 0 13 14 0 14 17 0 14 15 0 15 17 0 15 8 0 19 18 0 18 15 0 14 19 0 20 19 0
		 13 20 0 21 20 0 12 21 0 22 21 0 11 22 0 23 22 0 10 23 0 24 23 0 9 24 0 25 24 0 8 25 0
		 18 25 0 27 26 0 26 18 0 19 27 0 28 27 0 20 28 0 29 28 0 21 29 0 30 29 0 22 30 0 31 30 0
		 23 31 0 32 31 0 24 32 0 33 32 0 25 33 0 26 33 0 35 34 0 34 26 0 27 35 0 36 35 0 28 36 0
		 37 36 0 29 37 0 38 37 0 30 38 0 39 38 0 31 39 0 40 39 0 32 40 0 41 40 0 33 41 0 34 41 0
		 43 42 0 42 34 0 35 43 0 44 43 0 36 44 0 45 44 0 37 45 0 46 45 0 38 46 0 47 46 0 39 47 0
		 48 47 0 40 48 0 49 48 0 41 49 0 42 49 0 51 50 0 50 42 0 43 51 0 52 51 0 44 52 0 53 52 0
		 45 53 0 54 53 0 46 54 0 55 54 0 47 55 0 56 55 0 48 56 0 57 56 0 49 57 0 50 57 0 59 58 0
		 58 50 0 51 59 0 60 59 0 52 60 0 61 60 0 53 61 0 62 61 0 54 62 0 63 62 0 55 63 0 64 63 0
		 56 64 0 65 64 0 57 65 0 58 65 0 67 66 0 66 58 0 59 67 0 68 67 0 60 68 0 69 68 0 61 69 0
		 70 69 0 62 70 0 71 70 0 63 71 0 72 71 0 64 72 0 73 72 0 65 73 0 66 73 0 75 74 0 74 66 0
		 67 75 0 76 75 0 68 76 0 77 76 0;
	setAttr ".ed[166:331]" 69 77 0 78 77 0 70 78 0 79 78 0 71 79 0 80 79 0 72 80 0
		 81 80 0 73 81 0 74 81 0 83 82 0 82 74 0 75 83 0 84 83 0 76 84 0 85 84 0 77 85 0 86 85 0
		 78 86 0 87 86 0 79 87 0 88 87 0 80 88 0 89 88 0 81 89 0 82 89 0 91 90 0 90 82 0 83 91 0
		 92 91 0 84 92 0 93 92 0 85 93 0 94 93 0 86 94 0 95 94 0 87 95 0 96 95 0 88 96 0 97 96 0
		 89 97 0 90 97 0 99 98 0 98 90 0 91 99 0 100 99 0 92 100 0 101 100 0 93 101 0 102 101 0
		 94 102 0 103 102 0 95 103 0 104 103 0 96 104 0 105 104 0 97 105 0 98 105 0 107 106 0
		 106 98 0 99 107 0 108 107 0 100 108 0 109 108 0 101 109 0 110 109 0 102 110 0 111 110 0
		 103 111 0 112 111 0 104 112 0 113 112 0 105 113 0 106 113 0 115 114 0 114 106 0 107 115 0
		 116 115 0 108 116 0 117 116 0 109 117 0 118 117 0 110 118 0 119 118 0 111 119 0 120 119 0
		 112 120 0 121 120 0 113 121 0 114 121 0 123 122 0 122 114 0 115 123 0 124 123 0 116 124 0
		 125 124 0 117 125 0 126 125 0 118 126 0 127 126 0 119 127 0 128 127 0 120 128 0 129 128 0
		 121 129 0 122 129 0 131 130 0 130 122 0 123 131 0 132 131 0 124 132 0 133 132 0 125 133 0
		 134 133 0 126 134 0 135 134 0 127 135 0 136 135 0 128 136 0 137 136 0 129 137 0 130 137 0
		 139 138 0 138 130 0 131 139 0 140 139 0 132 140 0 141 140 0 133 141 0 142 141 0 134 142 0
		 143 142 0 135 143 0 144 143 0 136 144 0 145 144 0 137 145 0 138 145 0 147 146 0 146 138 0
		 139 147 0 148 147 0 140 148 0 149 148 0 141 149 0 150 149 0 142 150 0 151 150 0 143 151 0
		 152 151 0 144 152 0 153 152 0 145 153 0 146 153 0 155 154 0 154 146 0 147 155 0 156 155 0
		 148 156 0 157 156 0 149 157 0 158 157 0 150 158 0 159 158 0 151 159 0 160 159 0;
	setAttr ".ed[332:497]" 152 160 0 161 160 0 153 161 0 154 161 0 163 162 0 162 154 0
		 155 163 0 164 163 0 156 164 0 165 164 0 157 165 0 166 165 0 158 166 0 167 166 0 159 167 0
		 168 167 0 160 168 0 169 168 0 161 169 0 162 169 0 171 170 0 170 162 0 163 171 0 172 171 0
		 164 172 0 173 172 0 165 173 0 174 173 0 166 174 0 175 174 0 167 175 0 176 175 0 168 176 0
		 177 176 0 169 177 0 170 177 0 179 178 0 178 170 0 171 179 0 180 179 0 172 180 0 181 180 0
		 173 181 0 182 181 0 174 182 0 183 182 0 175 183 0 184 183 0 176 184 0 185 184 0 177 185 0
		 178 185 0 187 186 0 186 178 0 179 187 0 188 187 0 180 188 0 189 188 0 181 189 0 190 189 0
		 182 190 0 191 190 0 183 191 0 192 191 0 184 192 0 193 192 0 185 193 0 186 193 0 195 194 0
		 194 186 0 187 195 0 196 195 0 188 196 0 197 196 0 189 197 0 198 197 0 190 198 0 199 198 0
		 191 199 0 200 199 0 192 200 0 201 200 0 193 201 0 194 201 0 203 202 0 202 194 0 195 203 0
		 204 203 0 196 204 0 205 204 0 197 205 0 206 205 0 198 206 0 207 206 0 199 207 0 208 207 0
		 200 208 0 209 208 0 201 209 0 202 209 0 211 210 0 210 202 0 203 211 0 212 211 0 204 212 0
		 213 212 0 205 213 0 214 213 0 206 214 0 215 214 0 207 215 0 216 215 0 208 216 0 217 216 0
		 209 217 0 210 217 0 219 218 0 218 210 0 211 219 0 220 219 0 212 220 0 221 220 0 213 221 0
		 222 221 0 214 222 0 223 222 0 215 223 0 224 223 0 216 224 0 225 224 0 217 225 0 218 225 0
		 227 226 0 226 218 0 219 227 0 228 227 0 220 228 0 229 228 0 221 229 0 230 229 0 222 230 0
		 231 230 0 223 231 0 232 231 0 224 232 0 233 232 0 225 233 0 226 233 0 235 234 0 234 226 0
		 227 235 0 236 235 0 228 236 0 237 236 0 229 237 0 238 237 0 230 238 0 239 238 0 231 239 0
		 240 239 0 232 240 0 241 240 0 233 241 0 234 241 0 243 242 0 242 234 0;
	setAttr ".ed[498:663]" 235 243 0 244 243 0 236 244 0 245 244 0 237 245 0 246 245 0
		 238 246 0 247 246 0 239 247 0 248 247 0 240 248 0 249 248 0 241 249 0 242 249 0 251 250 0
		 250 242 0 243 251 0 252 251 0 244 252 0 253 252 0 245 253 0 254 253 0 246 254 0 255 254 0
		 247 255 0 256 255 0 248 256 0 257 256 0 249 257 0 250 257 0 259 258 0 258 250 0 251 259 0
		 260 259 0 252 260 0 261 260 0 253 261 0 262 261 0 254 262 0 263 262 0 255 263 0 264 263 0
		 256 264 0 265 264 0 257 265 0 258 265 0 267 266 0 266 258 0 259 267 0 268 267 0 260 268 0
		 269 268 0 261 269 0 270 269 0 262 270 0 271 270 0 263 271 0 272 271 0 264 272 0 273 272 0
		 265 273 0 266 273 0 275 274 0 274 266 0 267 275 0 276 275 0 268 276 0 277 276 0 269 277 0
		 278 277 0 270 278 0 279 278 0 271 279 0 280 279 0 272 280 0 281 280 0 273 281 0 274 281 0
		 283 282 0 282 274 0 275 283 0 284 283 0 276 284 0 285 284 0 277 285 0 286 285 0 278 286 0
		 287 286 0 279 287 0 288 287 0 280 288 0 289 288 0 281 289 0 282 289 0 291 290 0 290 282 0
		 283 291 0 292 291 0 284 292 0 293 292 0 285 293 0 294 293 0 286 294 0 295 294 0 287 295 0
		 296 295 0 288 296 0 297 296 0 289 297 0 290 297 0 299 298 0 298 290 0 291 299 0 300 299 0
		 292 300 0 301 300 0 293 301 0 302 301 0 294 302 0 303 302 0 295 303 0 304 303 0 296 304 0
		 305 304 0 297 305 0 298 305 0 307 306 0 306 298 0 299 307 0 308 307 0 300 308 0 309 308 0
		 301 309 0 310 309 0 302 310 0 311 310 0 303 311 0 312 311 0 304 312 0 313 312 0 305 313 0
		 306 313 0 315 314 0 314 306 0 307 315 0 316 315 0 308 316 0 317 316 0 309 317 0 318 317 0
		 310 318 0 319 318 0 311 319 0 320 319 0 312 320 0 321 320 0 313 321 0 314 321 0 323 322 0
		 322 314 0 315 323 0 324 323 0 316 324 0 325 324 0 317 325 0 326 325 0;
	setAttr ".ed[664:829]" 318 326 0 327 326 0 319 327 0 328 327 0 320 328 0 329 328 0
		 321 329 0 322 329 0 331 330 0 330 322 0 323 331 0 332 331 0 324 332 0 333 332 0 325 333 0
		 334 333 0 326 334 0 335 334 0 327 335 0 336 335 0 328 336 0 337 336 0 329 337 0 330 337 0
		 339 338 0 338 330 0 331 339 0 340 339 0 332 340 0 341 340 0 333 341 0 342 341 0 334 342 0
		 343 342 0 335 343 0 344 343 0 336 344 0 345 344 0 337 345 0 338 345 0 347 346 0 346 338 0
		 339 347 0 348 347 0 340 348 0 349 348 0 341 349 0 350 349 0 342 350 0 351 350 0 343 351 0
		 352 351 0 344 352 0 353 352 0 345 353 0 346 353 0 355 354 0 354 346 0 347 355 0 356 355 0
		 348 356 0 357 356 0 349 357 0 358 357 0 350 358 0 359 358 0 351 359 0 360 359 0 352 360 0
		 361 360 0 353 361 0 354 361 0 363 362 0 362 354 0 355 363 0 364 363 0 356 364 0 365 364 0
		 357 365 0 366 365 0 358 366 0 367 366 0 359 367 0 368 367 0 360 368 0 369 368 0 361 369 0
		 362 369 0 371 370 0 370 362 0 363 371 0 372 371 0 364 372 0 373 372 0 365 373 0 374 373 0
		 366 374 0 375 374 0 367 375 0 376 375 0 368 376 0 377 376 0 369 377 0 370 377 0 379 378 0
		 378 370 0 371 379 0 380 379 0 372 380 0 381 380 0 373 381 0 382 381 0 374 382 0 383 382 0
		 375 383 0 384 383 0 376 384 0 385 384 0 377 385 0 378 385 0 387 386 0 386 378 0 379 387 0
		 388 387 0 380 388 0 389 388 0 381 389 0 390 389 0 382 390 0 391 390 0 383 391 0 392 391 0
		 384 392 0 393 392 0 385 393 0 386 393 0 395 394 0 394 386 0 387 395 0 396 395 0 388 396 0
		 397 396 0 389 397 0 398 397 0 390 398 0 399 398 0 391 399 0 400 399 0 392 400 0 401 400 0
		 393 401 0 394 401 0 403 402 0 402 394 0 395 403 0 404 403 0 396 404 0 405 404 0 397 405 0
		 406 405 0 398 406 0 407 406 0 399 407 0 408 407 0 400 408 0 409 408 0;
	setAttr ".ed[830:995]" 401 409 0 402 409 0 411 410 0 410 402 0 403 411 0 412 411 0
		 404 412 0 413 412 0 405 413 0 414 413 0 406 414 0 415 414 0 407 415 0 416 415 0 408 416 0
		 417 416 0 409 417 0 410 417 0 419 418 0 418 410 0 411 419 0 420 419 0 412 420 0 421 420 0
		 413 421 0 422 421 0 414 422 0 423 422 0 415 423 0 424 423 0 416 424 0 425 424 0 417 425 0
		 418 425 0 427 426 0 426 418 0 419 427 0 428 427 0 420 428 0 429 428 0 421 429 0 430 429 0
		 422 430 0 431 430 0 423 431 0 432 431 0 424 432 0 433 432 0 425 433 0 426 433 0 435 434 0
		 434 426 0 427 435 0 436 435 0 428 436 0 437 436 0 429 437 0 438 437 0 430 438 0 439 438 0
		 431 439 0 440 439 0 432 440 0 441 440 0 433 441 0 434 441 0 443 442 0 442 434 0 435 443 0
		 444 443 0 436 444 0 445 444 0 437 445 0 446 445 0 438 446 0 447 446 0 439 447 0 448 447 0
		 440 448 0 449 448 0 441 449 0 442 449 0 451 450 0 450 442 0 443 451 0 452 451 0 444 452 0
		 453 452 0 445 453 0 454 453 0 446 454 0 455 454 0 447 455 0 456 455 0 448 456 0 457 456 0
		 449 457 0 450 457 0 459 458 0 458 450 0 451 459 0 460 459 0 452 460 0 461 460 0 453 461 0
		 462 461 0 454 462 0 463 462 0 455 463 0 464 463 0 456 464 0 465 464 0 457 465 0 458 465 0
		 467 466 0 466 458 0 459 467 0 468 467 0 460 468 0 469 468 0 461 469 0 470 469 0 462 470 0
		 471 470 0 463 471 0 472 471 0 464 472 0 473 472 0 465 473 0 466 473 0 475 474 0 474 466 0
		 467 475 0 476 475 0 468 476 0 477 476 0 469 477 0 478 477 0 470 478 0 479 478 0 471 479 0
		 480 479 0 472 480 0 481 480 0 473 481 0 474 481 0 483 482 0 482 474 0 475 483 0 484 483 0
		 476 484 0 485 484 0 477 485 0 486 485 0 478 486 0 487 486 0 479 487 0 488 487 0 480 488 0
		 489 488 0 481 489 0 482 489 0 490 482 0 483 491 0 484 492 0 485 493 0;
	setAttr ".ed[996:1161]" 486 494 0 487 495 0 488 496 0 489 497 0 498 499 0 499 519 0
		 519 518 0 518 498 0 499 500 0 500 520 0 520 519 0 500 501 0 501 521 0 521 520 0 501 502 0
		 502 522 0 522 521 0 502 503 0 503 523 0 523 522 0 503 504 0 504 524 0 524 523 0 504 505 0
		 505 525 0 525 524 0 505 506 0 506 526 0 526 525 0 506 507 0 507 527 0 527 526 0 507 508 0
		 508 528 0 528 527 0 508 509 0 509 529 0 529 528 0 509 510 0 510 530 0 530 529 0 510 511 0
		 511 531 0 531 530 0 511 512 0 512 532 0 532 531 0 512 513 0 513 533 0 533 532 0 513 514 0
		 514 534 0 534 533 0 514 515 0 515 535 0 535 534 0 515 516 0 516 536 0 536 535 0 516 517 0
		 517 537 0 537 536 0 517 498 0 518 537 0 498 538 0 538 499 0 538 500 0 538 501 0 538 502 0
		 538 503 0 538 504 0 538 505 0 538 506 0 538 507 0 538 508 0 538 509 0 538 510 0 538 511 0
		 538 512 0 538 513 0 538 514 0 538 515 0 538 516 0 538 517 0 579 580 0 580 581 0 581 579 0
		 580 582 0 582 581 0 582 583 0 583 581 0 583 584 0 584 581 0 584 585 0 585 581 0 585 586 0
		 586 581 0 586 587 0 587 581 0 587 588 0 588 581 0 588 589 0 589 581 0 589 590 0 590 581 0
		 590 591 0 591 581 0 591 592 0 592 581 0 592 593 0 593 581 0 593 594 0 594 581 0 594 595 0
		 595 581 0 595 596 0 596 581 0 596 597 0 597 581 0 597 598 0 598 581 0 598 599 0 599 581 0
		 599 579 0 519 540 0 540 539 0 539 518 0 520 541 0 541 540 0 521 542 0 542 541 0 522 543 0
		 543 542 0 523 544 0 544 543 0 524 545 0 545 544 0 525 546 0 546 545 0 526 547 0 547 546 0
		 527 548 0 548 547 0 528 549 0 549 548 0 529 550 0 550 549 0 530 551 0 551 550 0 531 552 0
		 552 551 0 532 553 0 553 552 0 533 554 0 554 553 0 534 555 0 555 554 0 535 556 0 556 555 0
		 536 557 0 557 556 0 537 558 0 558 557 0 539 558 0 540 560 0 560 559 0;
	setAttr ".ed[1162:1255]" 559 539 0 541 561 0 561 560 0 542 562 0 562 561 0 543 563 0
		 563 562 0 544 564 0 564 563 0 545 565 0 565 564 0 546 566 0 566 565 0 547 567 0 567 566 0
		 548 568 0 568 567 0 549 569 0 569 568 0 550 570 0 570 569 0 551 571 0 571 570 0 552 572 0
		 572 571 0 553 573 0 573 572 0 554 574 0 574 573 0 555 575 0 575 574 0 556 576 0 576 575 0
		 557 577 0 577 576 0 558 578 0 578 577 0 559 578 0 560 580 0 579 559 0 561 582 0 562 583 0
		 563 584 0 564 585 0 565 586 0 566 587 0 567 588 0 568 589 0 569 590 0 570 591 0 571 592 0
		 572 593 0 573 594 0 574 595 0 575 596 0 576 597 0 577 598 0 578 599 0 600 601 0 601 607 0
		 607 606 0 606 600 0 601 602 0 602 608 0 608 607 0 602 603 0 603 609 0 609 608 0 603 604 0
		 604 610 0 610 609 0 604 605 0 605 611 0 611 610 0 605 600 0 606 611 0 607 613 0 613 612 0
		 612 606 0 608 614 0 614 613 0 609 615 0 615 614 0 610 616 0 616 615 0 611 617 0 617 616 0
		 612 617 0 613 618 0 618 612 0 614 618 0 615 618 0 616 618 0 617 618 0;
	setAttr -s 642 -ch 2506 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 -12
		mu 0 4 8 10 11 9
		f 4 16 17 18 -15
		mu 0 4 10 12 13 11
		f 4 19 20 21 -18
		mu 0 4 12 14 15 13
		f 4 22 -4 23 -21
		mu 0 4 14 0 3 15
		f 3 -1 24 25
		mu 0 3 1 0 16
		f 3 -5 -26 26
		mu 0 3 4 1 16
		f 3 -8 -27 27
		mu 0 3 6 4 16
		f 3 -11 -28 28
		mu 0 3 8 6 16
		f 3 -14 -29 29
		mu 0 3 10 8 16
		f 3 -17 -30 30
		mu 0 3 12 10 16
		f 3 -20 -31 31
		mu 0 3 14 12 16
		f 3 -23 -32 -25
		mu 0 3 0 14 16
		f 3 32 33 34
		mu 0 3 17 18 19
		f 3 35 36 -34
		mu 0 3 18 20 19
		f 3 37 38 -37
		mu 0 3 20 21 19
		f 3 39 40 -39
		mu 0 3 21 22 19
		f 3 41 42 -41
		mu 0 3 23 24 19
		f 3 43 44 -43
		mu 0 3 24 25 19
		f 3 45 46 -45
		mu 0 3 25 26 19
		f 3 47 -35 -47
		mu 0 3 26 17 19
		f 4 48 49 -46 50
		mu 0 4 27 28 26 25
		f 4 51 -51 -44 52
		mu 0 4 29 27 25 24
		f 4 53 -53 -42 54
		mu 0 4 30 29 24 23
		f 4 55 -55 -40 56
		mu 0 4 31 32 22 21
		f 4 57 -57 -38 58
		mu 0 4 33 31 21 20
		f 4 59 -59 -36 60
		mu 0 4 34 33 20 18
		f 4 61 -61 -33 62
		mu 0 4 35 34 18 17
		f 4 63 -63 -48 -50
		mu 0 4 28 35 17 26
		f 4 64 65 -49 66
		mu 0 4 36 37 28 27
		f 4 67 -67 -52 68
		mu 0 4 38 36 27 29
		f 4 69 -69 -54 70
		mu 0 4 39 38 29 30
		f 4 71 -71 -56 72
		mu 0 4 40 41 32 31
		f 4 73 -73 -58 74
		mu 0 4 42 40 31 33
		f 4 75 -75 -60 76
		mu 0 4 43 42 33 34
		f 4 77 -77 -62 78
		mu 0 4 44 43 34 35
		f 4 79 -79 -64 -66
		mu 0 4 37 44 35 28
		f 4 80 81 -65 82
		mu 0 4 45 46 37 36
		f 4 83 -83 -68 84
		mu 0 4 47 45 36 38
		f 4 85 -85 -70 86
		mu 0 4 48 47 38 39
		f 4 87 -87 -72 88
		mu 0 4 49 50 41 40
		f 4 89 -89 -74 90
		mu 0 4 51 49 40 42
		f 4 91 -91 -76 92
		mu 0 4 52 51 42 43
		f 4 93 -93 -78 94
		mu 0 4 53 52 43 44
		f 4 95 -95 -80 -82
		mu 0 4 46 53 44 37
		f 4 96 97 -81 98
		mu 0 4 54 55 46 45
		f 4 99 -99 -84 100
		mu 0 4 56 54 45 47
		f 4 101 -101 -86 102
		mu 0 4 57 56 47 48
		f 4 103 -103 -88 104
		mu 0 4 58 59 50 49
		f 4 105 -105 -90 106
		mu 0 4 60 58 49 51
		f 4 107 -107 -92 108
		mu 0 4 61 60 51 52
		f 4 109 -109 -94 110
		mu 0 4 62 61 52 53
		f 4 111 -111 -96 -98
		mu 0 4 55 62 53 46
		f 4 112 113 -97 114
		mu 0 4 63 64 55 54
		f 4 115 -115 -100 116
		mu 0 4 65 63 54 56
		f 4 117 -117 -102 118
		mu 0 4 66 65 56 57
		f 4 119 -119 -104 120
		mu 0 4 67 68 59 58
		f 4 121 -121 -106 122
		mu 0 4 69 67 58 60
		f 4 123 -123 -108 124
		mu 0 4 70 69 60 61
		f 4 125 -125 -110 126
		mu 0 4 71 70 61 62
		f 4 127 -127 -112 -114
		mu 0 4 64 71 62 55
		f 4 128 129 -113 130
		mu 0 4 72 73 64 63
		f 4 131 -131 -116 132
		mu 0 4 74 72 63 65
		f 4 133 -133 -118 134
		mu 0 4 75 74 65 66
		f 4 135 -135 -120 136
		mu 0 4 76 77 68 67
		f 4 137 -137 -122 138
		mu 0 4 78 76 67 69
		f 4 139 -139 -124 140
		mu 0 4 79 78 69 70
		f 4 141 -141 -126 142
		mu 0 4 80 79 70 71
		f 4 143 -143 -128 -130
		mu 0 4 73 80 71 64
		f 4 144 145 -129 146
		mu 0 4 81 82 73 72
		f 4 147 -147 -132 148
		mu 0 4 83 81 72 74
		f 4 149 -149 -134 150
		mu 0 4 84 83 74 75
		f 4 151 -151 -136 152
		mu 0 4 85 86 77 76
		f 4 153 -153 -138 154
		mu 0 4 87 85 76 78
		f 4 155 -155 -140 156
		mu 0 4 88 87 78 79
		f 4 157 -157 -142 158
		mu 0 4 89 88 79 80
		f 4 159 -159 -144 -146
		mu 0 4 82 89 80 73
		f 4 160 161 -145 162
		mu 0 4 90 91 82 81
		f 4 163 -163 -148 164
		mu 0 4 92 90 81 83
		f 4 165 -165 -150 166
		mu 0 4 93 92 83 84
		f 4 167 -167 -152 168
		mu 0 4 94 95 86 85
		f 4 169 -169 -154 170
		mu 0 4 96 94 85 87
		f 4 171 -171 -156 172
		mu 0 4 97 96 87 88
		f 4 173 -173 -158 174
		mu 0 4 98 97 88 89
		f 4 175 -175 -160 -162
		mu 0 4 91 98 89 82
		f 4 176 177 -161 178
		mu 0 4 99 100 91 90
		f 4 179 -179 -164 180
		mu 0 4 101 99 90 92
		f 4 181 -181 -166 182
		mu 0 4 102 101 92 93
		f 4 183 -183 -168 184
		mu 0 4 103 104 95 94
		f 4 185 -185 -170 186
		mu 0 4 105 103 94 96
		f 4 187 -187 -172 188
		mu 0 4 106 105 96 97
		f 4 189 -189 -174 190
		mu 0 4 107 106 97 98
		f 4 191 -191 -176 -178
		mu 0 4 100 107 98 91
		f 4 192 193 -177 194
		mu 0 4 108 109 100 99
		f 4 195 -195 -180 196
		mu 0 4 110 108 99 101
		f 4 197 -197 -182 198
		mu 0 4 111 110 101 102
		f 4 199 -199 -184 200
		mu 0 4 112 113 104 103
		f 4 201 -201 -186 202
		mu 0 4 114 112 103 105
		f 4 203 -203 -188 204
		mu 0 4 115 114 105 106
		f 4 205 -205 -190 206
		mu 0 4 116 115 106 107
		f 4 207 -207 -192 -194
		mu 0 4 109 116 107 100
		f 4 208 209 -193 210
		mu 0 4 117 118 109 108
		f 4 211 -211 -196 212
		mu 0 4 119 117 108 110
		f 4 213 -213 -198 214
		mu 0 4 120 119 110 111
		f 4 215 -215 -200 216
		mu 0 4 121 122 113 112
		f 4 217 -217 -202 218
		mu 0 4 123 121 112 114
		f 4 219 -219 -204 220
		mu 0 4 124 123 114 115
		f 4 221 -221 -206 222
		mu 0 4 125 124 115 116
		f 4 223 -223 -208 -210
		mu 0 4 118 125 116 109
		f 4 224 225 -209 226
		mu 0 4 126 127 118 117
		f 4 227 -227 -212 228
		mu 0 4 128 126 117 119
		f 4 229 -229 -214 230
		mu 0 4 129 128 119 120
		f 4 231 -231 -216 232
		mu 0 4 130 131 122 121
		f 4 233 -233 -218 234
		mu 0 4 132 130 121 123
		f 4 235 -235 -220 236
		mu 0 4 133 132 123 124
		f 4 237 -237 -222 238
		mu 0 4 134 133 124 125
		f 4 239 -239 -224 -226
		mu 0 4 127 134 125 118
		f 4 240 241 -225 242
		mu 0 4 135 136 127 126
		f 4 243 -243 -228 244
		mu 0 4 137 135 126 128
		f 4 245 -245 -230 246
		mu 0 4 138 137 128 129
		f 4 247 -247 -232 248
		mu 0 4 139 140 131 130
		f 4 249 -249 -234 250
		mu 0 4 141 139 130 132
		f 4 251 -251 -236 252
		mu 0 4 142 141 132 133
		f 4 253 -253 -238 254
		mu 0 4 143 142 133 134
		f 4 255 -255 -240 -242
		mu 0 4 136 143 134 127
		f 4 256 257 -241 258
		mu 0 4 144 145 136 135
		f 4 259 -259 -244 260
		mu 0 4 146 144 135 137
		f 4 261 -261 -246 262
		mu 0 4 147 146 137 138
		f 4 263 -263 -248 264
		mu 0 4 148 149 140 139
		f 4 265 -265 -250 266
		mu 0 4 150 148 139 141
		f 4 267 -267 -252 268
		mu 0 4 151 150 141 142
		f 4 269 -269 -254 270
		mu 0 4 152 151 142 143
		f 4 271 -271 -256 -258
		mu 0 4 145 152 143 136
		f 4 272 273 -257 274
		mu 0 4 153 154 145 144
		f 4 275 -275 -260 276
		mu 0 4 155 153 144 146
		f 4 277 -277 -262 278
		mu 0 4 156 155 146 147
		f 4 279 -279 -264 280
		mu 0 4 157 158 149 148
		f 4 281 -281 -266 282
		mu 0 4 159 157 148 150
		f 4 283 -283 -268 284
		mu 0 4 160 159 150 151
		f 4 285 -285 -270 286
		mu 0 4 161 160 151 152
		f 4 287 -287 -272 -274
		mu 0 4 154 161 152 145
		f 4 288 289 -273 290
		mu 0 4 162 163 154 153
		f 4 291 -291 -276 292
		mu 0 4 164 162 153 155
		f 4 293 -293 -278 294
		mu 0 4 165 164 155 156
		f 4 295 -295 -280 296
		mu 0 4 166 167 158 157
		f 4 297 -297 -282 298
		mu 0 4 168 166 157 159
		f 4 299 -299 -284 300
		mu 0 4 169 168 159 160
		f 4 301 -301 -286 302
		mu 0 4 170 169 160 161
		f 4 303 -303 -288 -290
		mu 0 4 163 170 161 154
		f 4 304 305 -289 306
		mu 0 4 171 172 163 162
		f 4 307 -307 -292 308
		mu 0 4 173 171 162 164
		f 4 309 -309 -294 310
		mu 0 4 174 173 164 165
		f 4 311 -311 -296 312
		mu 0 4 175 176 167 166
		f 4 313 -313 -298 314
		mu 0 4 177 175 166 168
		f 4 315 -315 -300 316
		mu 0 4 178 177 168 169
		f 4 317 -317 -302 318
		mu 0 4 179 178 169 170
		f 4 319 -319 -304 -306
		mu 0 4 172 179 170 163
		f 4 320 321 -305 322
		mu 0 4 180 181 172 171
		f 4 323 -323 -308 324
		mu 0 4 182 180 171 173
		f 4 325 -325 -310 326
		mu 0 4 183 182 173 174
		f 4 327 -327 -312 328
		mu 0 4 184 185 176 175
		f 4 329 -329 -314 330
		mu 0 4 186 184 175 177
		f 4 331 -331 -316 332
		mu 0 4 187 186 177 178
		f 4 333 -333 -318 334
		mu 0 4 188 187 178 179
		f 4 335 -335 -320 -322
		mu 0 4 181 188 179 172
		f 4 336 337 -321 338
		mu 0 4 189 190 181 180
		f 4 339 -339 -324 340
		mu 0 4 191 189 180 182
		f 4 341 -341 -326 342
		mu 0 4 192 191 182 183
		f 4 343 -343 -328 344
		mu 0 4 193 194 185 184
		f 4 345 -345 -330 346
		mu 0 4 195 193 184 186
		f 4 347 -347 -332 348
		mu 0 4 196 195 186 187
		f 4 349 -349 -334 350
		mu 0 4 197 196 187 188
		f 4 351 -351 -336 -338
		mu 0 4 190 197 188 181
		f 4 352 353 -337 354
		mu 0 4 198 199 190 189
		f 4 355 -355 -340 356
		mu 0 4 200 198 189 191
		f 4 357 -357 -342 358
		mu 0 4 201 200 191 192
		f 4 359 -359 -344 360
		mu 0 4 202 203 194 193
		f 4 361 -361 -346 362
		mu 0 4 204 202 193 195
		f 4 363 -363 -348 364
		mu 0 4 205 204 195 196
		f 4 365 -365 -350 366
		mu 0 4 206 205 196 197
		f 4 367 -367 -352 -354
		mu 0 4 199 206 197 190
		f 4 368 369 -353 370
		mu 0 4 207 208 199 198
		f 4 371 -371 -356 372
		mu 0 4 209 207 198 200
		f 4 373 -373 -358 374
		mu 0 4 210 209 200 201
		f 4 375 -375 -360 376
		mu 0 4 211 212 203 202
		f 4 377 -377 -362 378
		mu 0 4 213 211 202 204
		f 4 379 -379 -364 380
		mu 0 4 214 213 204 205
		f 4 381 -381 -366 382
		mu 0 4 215 214 205 206
		f 4 383 -383 -368 -370
		mu 0 4 208 215 206 199
		f 4 384 385 -369 386
		mu 0 4 216 217 208 207
		f 4 387 -387 -372 388
		mu 0 4 218 216 207 209
		f 4 389 -389 -374 390
		mu 0 4 219 218 209 210
		f 4 391 -391 -376 392
		mu 0 4 220 221 212 211
		f 4 393 -393 -378 394
		mu 0 4 222 220 211 213
		f 4 395 -395 -380 396
		mu 0 4 223 222 213 214
		f 4 397 -397 -382 398
		mu 0 4 224 223 214 215
		f 4 399 -399 -384 -386
		mu 0 4 217 224 215 208
		f 4 400 401 -385 402
		mu 0 4 225 226 217 216
		f 4 403 -403 -388 404
		mu 0 4 227 225 216 218
		f 4 405 -405 -390 406
		mu 0 4 228 227 218 219
		f 4 407 -407 -392 408
		mu 0 4 229 230 221 220
		f 4 409 -409 -394 410
		mu 0 4 231 229 220 222
		f 4 411 -411 -396 412
		mu 0 4 232 231 222 223
		f 4 413 -413 -398 414
		mu 0 4 233 232 223 224
		f 4 415 -415 -400 -402
		mu 0 4 226 233 224 217
		f 4 416 417 -401 418
		mu 0 4 234 235 226 225
		f 4 419 -419 -404 420
		mu 0 4 236 234 225 227
		f 4 421 -421 -406 422
		mu 0 4 237 236 227 228
		f 4 423 -423 -408 424
		mu 0 4 238 239 230 229
		f 4 425 -425 -410 426
		mu 0 4 240 238 229 231
		f 4 427 -427 -412 428
		mu 0 4 241 240 231 232
		f 4 429 -429 -414 430
		mu 0 4 242 241 232 233
		f 4 431 -431 -416 -418
		mu 0 4 235 242 233 226
		f 4 432 433 -417 434
		mu 0 4 243 244 235 234
		f 4 435 -435 -420 436
		mu 0 4 245 243 234 236
		f 4 437 -437 -422 438
		mu 0 4 246 245 236 237
		f 4 439 -439 -424 440
		mu 0 4 247 248 239 238
		f 4 441 -441 -426 442
		mu 0 4 249 247 238 240
		f 4 443 -443 -428 444
		mu 0 4 250 249 240 241
		f 4 445 -445 -430 446
		mu 0 4 251 250 241 242
		f 4 447 -447 -432 -434
		mu 0 4 244 251 242 235
		f 4 448 449 -433 450
		mu 0 4 252 253 244 243
		f 4 451 -451 -436 452
		mu 0 4 254 252 243 245
		f 4 453 -453 -438 454
		mu 0 4 255 254 245 246
		f 4 455 -455 -440 456
		mu 0 4 256 257 248 247
		f 4 457 -457 -442 458
		mu 0 4 258 256 247 249
		f 4 459 -459 -444 460
		mu 0 4 259 258 249 250
		f 4 461 -461 -446 462
		mu 0 4 260 259 250 251
		f 4 463 -463 -448 -450
		mu 0 4 253 260 251 244
		f 4 464 465 -449 466
		mu 0 4 261 262 253 252
		f 4 467 -467 -452 468
		mu 0 4 263 261 252 254
		f 4 469 -469 -454 470
		mu 0 4 264 263 254 255
		f 4 471 -471 -456 472
		mu 0 4 265 266 257 256
		f 4 473 -473 -458 474
		mu 0 4 267 265 256 258
		f 4 475 -475 -460 476
		mu 0 4 268 267 258 259
		f 4 477 -477 -462 478
		mu 0 4 269 268 259 260
		f 4 479 -479 -464 -466
		mu 0 4 262 269 260 253
		f 4 480 481 -465 482
		mu 0 4 270 271 262 261
		f 4 483 -483 -468 484
		mu 0 4 272 270 261 263
		f 4 485 -485 -470 486
		mu 0 4 273 272 263 264
		f 4 487 -487 -472 488
		mu 0 4 274 275 266 265
		f 4 489 -489 -474 490
		mu 0 4 276 274 265 267
		f 4 491 -491 -476 492
		mu 0 4 277 276 267 268
		f 4 493 -493 -478 494
		mu 0 4 278 277 268 269
		f 4 495 -495 -480 -482
		mu 0 4 271 278 269 262
		f 4 496 497 -481 498
		mu 0 4 279 280 271 270
		f 4 499 -499 -484 500
		mu 0 4 281 279 270 272
		f 4 501 -501 -486 502
		mu 0 4 282 281 272 273
		f 4 503 -503 -488 504
		mu 0 4 283 284 275 274
		f 4 505 -505 -490 506
		mu 0 4 285 283 274 276
		f 4 507 -507 -492 508
		mu 0 4 286 285 276 277
		f 4 509 -509 -494 510
		mu 0 4 287 286 277 278
		f 4 511 -511 -496 -498
		mu 0 4 280 287 278 271
		f 4 512 513 -497 514
		mu 0 4 288 289 280 279
		f 4 515 -515 -500 516
		mu 0 4 290 288 279 281
		f 4 517 -517 -502 518
		mu 0 4 291 290 281 282
		f 4 519 -519 -504 520
		mu 0 4 292 293 284 283
		f 4 521 -521 -506 522
		mu 0 4 294 292 283 285
		f 4 523 -523 -508 524
		mu 0 4 295 294 285 286
		f 4 525 -525 -510 526
		mu 0 4 296 295 286 287
		f 4 527 -527 -512 -514
		mu 0 4 289 296 287 280
		f 4 528 529 -513 530
		mu 0 4 297 298 289 288
		f 4 531 -531 -516 532
		mu 0 4 299 297 288 290
		f 4 533 -533 -518 534
		mu 0 4 300 299 290 291
		f 4 535 -535 -520 536
		mu 0 4 301 302 293 292
		f 4 537 -537 -522 538
		mu 0 4 303 301 292 294
		f 4 539 -539 -524 540
		mu 0 4 304 303 294 295
		f 4 541 -541 -526 542
		mu 0 4 305 304 295 296
		f 4 543 -543 -528 -530
		mu 0 4 298 305 296 289
		f 4 544 545 -529 546
		mu 0 4 306 307 298 297
		f 4 547 -547 -532 548
		mu 0 4 308 306 297 299
		f 4 549 -549 -534 550
		mu 0 4 309 308 299 300
		f 4 551 -551 -536 552
		mu 0 4 310 311 302 301
		f 4 553 -553 -538 554
		mu 0 4 312 310 301 303
		f 4 555 -555 -540 556
		mu 0 4 313 312 303 304
		f 4 557 -557 -542 558
		mu 0 4 314 313 304 305
		f 4 559 -559 -544 -546
		mu 0 4 307 314 305 298
		f 4 560 561 -545 562
		mu 0 4 315 316 307 306
		f 4 563 -563 -548 564
		mu 0 4 317 315 306 308
		f 4 565 -565 -550 566
		mu 0 4 318 317 308 309
		f 4 567 -567 -552 568
		mu 0 4 319 320 311 310
		f 4 569 -569 -554 570
		mu 0 4 321 319 310 312
		f 4 571 -571 -556 572
		mu 0 4 322 321 312 313
		f 4 573 -573 -558 574
		mu 0 4 323 322 313 314
		f 4 575 -575 -560 -562
		mu 0 4 316 323 314 307
		f 4 576 577 -561 578
		mu 0 4 324 325 316 315
		f 4 579 -579 -564 580
		mu 0 4 326 324 315 317
		f 4 581 -581 -566 582
		mu 0 4 327 326 317 318
		f 4 583 -583 -568 584
		mu 0 4 328 329 320 319
		f 4 585 -585 -570 586
		mu 0 4 330 328 319 321
		f 4 587 -587 -572 588
		mu 0 4 331 330 321 322
		f 4 589 -589 -574 590
		mu 0 4 332 331 322 323
		f 4 591 -591 -576 -578
		mu 0 4 325 332 323 316
		f 4 592 593 -577 594
		mu 0 4 333 334 325 324
		f 4 595 -595 -580 596
		mu 0 4 335 333 324 326
		f 4 597 -597 -582 598
		mu 0 4 336 335 326 327
		f 4 599 -599 -584 600
		mu 0 4 337 338 329 328
		f 4 601 -601 -586 602
		mu 0 4 339 337 328 330
		f 4 603 -603 -588 604
		mu 0 4 340 339 330 331
		f 4 605 -605 -590 606
		mu 0 4 341 340 331 332
		f 4 607 -607 -592 -594
		mu 0 4 334 341 332 325
		f 4 608 609 -593 610
		mu 0 4 342 343 334 333
		f 4 611 -611 -596 612
		mu 0 4 344 342 333 335
		f 4 613 -613 -598 614
		mu 0 4 345 344 335 336
		f 4 615 -615 -600 616
		mu 0 4 346 347 338 337
		f 4 617 -617 -602 618
		mu 0 4 348 346 337 339
		f 4 619 -619 -604 620
		mu 0 4 349 348 339 340
		f 4 621 -621 -606 622
		mu 0 4 350 349 340 341
		f 4 623 -623 -608 -610
		mu 0 4 343 350 341 334
		f 4 624 625 -609 626
		mu 0 4 351 352 343 342
		f 4 627 -627 -612 628
		mu 0 4 353 351 342 344
		f 4 629 -629 -614 630
		mu 0 4 354 353 344 345
		f 4 631 -631 -616 632
		mu 0 4 355 356 347 346
		f 4 633 -633 -618 634
		mu 0 4 357 355 346 348
		f 4 635 -635 -620 636
		mu 0 4 358 357 348 349
		f 4 637 -637 -622 638
		mu 0 4 359 358 349 350
		f 4 639 -639 -624 -626
		mu 0 4 352 359 350 343
		f 4 640 641 -625 642
		mu 0 4 360 361 352 351
		f 4 643 -643 -628 644
		mu 0 4 362 360 351 353
		f 4 645 -645 -630 646
		mu 0 4 363 362 353 354
		f 4 647 -647 -632 648
		mu 0 4 364 365 356 355
		f 4 649 -649 -634 650
		mu 0 4 366 364 355 357
		f 4 651 -651 -636 652
		mu 0 4 367 366 357 358
		f 4 653 -653 -638 654
		mu 0 4 368 367 358 359
		f 4 655 -655 -640 -642
		mu 0 4 361 368 359 352
		f 4 656 657 -641 658
		mu 0 4 369 370 361 360
		f 4 659 -659 -644 660
		mu 0 4 371 369 360 362
		f 4 661 -661 -646 662
		mu 0 4 372 371 362 363
		f 4 663 -663 -648 664
		mu 0 4 373 374 365 364
		f 4 665 -665 -650 666
		mu 0 4 375 373 364 366
		f 4 667 -667 -652 668
		mu 0 4 376 375 366 367
		f 4 669 -669 -654 670
		mu 0 4 377 376 367 368
		f 4 671 -671 -656 -658
		mu 0 4 370 377 368 361
		f 4 672 673 -657 674
		mu 0 4 378 379 370 369
		f 4 675 -675 -660 676
		mu 0 4 380 378 369 371
		f 4 677 -677 -662 678
		mu 0 4 381 380 371 372
		f 4 679 -679 -664 680
		mu 0 4 382 383 374 373
		f 4 681 -681 -666 682
		mu 0 4 384 382 373 375
		f 4 683 -683 -668 684
		mu 0 4 385 384 375 376
		f 4 685 -685 -670 686
		mu 0 4 386 385 376 377
		f 4 687 -687 -672 -674
		mu 0 4 379 386 377 370
		f 4 688 689 -673 690
		mu 0 4 387 388 379 378
		f 4 691 -691 -676 692
		mu 0 4 389 387 378 380
		f 4 693 -693 -678 694
		mu 0 4 390 389 380 381
		f 4 695 -695 -680 696
		mu 0 4 391 392 383 382
		f 4 697 -697 -682 698
		mu 0 4 393 391 382 384
		f 4 699 -699 -684 700
		mu 0 4 394 393 384 385
		f 4 701 -701 -686 702
		mu 0 4 395 394 385 386
		f 4 703 -703 -688 -690
		mu 0 4 388 395 386 379
		f 4 704 705 -689 706
		mu 0 4 396 397 388 387
		f 4 707 -707 -692 708
		mu 0 4 398 396 387 389
		f 4 709 -709 -694 710
		mu 0 4 399 398 389 390
		f 4 711 -711 -696 712
		mu 0 4 400 401 392 391
		f 4 713 -713 -698 714
		mu 0 4 402 400 391 393
		f 4 715 -715 -700 716
		mu 0 4 403 402 393 394
		f 4 717 -717 -702 718
		mu 0 4 404 403 394 395
		f 4 719 -719 -704 -706
		mu 0 4 397 404 395 388
		f 4 720 721 -705 722
		mu 0 4 405 406 397 396
		f 4 723 -723 -708 724
		mu 0 4 407 405 396 398
		f 4 725 -725 -710 726
		mu 0 4 408 407 398 399
		f 4 727 -727 -712 728
		mu 0 4 409 410 401 400
		f 4 729 -729 -714 730
		mu 0 4 411 409 400 402
		f 4 731 -731 -716 732
		mu 0 4 412 411 402 403
		f 4 733 -733 -718 734
		mu 0 4 413 412 403 404
		f 4 735 -735 -720 -722
		mu 0 4 406 413 404 397
		f 4 736 737 -721 738
		mu 0 4 414 415 406 405
		f 4 739 -739 -724 740
		mu 0 4 416 414 405 407
		f 4 741 -741 -726 742
		mu 0 4 417 416 407 408
		f 4 743 -743 -728 744
		mu 0 4 418 419 410 409
		f 4 745 -745 -730 746
		mu 0 4 420 418 409 411
		f 4 747 -747 -732 748
		mu 0 4 421 420 411 412
		f 4 749 -749 -734 750
		mu 0 4 422 421 412 413
		f 4 751 -751 -736 -738
		mu 0 4 415 422 413 406
		f 4 752 753 -737 754
		mu 0 4 423 424 415 414
		f 4 755 -755 -740 756
		mu 0 4 425 423 414 416
		f 4 757 -757 -742 758
		mu 0 4 426 425 416 417
		f 4 759 -759 -744 760
		mu 0 4 427 428 419 418
		f 4 761 -761 -746 762
		mu 0 4 429 427 418 420
		f 4 763 -763 -748 764
		mu 0 4 430 429 420 421
		f 4 765 -765 -750 766
		mu 0 4 431 430 421 422
		f 4 767 -767 -752 -754
		mu 0 4 424 431 422 415
		f 4 768 769 -753 770
		mu 0 4 432 433 424 423
		f 4 771 -771 -756 772
		mu 0 4 434 432 423 425
		f 4 773 -773 -758 774
		mu 0 4 435 434 425 426
		f 4 775 -775 -760 776
		mu 0 4 436 437 428 427
		f 4 777 -777 -762 778
		mu 0 4 438 436 427 429
		f 4 779 -779 -764 780
		mu 0 4 439 438 429 430
		f 4 781 -781 -766 782
		mu 0 4 440 439 430 431
		f 4 783 -783 -768 -770
		mu 0 4 433 440 431 424
		f 4 784 785 -769 786
		mu 0 4 441 442 433 432
		f 4 787 -787 -772 788
		mu 0 4 443 441 432 434
		f 4 789 -789 -774 790
		mu 0 4 444 443 434 435
		f 4 791 -791 -776 792
		mu 0 4 445 446 437 436
		f 4 793 -793 -778 794
		mu 0 4 447 445 436 438
		f 4 795 -795 -780 796
		mu 0 4 448 447 438 439
		f 4 797 -797 -782 798
		mu 0 4 449 448 439 440
		f 4 799 -799 -784 -786
		mu 0 4 442 449 440 433
		f 4 800 801 -785 802
		mu 0 4 450 451 442 441
		f 4 803 -803 -788 804
		mu 0 4 452 450 441 443
		f 4 805 -805 -790 806
		mu 0 4 453 452 443 444
		f 4 807 -807 -792 808
		mu 0 4 454 455 446 445
		f 4 809 -809 -794 810
		mu 0 4 456 454 445 447
		f 4 811 -811 -796 812
		mu 0 4 457 456 447 448
		f 4 813 -813 -798 814
		mu 0 4 458 457 448 449
		f 4 815 -815 -800 -802
		mu 0 4 451 458 449 442
		f 4 816 817 -801 818
		mu 0 4 459 460 451 450
		f 4 819 -819 -804 820
		mu 0 4 461 459 450 452
		f 4 821 -821 -806 822
		mu 0 4 462 461 452 453
		f 4 823 -823 -808 824
		mu 0 4 463 464 455 454
		f 4 825 -825 -810 826
		mu 0 4 465 463 454 456
		f 4 827 -827 -812 828
		mu 0 4 466 465 456 457
		f 4 829 -829 -814 830
		mu 0 4 467 466 457 458
		f 4 831 -831 -816 -818
		mu 0 4 460 467 458 451
		f 4 832 833 -817 834
		mu 0 4 468 469 460 459
		f 4 835 -835 -820 836
		mu 0 4 470 468 459 461
		f 4 837 -837 -822 838
		mu 0 4 471 470 461 462
		f 4 839 -839 -824 840
		mu 0 4 472 473 464 463
		f 4 841 -841 -826 842
		mu 0 4 474 472 463 465
		f 4 843 -843 -828 844
		mu 0 4 475 474 465 466
		f 4 845 -845 -830 846
		mu 0 4 476 475 466 467
		f 4 847 -847 -832 -834
		mu 0 4 469 476 467 460
		f 4 848 849 -833 850
		mu 0 4 477 478 469 468
		f 4 851 -851 -836 852
		mu 0 4 479 477 468 470
		f 4 853 -853 -838 854
		mu 0 4 480 479 470 471
		f 4 855 -855 -840 856
		mu 0 4 481 482 473 472
		f 4 857 -857 -842 858
		mu 0 4 483 481 472 474
		f 4 859 -859 -844 860
		mu 0 4 484 483 474 475
		f 4 861 -861 -846 862
		mu 0 4 485 484 475 476
		f 4 863 -863 -848 -850
		mu 0 4 478 485 476 469
		f 4 864 865 -849 866
		mu 0 4 486 487 478 477
		f 4 867 -867 -852 868
		mu 0 4 488 486 477 479
		f 4 869 -869 -854 870
		mu 0 4 489 488 479 480
		f 4 871 -871 -856 872
		mu 0 4 490 491 482 481
		f 4 873 -873 -858 874
		mu 0 4 492 490 481 483
		f 4 875 -875 -860 876
		mu 0 4 493 492 483 484
		f 4 877 -877 -862 878
		mu 0 4 494 493 484 485
		f 4 879 -879 -864 -866
		mu 0 4 487 494 485 478
		f 4 880 881 -865 882
		mu 0 4 495 496 487 486
		f 4 883 -883 -868 884
		mu 0 4 497 495 486 488
		f 4 885 -885 -870 886
		mu 0 4 498 497 488 489
		f 4 887 -887 -872 888
		mu 0 4 499 500 491 490
		f 4 889 -889 -874 890
		mu 0 4 501 499 490 492
		f 4 891 -891 -876 892
		mu 0 4 502 501 492 493
		f 4 893 -893 -878 894
		mu 0 4 503 502 493 494
		f 4 895 -895 -880 -882
		mu 0 4 496 503 494 487
		f 4 896 897 -881 898
		mu 0 4 504 505 496 495
		f 4 899 -899 -884 900
		mu 0 4 506 504 495 497
		f 4 901 -901 -886 902
		mu 0 4 507 506 497 498
		f 4 903 -903 -888 904
		mu 0 4 508 509 500 499
		f 4 905 -905 -890 906
		mu 0 4 510 508 499 501
		f 4 907 -907 -892 908
		mu 0 4 511 510 501 502
		f 4 909 -909 -894 910
		mu 0 4 512 511 502 503
		f 4 911 -911 -896 -898
		mu 0 4 505 512 503 496
		f 4 912 913 -897 914
		mu 0 4 513 514 505 504
		f 4 915 -915 -900 916
		mu 0 4 515 513 504 506
		f 4 917 -917 -902 918
		mu 0 4 516 515 506 507
		f 4 919 -919 -904 920
		mu 0 4 517 518 509 508
		f 4 921 -921 -906 922
		mu 0 4 519 517 508 510
		f 4 923 -923 -908 924
		mu 0 4 520 519 510 511
		f 4 925 -925 -910 926
		mu 0 4 521 520 511 512
		f 4 927 -927 -912 -914
		mu 0 4 514 521 512 505
		f 4 928 929 -913 930
		mu 0 4 522 523 514 513
		f 4 931 -931 -916 932
		mu 0 4 524 522 513 515
		f 4 933 -933 -918 934
		mu 0 4 525 524 515 516
		f 4 935 -935 -920 936
		mu 0 4 526 527 518 517
		f 4 937 -937 -922 938
		mu 0 4 528 526 517 519
		f 4 939 -939 -924 940
		mu 0 4 529 528 519 520
		f 4 941 -941 -926 942
		mu 0 4 530 529 520 521
		f 4 943 -943 -928 -930
		mu 0 4 523 530 521 514
		f 4 944 945 -929 946
		mu 0 4 531 532 523 522
		f 4 947 -947 -932 948
		mu 0 4 533 531 522 524
		f 4 949 -949 -934 950
		mu 0 4 534 533 524 525
		f 4 951 -951 -936 952
		mu 0 4 535 536 527 526
		f 4 953 -953 -938 954
		mu 0 4 537 535 526 528
		f 4 955 -955 -940 956
		mu 0 4 538 537 528 529
		f 4 957 -957 -942 958
		mu 0 4 539 538 529 530
		f 4 959 -959 -944 -946
		mu 0 4 532 539 530 523
		f 4 960 961 -945 962
		mu 0 4 540 541 532 531
		f 4 963 -963 -948 964
		mu 0 4 542 540 531 533
		f 4 965 -965 -950 966
		mu 0 4 543 542 533 534
		f 4 967 -967 -952 968
		mu 0 4 544 545 536 535
		f 4 969 -969 -954 970
		mu 0 4 546 544 535 537
		f 4 971 -971 -956 972
		mu 0 4 547 546 537 538
		f 4 973 -973 -958 974
		mu 0 4 548 547 538 539
		f 4 975 -975 -960 -962
		mu 0 4 541 548 539 532
		f 4 976 977 -961 978
		mu 0 4 549 550 541 540
		f 4 979 -979 -964 980
		mu 0 4 551 549 540 542
		f 4 981 -981 -966 982
		mu 0 4 552 551 542 543
		f 4 983 -983 -968 984
		mu 0 4 553 554 545 544
		f 4 985 -985 -970 986
		mu 0 4 555 553 544 546
		f 4 987 -987 -972 988
		mu 0 4 556 555 546 547
		f 4 989 -989 -974 990
		mu 0 4 557 556 547 548
		f 4 991 -991 -976 -978
		mu 0 4 550 557 548 541
		f 4 -22 992 -977 993
		mu 0 4 558 559 550 549
		f 4 -19 -994 -980 994
		mu 0 4 560 558 549 551
		f 4 -16 -995 -982 995
		mu 0 4 561 560 551 552
		f 4 -13 -996 -984 996
		mu 0 4 562 563 554 553;
	setAttr ".fc[500:641]"
		f 4 -10 -997 -986 997
		mu 0 4 564 562 553 555
		f 4 -7 -998 -988 998
		mu 0 4 565 564 555 556
		f 4 -3 -999 -990 999
		mu 0 4 566 565 556 557
		f 4 -24 -1000 -992 -993
		mu 0 4 559 566 557 550
		f 4 1000 1001 1002 1003
		mu 0 4 567 568 569 570
		f 4 1004 1005 1006 -1002
		mu 0 4 568 571 572 569
		f 4 1007 1008 1009 -1006
		mu 0 4 571 573 574 572
		f 4 1010 1011 1012 -1009
		mu 0 4 573 575 576 574
		f 4 1013 1014 1015 -1012
		mu 0 4 575 577 578 576
		f 4 1016 1017 1018 -1015
		mu 0 4 577 579 580 578
		f 4 1019 1020 1021 -1018
		mu 0 4 579 581 582 580
		f 4 1022 1023 1024 -1021
		mu 0 4 581 583 584 582
		f 4 1025 1026 1027 -1024
		mu 0 4 583 585 586 584
		f 4 1028 1029 1030 -1027
		mu 0 4 585 587 588 586
		f 4 1031 1032 1033 -1030
		mu 0 4 587 589 590 588
		f 4 1034 1035 1036 -1033
		mu 0 4 589 591 592 590
		f 4 1037 1038 1039 -1036
		mu 0 4 591 593 594 592
		f 4 1040 1041 1042 -1039
		mu 0 4 593 595 596 594
		f 4 1043 1044 1045 -1042
		mu 0 4 595 597 598 596
		f 4 1046 1047 1048 -1045
		mu 0 4 597 599 600 598
		f 4 1049 1050 1051 -1048
		mu 0 4 599 601 602 600
		f 4 1052 1053 1054 -1051
		mu 0 4 601 603 604 602
		f 4 1055 1056 1057 -1054
		mu 0 4 603 605 606 604
		f 4 1058 -1004 1059 -1057
		mu 0 4 605 607 608 606
		f 3 -1001 1060 1061
		mu 0 3 609 610 611
		f 3 -1005 -1062 1062
		mu 0 3 612 609 611
		f 3 -1008 -1063 1063
		mu 0 3 613 612 611
		f 3 -1011 -1064 1064
		mu 0 3 614 613 611
		f 3 -1014 -1065 1065
		mu 0 3 615 614 611
		f 3 -1017 -1066 1066
		mu 0 3 616 615 611
		f 3 -1020 -1067 1067
		mu 0 3 617 616 611
		f 3 -1023 -1068 1068
		mu 0 3 618 617 611
		f 3 -1026 -1069 1069
		mu 0 3 619 618 611
		f 3 -1029 -1070 1070
		mu 0 3 620 619 611
		f 3 -1032 -1071 1071
		mu 0 3 621 620 611
		f 3 -1035 -1072 1072
		mu 0 3 622 621 611
		f 3 -1038 -1073 1073
		mu 0 3 623 622 611
		f 3 -1041 -1074 1074
		mu 0 3 624 623 611
		f 3 -1044 -1075 1075
		mu 0 3 625 624 611
		f 3 -1047 -1076 1076
		mu 0 3 626 625 611
		f 3 -1050 -1077 1077
		mu 0 3 627 626 611
		f 3 -1053 -1078 1078
		mu 0 3 628 627 611
		f 3 -1056 -1079 1079
		mu 0 3 629 628 611
		f 3 -1059 -1080 -1061
		mu 0 3 610 629 611
		f 3 1080 1081 1082
		mu 0 3 630 631 632
		f 3 1083 1084 -1082
		mu 0 3 631 633 632
		f 3 1085 1086 -1085
		mu 0 3 633 634 632
		f 3 1087 1088 -1087
		mu 0 3 634 635 632
		f 3 1089 1090 -1089
		mu 0 3 635 636 632
		f 3 1091 1092 -1091
		mu 0 3 636 637 632
		f 3 1093 1094 -1093
		mu 0 3 637 638 632
		f 3 1095 1096 -1095
		mu 0 3 638 639 632
		f 3 1097 1098 -1097
		mu 0 3 639 640 632
		f 3 1099 1100 -1099
		mu 0 3 640 641 632
		f 3 1101 1102 -1101
		mu 0 3 641 642 632
		f 3 1103 1104 -1103
		mu 0 3 642 643 632
		f 3 1105 1106 -1105
		mu 0 3 643 644 632
		f 3 1107 1108 -1107
		mu 0 3 644 645 632
		f 3 1109 1110 -1109
		mu 0 3 645 646 632
		f 3 1111 1112 -1111
		mu 0 3 646 647 632
		f 3 1113 1114 -1113
		mu 0 3 647 648 632
		f 3 1115 1116 -1115
		mu 0 3 648 649 632
		f 3 1117 1118 -1117
		mu 0 3 649 650 632
		f 3 1119 -1083 -1119
		mu 0 3 650 630 632
		f 4 -1003 1120 1121 1122
		mu 0 4 570 569 651 652
		f 4 -1007 1123 1124 -1121
		mu 0 4 569 572 653 651
		f 4 -1010 1125 1126 -1124
		mu 0 4 572 574 654 653
		f 4 -1013 1127 1128 -1126
		mu 0 4 574 576 655 654
		f 4 -1016 1129 1130 -1128
		mu 0 4 576 578 656 655
		f 4 -1019 1131 1132 -1130
		mu 0 4 578 580 657 656
		f 4 -1022 1133 1134 -1132
		mu 0 4 580 582 658 657
		f 4 -1025 1135 1136 -1134
		mu 0 4 582 584 659 658
		f 4 -1028 1137 1138 -1136
		mu 0 4 584 586 660 659
		f 4 -1031 1139 1140 -1138
		mu 0 4 586 588 661 660
		f 4 -1034 1141 1142 -1140
		mu 0 4 588 590 662 661
		f 4 -1037 1143 1144 -1142
		mu 0 4 590 592 663 662
		f 4 -1040 1145 1146 -1144
		mu 0 4 592 594 664 663
		f 4 -1043 1147 1148 -1146
		mu 0 4 594 596 665 664
		f 4 -1046 1149 1150 -1148
		mu 0 4 596 598 666 665
		f 4 -1049 1151 1152 -1150
		mu 0 4 598 600 667 666
		f 4 -1052 1153 1154 -1152
		mu 0 4 600 602 668 667
		f 4 -1055 1155 1156 -1154
		mu 0 4 602 604 669 668
		f 4 -1058 1157 1158 -1156
		mu 0 4 604 606 670 669
		f 4 -1060 -1123 1159 -1158
		mu 0 4 606 608 671 670
		f 4 -1122 1160 1161 1162
		mu 0 4 652 651 672 673
		f 4 -1125 1163 1164 -1161
		mu 0 4 651 653 674 672
		f 4 -1127 1165 1166 -1164
		mu 0 4 653 654 675 674
		f 4 -1129 1167 1168 -1166
		mu 0 4 654 655 676 675
		f 4 -1131 1169 1170 -1168
		mu 0 4 655 656 677 676
		f 4 -1133 1171 1172 -1170
		mu 0 4 656 657 678 677
		f 4 -1135 1173 1174 -1172
		mu 0 4 657 658 679 678
		f 4 -1137 1175 1176 -1174
		mu 0 4 658 659 680 679
		f 4 -1139 1177 1178 -1176
		mu 0 4 659 660 681 680
		f 4 -1141 1179 1180 -1178
		mu 0 4 660 661 682 681
		f 4 -1143 1181 1182 -1180
		mu 0 4 661 662 683 682
		f 4 -1145 1183 1184 -1182
		mu 0 4 662 663 684 683
		f 4 -1147 1185 1186 -1184
		mu 0 4 663 664 685 684
		f 4 -1149 1187 1188 -1186
		mu 0 4 664 665 686 685
		f 4 -1151 1189 1190 -1188
		mu 0 4 665 666 687 686
		f 4 -1153 1191 1192 -1190
		mu 0 4 666 667 688 687
		f 4 -1155 1193 1194 -1192
		mu 0 4 667 668 689 688
		f 4 -1157 1195 1196 -1194
		mu 0 4 668 669 690 689
		f 4 -1159 1197 1198 -1196
		mu 0 4 669 670 691 690
		f 4 -1160 -1163 1199 -1198
		mu 0 4 670 671 692 691
		f 4 -1162 1200 -1081 1201
		mu 0 4 673 672 693 694
		f 4 -1165 1202 -1084 -1201
		mu 0 4 672 674 695 693
		f 4 -1167 1203 -1086 -1203
		mu 0 4 674 675 696 695
		f 4 -1169 1204 -1088 -1204
		mu 0 4 675 676 697 696
		f 4 -1171 1205 -1090 -1205
		mu 0 4 676 677 698 697
		f 4 -1173 1206 -1092 -1206
		mu 0 4 677 678 699 698
		f 4 -1175 1207 -1094 -1207
		mu 0 4 678 679 700 699
		f 4 -1177 1208 -1096 -1208
		mu 0 4 679 680 701 700
		f 4 -1179 1209 -1098 -1209
		mu 0 4 680 681 702 701
		f 4 -1181 1210 -1100 -1210
		mu 0 4 681 682 703 702
		f 4 -1183 1211 -1102 -1211
		mu 0 4 682 683 704 703
		f 4 -1185 1212 -1104 -1212
		mu 0 4 683 684 705 704
		f 4 -1187 1213 -1106 -1213
		mu 0 4 684 685 706 705
		f 4 -1189 1214 -1108 -1214
		mu 0 4 685 686 707 706
		f 4 -1191 1215 -1110 -1215
		mu 0 4 686 687 708 707
		f 4 -1193 1216 -1112 -1216
		mu 0 4 687 688 709 708
		f 4 -1195 1217 -1114 -1217
		mu 0 4 688 689 710 709
		f 4 -1197 1218 -1116 -1218
		mu 0 4 689 690 711 710
		f 4 -1199 1219 -1118 -1219
		mu 0 4 690 691 712 711
		f 4 -1200 -1202 -1120 -1220
		mu 0 4 691 692 713 712
		f 4 1220 1221 1222 1223
		mu 0 4 714 715 716 717
		f 4 1224 1225 1226 -1222
		mu 0 4 718 719 720 721
		f 4 1227 1228 1229 -1226
		mu 0 4 719 722 723 720
		f 4 1230 1231 1232 -1229
		mu 0 4 722 724 725 723
		f 4 1233 1234 1235 -1232
		mu 0 4 724 726 727 725
		f 4 1236 -1224 1237 -1235
		mu 0 4 726 714 717 727
		f 4 -1223 1238 1239 1240
		mu 0 4 717 716 728 729
		f 4 -1227 1241 1242 -1239
		mu 0 4 721 720 730 731
		f 4 -1230 1243 1244 -1242
		mu 0 4 720 723 732 730
		f 4 -1233 1245 1246 -1244
		mu 0 4 723 725 733 732
		f 4 -1236 1247 1248 -1246
		mu 0 4 725 727 734 733
		f 4 -1238 -1241 1249 -1248
		mu 0 4 727 717 729 734
		f 3 -1240 1250 1251
		mu 0 3 729 728 735
		f 3 -1243 1252 -1251
		mu 0 3 731 730 735
		f 3 -1245 1253 -1253
		mu 0 3 730 732 735
		f 3 -1247 1254 -1254
		mu 0 3 732 733 735
		f 3 -1249 1255 -1255
		mu 0 3 733 734 735
		f 3 -1250 -1252 -1256
		mu 0 3 734 729 735;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "vine_unwrapped_headus:Mesh";
	setAttr ".t" -type "double3" 0 0 -10.466733622030084 ;
createNode transform -n "polySurface1" -p "vine_unwrapped_headus:Mesh";
	setAttr ".rp" -type "double3" -6.4487573504447937 4.0226285830140114 0.97883802652359009 ;
	setAttr ".sp" -type "double3" -6.4487573504447937 4.0226285830140114 0.97883802652359009 ;
createNode mesh -n "polySurfaceShape2" -p "polySurface1";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:503]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.47818135656416416 0.49830970168113714 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 568 ".uvst[0].uvsp";
	setAttr ".uvst[0].uvsp[0:249]" -type "float2" 0.51851749 0.3402141 0.49750343
		 0.33177412 0.49752644 0.26171809 0.56677639 0.2907021 0.47648647 0.34021309 0.42826745
		 0.2906791 0.46732745 0.36115912 0.39991346 0.3600311 0.47597346 0.3826201 0.42846444
		 0.42916611 0.49750647 0.39156711 0.49748644 0.45793712 0.51903749 0.3826161 0.56651747
		 0.4291901 0.52767742 0.36115509 0.59510148 0.36006811 0.49750343 0.3616201 0.85467994
		 0.98034036 0.85780203 0.97993028 0.85822821 0.98492169 0.86065471 0.98042893 0.86316502
		 0.98170662 0.8649419 0.9837895 0.84465611 0.98520231 0.84601408 0.98276997 0.85181689
		 0.98594224 0.84858429 0.98107737 0.85156637 0.98026592 0.83810681 0.96640301 0.84581381
		 0.96454191 0.83111489 0.97032928 0.82583219 0.97653604 0.87500179 0.96943802 0.88208407
		 0.97393739 0.86764443 0.96660161 0.86051124 0.96499062 0.85336244 0.96428758 0.83154356
		 0.95364904 0.84090477 0.95020247 0.82245678 0.95803261 0.81331623 0.96293896 0.88094902
		 0.95493627 0.89064157 0.95977652 0.87106252 0.95083022 0.8608731 0.94849032 0.85070479
		 0.94832206 0.8267805 0.94070816 0.83747089 0.93826979 0.81639463 0.94400769 0.80605084
		 0.94724286 0.88227898 0.94265378 0.89311016 0.94526249 0.8711834 0.93990564 0.8598668
		 0.93791401 0.84854299 0.93727875 0.8235907 0.92773998 0.83500332 0.92637128 0.81255597
		 0.92983937 0.80167776 0.93170023 0.88238013 0.93036485 0.89355129 0.93163121 0.87079823
		 0.92881036 0.85886157 0.92727125 0.84682804 0.92626321 0.82135272 0.9143523 0.83303738
		 0.91462749 0.81009108 0.91493517 0.79899675 0.91559631 0.88176364 0.91736794 0.89309716
		 0.91725802 0.86992812 0.91751647 0.85760826 0.91700768 0.84518796 0.91577673 0.82044595
		 0.90014362 0.83199114 0.90252608 0.80913734 0.89920413 0.79790002 0.89919257 0.88003683
		 0.9035933 0.89130014 0.90155679 0.86839157 0.90603775 0.8561992 0.90689421 0.84391123
		 0.90537232 0.8218506 0.88663912 0.83321697 0.88980603 0.81044865 0.88517082 0.79910058
		 0.88499069 0.87877774 0.88901347 0.88973707 0.88568056 0.86769164 0.89273888 0.8562355
		 0.89443201 0.84464544 0.89312071 0.82538706 0.87502754 0.83665824 0.87741387 0.81391853
		 0.87404937 0.80262661 0.87420416 0.87923747 0.8738029 0.88971162 0.86972541 0.86872631
		 0.87783098 0.85817009 0.88004005 0.84753197 0.87967277 0.83081102 0.86524332 0.84193736
		 0.86539364 0.81942028 0.86570156 0.80840099 0.86662483 0.88185084 0.85797358 0.89168054
		 0.8537603 0.87195975 0.86148214 0.86215872 0.86407083 0.85229224 0.86530644 0.83820379
		 0.8549149 0.84833235 0.8516674 0.82733732 0.85774863 0.81649381 0.86005807 0.88628745
		 0.84109271 0.89663851 0.83839577 0.87649715 0.84277725 0.86714935 0.84509039 0.8578583
		 0.84823608 0.84175503 0.83704317 0.85116678 0.83078337 0.83196276 0.8427276 0.82141745
		 0.84722686 0.89207739 0.82336897 0.9034487 0.82278115 0.88112801 0.82254529 0.87069774
		 0.822752 0.86073005 0.82554913 0.83587539 0.81372857 0.84597772 0.80676305 0.82564569
		 0.82045686 0.81489235 0.82594901 0.89202386 0.80055833 0.90405226 0.80033749 0.87993222
		 0.79935372 0.86799121 0.79901236 0.85658985 0.80140895 0.82536685 0.7923764 0.83654559
		 0.78539765 0.81431228 0.79859012 0.80304128 0.80333662 0.88688976 0.77700299 0.8992148
		 0.7766341 0.87412226 0.77616608 0.86118591 0.77642077 0.84847486 0.77951646 0.81239659
		 0.77641606 0.82483089 0.77188849 0.80031651 0.77990842 0.78856027 0.782781 0.87733817
		 0.75912201 0.88950187 0.75732177 0.86456758 0.76049608 0.85124952 0.76290941 0.83782303
		 0.76696467 0.80201596 0.76133138 0.81518745 0.75999713 0.78935248 0.76250732 0.77722549
		 0.76417732 0.867661 0.74850774 0.87949741 0.74517292 0.85521555 0.75168741 0.84207845
		 0.7549578 0.82862139 0.75790131 0.79611719 0.74749625 0.80931377 0.74793351 0.78320926
		 0.74676949 0.77062303 0.74654645 0.86077338 0.73850697 0.87291729 0.73594892 0.84849322
		 0.74164462 0.83571595 0.74485314 0.82257748 0.74714643 0.79226065 0.73233116 0.80477268
		 0.73400515 0.77968287 0.7305851 0.76699942 0.72940993 0.85574311 0.72896016 0.86837667
		 0.72741759 0.84301311 0.73144615 0.8301304 0.73366284 0.81734622 0.73461401 0.78920662
		 0.71396869 0.80144662 0.71551287 0.77656513 0.71350741 0.76353252 0.71362889 0.85166854
		 0.71993119 0.86467147 0.71950477 0.83863473 0.72031605 0.82585257 0.71951258 0.81353229
		 0.71765578 0.78700632 0.69263303 0.7999903 0.69302404 0.77378178 0.69391239 0.76035136
		 0.69525772 0.85072011 0.7051661 0.86392659 0.70671326 0.83782339 0.70286381 0.82520884
		 0.69928753 0.81268573 0.69551873 0.78640884 0.66847456 0.80037123 0.6686939 0.77250004
		 0.66976565 0.75864804 0.67086303 0.85459524 0.68303502 0.86809748 0.68589926 0.841196
		 0.67962062 0.82780385 0.67530763 0.81421781 0.67118233 0.78719682 0.64406031 0.80195445
		 0.64527434 0.77279663 0.64434004 0.75862175 0.64473045 0.86050069 0.65885079 0.87448162
		 0.66129446 0.84626675 0.65611225 0.83172959 0.65241182 0.81690067 0.64835656 0.78981006
		 0.62306589 0.80486208 0.62630469 0.77513731 0.62141556 0.76072454 0.62078542 0.86565351
		 0.63553298 0.88005745 0.63625813 0.85084015 0.63514459 0.83561283 0.63356537 0.82019162
		 0.63031721 0.79384017 0.60587931 0.80889976 0.61026102 0.77898407 0.60292631 0.76437372
		 0.60169274 0.8693949 0.61423737 0.88393706 0.61333966 0.85458541 0.61585552 0.83945161
		 0.6162799 0.82413709 0.61430252 0.79883099 0.59176958 0.81390429 0.59565699 0.78378141
		 0.58868468 0.76896101 0.58745492 0.87309396 0.59494931 0.88766474 0.59326088 0.85850668
		 0.59734309 0.84379667 0.5989399 0.82891434 0.5984422 0.80410194 0.57927388 0.81919259
		 0.58182055 0.7888763 0.57675415 0.77381331 0.57594723 0.87722808 0.57710338 0.89189148
		 0.57516718;
	setAttr ".uvst[0].uvsp[250:499]" 0.86280882 0.57960856 0.84846199 0.581918
		 0.83397412 0.58285904 0.80969715 0.56729454 0.82465017 0.56784314 0.79434526 0.56602293
		 0.77900553 0.56588566 0.88197887 0.56061989 0.89700043 0.55929053 0.86743546 0.56239951
		 0.8532446 0.56479192 0.8390913 0.5669179 0.81488436 0.55384558 0.82951725 0.5522809
		 0.7996226 0.55451608 0.78404832 0.55553097 0.88742095 0.54573601 0.90296429 0.54574794
		 0.87238884 0.54596484 0.85789657 0.54747403 0.84372008 0.54990083 0.81896883 0.53827721
		 0.83340377 0.53528047 0.8038137 0.54086053 0.78806365 0.54330206 0.8929286 0.53219557
		 0.90894103 0.53367996 0.87725353 0.53065407 0.86213279 0.53067076 0.84760982 0.53245085
		 0.8229081 0.5211702 0.83748537 0.51674682 0.80780786 0.52607769 0.79194146 0.53017956
		 0.89935529 0.52080375 0.91576642 0.5238077 0.8831324 0.51688403 0.86732769 0.51418275
		 0.8521421 0.51412481 0.82499534 0.5031938 0.84034222 0.49803427 0.8097288 0.51004267
		 0.79372984 0.51570171 0.90542412 0.50971705 0.92224914 0.51337475 0.88882911 0.50433457
		 0.87244809 0.49903026 0.85620159 0.49648169 0.82411194 0.48567727 0.84076083 0.48048168
		 0.8082478 0.49347225 0.79200035 0.50022912 0.90962434 0.49577436 0.92696482 0.49925566
		 0.89250016 0.4903881 0.875476 0.48412356 0.85814118 0.48001358 0.82042211 0.46960449
		 0.83876628 0.46423158 0.8034817 0.47791755 0.78695893 0.48570383 0.91144115 0.47899848
		 0.92925578 0.48174545 0.89383912 0.4743517 0.87615597 0.46842155 0.85776711 0.46406078
		 0.81344634 0.45787108 0.83315754 0.45145446 0.79503554 0.4655709 0.77762985 0.47276652
		 0.90976501 0.45851487 0.92781949 0.46121392 0.89177912 0.45455614 0.87323022 0.45057261
		 0.85353911 0.44885781 0.80208278 0.44819513 0.8227998 0.44235334 0.78210884 0.45255101
		 0.76322681 0.45682868 0.90310621 0.43381873 0.92182511 0.43638891 0.88414192 0.43189418
		 0.86440694 0.43251196 0.84376085 0.43630949 0.78934526 0.43109512 0.81072259 0.42768157
		 0.76832026 0.43234128 0.74817199 0.4346624 0.89372021 0.40897837 0.91359419 0.41048679
		 0.87353897 0.40977815 0.85292327 0.4143815 0.83197969 0.42135501 0.77891254 0.40722454
		 0.80079424 0.40503737 0.75701773 0.40763488 0.73571754 0.40968871 0.88710409 0.38626504
		 0.90812951 0.38796574 0.86563838 0.38772458 0.84398794 0.39302155 0.82243967 0.39981502
		 0.76982409 0.38097841 0.79235244 0.37909639 0.74710333 0.38173428 0.72469807 0.38411051
		 0.88361126 0.36623365 0.90583122 0.36947984 0.86058223 0.36650085 0.83741122 0.37019217
		 0.8147285 0.37515655 0.76099497 0.35518587 0.78428793 0.35375479 0.73746306 0.35609305
		 0.71390045 0.35825533 0.88163763 0.34863424 0.90509599 0.35388893 0.85686243 0.34722477
		 0.83191139 0.34865695 0.80771434 0.35131326 0.75195545 0.32884014 0.77594352 0.3282252
		 0.72770613 0.3306379 0.70303273 0.3336463 0.87899768 0.33510131 0.9040345 0.34091014
		 0.85257363 0.33230031 0.82609004 0.33024579 0.80044186 0.32872128 0.74276638 0.30172849
		 0.76862454 0.30119768 0.71727389 0.30635577 0.69157821 0.31226429 0.87551975 0.32506847
		 0.90202224 0.3300246 0.84832609 0.32055938 0.82142764 0.31345123 0.79493558 0.30574423
		 0.73660672 0.27874178 0.76487672 0.27951556 0.70939273 0.28289926 0.68227047 0.28786123
		 0.87623763 0.30988282 0.90370953 0.31500256 0.84851533 0.30485836 0.82090527 0.29676771
		 0.79325634 0.2867507 0.73467845 0.25895882 0.76366234 0.26566914 0.7062695 0.25729346
		 0.67792177 0.25782859 0.88001192 0.28923461 0.90852195 0.29246765 0.85112047 0.28838384
		 0.82171482 0.28490114 0.79253381 0.2761918 0.73697037 0.24231145 0.76441765 0.25545013
		 0.70861763 0.23400548 0.67949164 0.23053008 0.88219357 0.26880932 0.91169363 0.26892298
		 0.85265982 0.27329016 0.82250774 0.27498788 0.79250968 0.26849452 0.74009776 0.227956
		 0.76723945 0.24170208 0.71144903 0.21804127 0.68166435 0.21345463 0.88313597 0.25243643
		 0.91317278 0.25220758 0.85338122 0.25709483 0.82378411 0.25895411 0.79479355 0.25364894
		 0.74259156 0.21350199 0.77059191 0.22356614 0.71327615 0.20597622 0.68307728 0.20206159
		 0.88495713 0.23673904 0.91521019 0.23886433 0.85510242 0.23770401 0.82617784 0.23697016
		 0.7981571 0.23223218 0.74472219 0.1959528 0.77307063 0.20325249 0.71483666 0.19120383
		 0.68410057 0.18930617 0.88715148 0.21890804 0.91768044 0.22230735 0.85714859 0.21756428
		 0.82833272 0.21511638 0.80056489 0.21026039 0.74593759 0.17779836 0.77508855 0.18121299
		 0.71516323 0.17809516 0.68395102 0.18014213 0.88855374 0.20303106 0.91938412 0.20754787
		 0.85848784 0.19851941 0.82996929 0.1929785 0.80262446 0.18684298 0.74543071 0.16242781
		 0.77600664 0.15937877 0.71452671 0.16988331 0.68340176 0.1762628 0.88969362 0.1899659
		 0.9204644 0.19658554 0.86046284 0.18052849 0.83269924 0.1704036 0.805035 0.16250294
		 0.7445789 0.15160993 0.77586526 0.14271131 0.71393907 0.1631754 0.6826002 0.17080668
		 0.89226019 0.17441851 0.92257273 0.18367049 0.86403257 0.16158977 0.83635813 0.14940178
		 0.80711007 0.14198714 0.74430096 0.14574254 0.7750532 0.13224167 0.71308678 0.15767914
		 0.68077457 0.1629777 0.89612532 0.15597194 0.92549843 0.16887742 0.86828446 0.14051682
		 0.83904165 0.12868503 0.80728883 0.12528694 0.74315262 0.13846761 0.7736761 0.12366226
		 0.71129376 0.14874458 0.67855203 0.15194219 0.90035814 0.13873509 0.92973185 0.15300471
		 0.87148118 0.12255526 0.8397007 0.1120016 0.8058573 0.11253867 0.7405225 0.1255224
		 0.77194005 0.11372569 0.70862961 0.13317952 0.67607582 0.13628778 0.90386683 0.12379381
		 0.934883 0.13523111 0.87282538 0.11050817 0.83938587 0.10211921 0.80473715 0.10365367
		 0.73813981 0.10798162 0.7708531 0.10194775 0.7058531 0.11289638 0.67331183 0.11709872;
	setAttr ".uvst[0].uvsp[500:567]" 0.9057247 0.11006078 0.93853837 0.11563519
		 0.87272519 0.10267773 0.83889139 0.09722361 0.80453545 0.097122788 0.73719352 0.092063397
		 0.77060729 0.089231461 0.70411098 0.095399767 0.67109066 0.099372804 0.90630698 0.095913798
		 0.93968028 0.098350555 0.87270069 0.092098445 0.838727 0.088615388 0.80453211 0.087585539
		 0.73673552 0.077775538 0.77052182 0.075519919 0.70312655 0.080501646 0.6696434 0.0833354
		 0.90656954 0.081082016 0.9401474 0.083167106 0.87280458 0.078106821 0.83877128 0.075398445
		 0.80457634 0.074429691 0.73617423 0.062856525 0.77013159 0.060839593 0.70241064 0.065068573
		 0.66870368 0.066795856 0.90715307 0.065607399 0.94092458 0.067701578 0.87314487 0.063019365
		 0.83883941 0.06075111 0.80439794 0.059908062 0.73570383 0.046572894 0.76977378 0.046005875
		 0.70191896 0.047834158 0.66812003 0.049054891 0.9077155 0.050274879 0.94172037 0.051090896
		 0.87343156 0.049229592 0.83886546 0.047778517 0.80422103 0.046464086 0.73580211 0.02978763
		 0.76998442 0.032002836 0.70175976 0.029671371 0.66776556 0.031180203 0.90764648 0.035967708
		 0.94172895 0.034080207 0.87338173 0.037753701 0.83885843 0.037590504 0.80433309 0.035206735
		 0.73642009 0.016222805 0.77078605 0.019992858 0.70183122 0.015347511 0.6674732 0.017096043
		 0.90694541 0.02379185 0.94095731 0.020385087 0.87302059 0.027094096 0.83894032 0.027609497
		 0.80485994 0.024674743 0.73680705 0.0092950165 0.77155048 0.011398584 0.70187384
		 0.009075582 0.66725755 0.010051608 0.90632272 0.015117735 0.94049335 0.013398826
		 0.87261713 0.016704708 0.83922243 0.016525477 0.80567533 0.014357328;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 498 ".vt";
	setAttr ".vt[0:165]"  0.264781 0.25667 0.087637 -4.9999999e-005 0.23843201 -0.020579999
		 -0.26491299 0.25571001 0.087715998 -0.37465599 0.298383 0.349087 -0.264992 0.341454 0.610425
		 -0.000161 0.35969201 0.718642 0.26470301 0.34241399 0.61034697 0.37444499 0.299741 0.34897599
		 -13.98100853 7.36616802 0.74253702 -14.022756577 7.30573988 0.72957301 -14.06592083 7.26085186 0.77061403
		 -14.085215569 7.25779676 0.84161699 -14.069337845 7.29836607 0.90099001 -14.027589798 7.35879278 0.91395301
		 -13.98442554 7.4036808 0.872913 -13.96513081 7.4067359 0.80190998 -0.000105 0.29906201 0.349031
		 -14.11300468 7.39319086 0.77097398 -13.52903748 7.35756493 0.92378902 -13.57857323 7.33029222 1.15534902
		 -13.70265388 7.17779779 1.27903104 -13.82972908 6.99370623 1.22408199 -13.88632107 6.88400698 1.025174022
		 -13.83836174 6.90887499 0.79704797 -13.71286583 7.055476189 0.67097402 -13.58420563 7.24195194 0.72249901
		 -13.15895462 7.21024179 1.048223019 -13.24172115 7.15668106 1.32175303 -13.40096664 6.95112991 1.45185804
		 -13.54340553 6.71399593 1.362324 -13.58560276 6.58419085 1.10559905 -13.50283527 6.6377511 0.83206898
		 -13.34359074 6.8433032 0.70196402 -13.20114994 7.080437183 0.79149801 -12.87654781 7.026320934 1.10375798
		 -12.92702389 6.91100883 1.36834896 -13.072698593 6.67715979 1.46808195 -13.22823715 6.461761 1.34453499
		 -13.30252743 6.39098787 1.070080996 -13.2520504 6.50629997 0.80549097 -13.10637569 6.74014807 0.70575702
		 -12.95083714 6.95554781 0.82930398 -12.60567379 6.85111904 1.086833 -12.62420654 6.68010378 1.32701302
		 -12.75506496 6.42304516 1.39082801 -12.92159367 6.23052216 1.24089706 -13.02624321 6.21531391 0.965047
		 -13.0077104568 6.38632917 0.72486699 -12.87685204 6.64338923 0.66105199 -12.71032333 6.83590984 0.810983
		 -12.34726715 6.71011877 1.012292027 -12.3237381 6.48492718 1.20608401 -12.42890644 6.20638323 1.21926403
		 -12.60116577 6.03765583 1.044111013 -12.73960876 6.077582836 0.78322899 -12.76313782 6.30277491 0.58943701
		 -12.65796947 6.58131886 0.57625699 -12.48571014 6.75004578 0.75140899 -12.092937469 6.62613392 0.87667
		 -12.023001671 6.36390305 1.0064589977 -12.09807682 6.076447964 0.95918798 -12.27418327 5.93215609 0.76254702
		 -12.44816017 6.015552044 0.531726 -12.51809502 6.27778292 0.40193701 -12.44301987 6.565238 0.44920799
		 -12.26691341 6.70952988 0.64584899 -11.85206795 6.62695789 0.67580098 -11.75427437 6.36465883 0.793989
		 -11.79520702 6.070840836 0.72819602 -11.95088768 5.91762018 0.51696199 -12.13012028 5.99474907 0.28402501
		 -12.22791386 6.25704908 0.165837 -12.18698215 6.55086613 0.23163 -12.031300545 6.70408821 0.442864
		 -11.63314819 6.68821621 0.453385 -11.53709507 6.46093893 0.63627899 -11.5327673 6.1543932 0.61777502
		 -11.62269974 5.9481492 0.408712 -11.75421238 5.96302223 0.131558 -11.85026646 6.19029999 -0.051336002
		 -11.85459423 6.4968462 -0.032832 -11.76466084 6.70308924 0.17623 -11.39844513 6.74318123 0.22453301
		 -11.37967396 6.61425686 0.50656003 -11.35651398 6.32375717 0.61420202 -11.34253216 6.041851997 0.48440301
		 -11.34591866 5.9336791 0.193197 -11.36468983 6.062603951 -0.088830002 -11.38784981 6.35310411 -0.196472
		 -11.40183163 6.63500786 -0.066671997 -11.031796455 6.73837614 0.062061001 -11.19627953 6.7769599 0.32730201
		 -11.27506733 6.59185886 0.56901699 -11.22200489 6.29150391 0.64561403 -11.068177223 6.051837921 0.51222301
		 -10.9036932 6.013254166 0.24698199 -10.8249054 6.1983552 0.0052669998 -10.87796783 6.49871111 -0.071330003
		 -10.51675892 6.76648188 0.31069201 -10.78022957 6.93011093 0.38354 -11.031272888 6.88006592 0.57319999
		 -11.12283134 6.64566183 0.76857102 -11.0012712479 6.36421013 0.85520798 -10.7378006 6.20058012 0.782359
		 -10.48675728 6.25062609 0.5927 -10.39519882 6.48503017 0.39732799 -10.19339085 7.0070438385 0.83614802
		 -10.45141888 7.20131397 0.84057999 -10.7427187 7.19101191 0.97978401 -10.89665031 6.98217106 1.17221606
		 -10.82304287 6.69712877 1.30515206 -10.56501484 6.50285816 1.30071998 -10.27371502 6.51316118 1.16151702
		 -10.1197834 6.72200108 0.96908402 -9.98395348 7.33169889 1.31341195 -10.25155735 7.51340008 1.36644804
		 -10.52556801 7.47656584 1.54252195 -10.64547157 7.24277306 1.73849297 -10.54103088 6.94897509 1.83956301
		 -10.27342606 6.7672739 1.78652704 -9.9994154 6.80410814 1.61045301 -9.87951183 7.037899971 1.414482
		 -9.87594223 7.63801384 1.65811706 -10.097118378 7.73130703 1.88877201 -10.25210857 7.5795269 2.14128995
		 -10.25012112 7.27158499 2.26774907 -10.092320442 6.98786879 2.19407201 -9.87114429 6.89457607 1.96341705
		 -9.7161541 7.046356201 1.710899 -9.71814156 7.35429811 1.58443999 -9.65767765 7.792068 1.97530997
		 -9.74029922 7.74544096 2.30013895 -9.78168297 7.47564507 2.50016594 -9.75758839 7.14072084 2.45822001
		 -9.68212795 6.93686485 2.19886994 -9.59950733 6.98349094 1.87404203 -9.55812359 7.25328684 1.67401397
		 -9.58221817 7.58821106 1.71596098 -9.31925583 7.80682516 2.13983202 -9.307868 7.65733004 2.44976211
		 -9.31497574 7.33255482 2.56380701 -9.3364172 7.022749901 2.41515994 -9.35963154 6.90939283 2.090897083
		 -9.37101936 7.058887005 1.780967 -9.36391068 7.38366222 1.66692197 -9.34246922 7.69346809 1.81556904
		 -8.89790344 7.75666189 2.17491293 -8.8418808 7.52278185 2.43001604 -8.88396358 7.17621803 2.46222901
		 -8.99950027 6.919981 2.25268292 -9.12081146 6.90417194 1.92412698 -9.17683411 7.13805103 1.66902399
		 -9.13475037 7.4846158 1.63681102 -9.019213676 7.74085188 1.84635699 -8.40692043 7.576015 2.015588045
		 -8.38474846 7.28261995 2.218225 -8.54076958 6.96124315 2.21536112 -8.78359032 6.80014181 2.0086750984
		 -8.97096825 6.89369011 1.71923995 -8.99314022 7.18708515 1.51660299 -8.83711815 7.50846195 1.519467
		 -8.59429836 7.66956282 1.72615302 -7.99245882 7.25555277 1.65083003 -8.02758503 6.94946194 1.84449601
		 -8.27227688 6.68046093 1.85848606 -8.58319664 6.60612488 1.684605;
	setAttr ".vt[166:331]" -8.77821445 6.77000093 1.42471099 -8.74308681 7.076090813 1.23104501
		 -8.49839592 7.34509277 1.21705496 -8.1874752 7.41942787 1.39093602 -7.67391109 6.90714884 1.19219506
		 -7.72280407 6.59041405 1.37822902 -7.9899621 6.33406782 1.39351904 -8.31888771 6.28827477 1.22910702
		 -8.51690197 6.47986078 0.98130602 -8.468009 6.79659605 0.79527199 -8.20085144 7.052941799 0.77998197
		 -7.87192488 7.098734856 0.94439298 -7.39518976 6.6355648 0.73306698 -7.4217639 6.29397583 0.89112097
		 -7.67351294 6.013185024 0.87888598 -8.0029659271 5.95767689 0.70352799 -8.21713448 6.15996599 0.467769
		 -8.19055939 6.50155497 0.309715 -7.93880987 6.78234577 0.32194999 -7.60935783 6.83785486 0.49730799
		 -7.15096617 6.52761984 0.35277301 -7.11799908 6.16395903 0.47244799 -7.31181717 5.83832407 0.40876999
		 -7.61888409 5.74146795 0.19904 -7.85932493 5.93012714 -0.033884998 -7.89229202 6.29378796 -0.153561
		 -7.69847488 6.61942291 -0.089883 -7.39140701 6.71627903 0.119848 -6.92343092 6.53547907 0.036747001
		 -6.83121014 6.17776489 0.166361 -6.94660997 5.81376886 0.080027997 -7.20203304 5.65671492 -0.171681
		 -7.44785404 5.79860306 -0.44131699 -7.54007483 6.1563158 -0.57093197 -7.42467403 6.52031183 -0.48459899
		 -7.16925192 6.67736578 -0.23288999 -6.69223022 6.59692287 -0.246177 -6.57977486 6.2769289 -0.035863999
		 -6.62146997 5.88231611 -0.078474998 -6.79289007 5.64424181 -0.349049 -6.99361897 5.70216894 -0.68908697
		 -7.10607481 6.022163868 -0.8994 -7.064380169 6.41677713 -0.85678798 -6.89296007 6.65485001 -0.58621502
		 -6.42525196 6.64940786 -0.497428 -6.35255718 6.40360594 -0.181077 -6.35403299 6.00055980682 -0.123347
		 -6.4288168 5.67636919 -0.35805601 -6.53310108 5.62093782 -0.74771398 -6.60579586 5.86674023 -1.06406498
		 -6.6043191 6.26978588 -1.12179601 -6.52953577 6.59397793 -0.88708699 -6.083717823 6.66197586 -0.69658899
		 -6.11848116 6.53205109 -0.30314699 -6.14762688 6.16115093 -0.117488 -6.15408421 5.76654387 -0.248368
		 -6.13406801 5.57938623 -0.61912102 -6.099305153 5.70931101 -1.01256299 -6.070158958 6.080212116 -1.19822204
		 -6.06370306 6.47481918 -1.067342043 -5.64073801 6.61447191 -0.76363403 -5.81180286 6.62399578 -0.374607
		 -5.94583178 6.33043909 -0.097916998 -5.96431208 5.90576315 -0.095646001 -5.85641718 5.59873676 -0.36912501
		 -5.68535089 5.58921289 -0.75815201 -5.55132198 5.88277006 -1.034842014 -5.53284311 6.307446 -1.037111998
		 -5.16932201 6.52168798 -0.63323098 -5.43741989 6.66087294 -0.320052 -5.6986022 6.46793509 -0.030416001
		 -5.79987192 6.055895805 0.066012003 -5.68190718 5.66612196 -0.087255001 -5.41380882 5.52693796 -0.40043399
		 -5.15262699 5.71987486 -0.69006997 -5.051355839 6.13191509 -0.78649801 -4.74613619 6.38729715 -0.31704301
		 -5.05077219 6.65021515 -0.124724 -5.42779493 6.58147097 0.103404 -5.65635204 6.22133493 0.233707
		 -5.60255623 5.78076887 0.18985599 -5.29792023 5.51785088 -0.0024629999 -4.92089701 5.58659506 -0.230592
		 -4.6923399 5.94673109 -0.36089501 -4.47204113 6.26536798 0.12299 -4.75463915 6.61191416 0.22115199
		 -5.18799877 6.64546204 0.36490601 -5.51826477 6.34636021 0.470043 -5.55197096 5.88981819 0.47497499
		 -5.26937389 5.54327106 0.37681299 -4.83601379 5.50972319 0.233059 -4.5057478 5.80882502 0.127922
		 -4.32047606 6.21706676 0.56266397 -4.58881617 6.59763288 0.63104397 -5.040638924 6.67095089 0.74055701
		 -5.411273 6.39407206 0.827052 -5.48360586 5.92918777 0.83986002 -5.21526623 5.54862213 0.77148002
		 -4.76344299 5.47530508 0.66196698 -4.39280796 5.75218296 0.575472 -4.21312809 6.2462821 0.94636899
		 -4.50440979 6.6245842 1.02937901 -4.96705389 6.67791986 1.16341197 -5.33004904 6.37504578 1.26995301
		 -5.38075686 5.89338112 1.28659201 -5.089475155 5.51507902 1.20358205 -4.62683105 5.46174288 1.069548965
		 -4.26383591 5.76461697 0.96300799 -4.14523792 6.38973188 1.21704495 -4.50273085 6.71000195 1.35637403
		 -4.94304514 6.66871691 1.58919501 -5.20825005 6.2900629 1.77912498 -5.14299202 5.79584885 1.814906
		 -4.7854991 5.47557878 1.67557704 -4.3451848 5.51686382 1.44275606 -4.079979897 5.89551783 1.25282598
		 -4.17498207 6.65337181 1.42245996 -4.55268621 6.83158207 1.72598398 -4.83233213 6.63635302 2.11357903
		 -4.85010815 6.18204784 2.35819602 -4.59560108 5.73479319 2.31654191 -4.21789598 5.55658388 2.013016939
		 -3.93825006 5.75181293 1.62542295 -3.92047405 6.20611811 1.38080597 -4.076809883 6.97837019 1.74749601
		 -4.33134985 7.012384892 2.22169304 -4.37709522 6.69287777 2.65370297 -4.18724823 6.20701218 2.79046106
		 -3.87301993 5.83939981 2.55185509 -3.61847997 5.80538511 2.077657938 -3.57273507 6.12489223 1.645648
		 -3.76258206 6.61075783 1.50889003 -3.65317607 7.33091402 2.082310915 -3.78097701 7.26781607 2.63506198
		 -3.71172094 6.85250378 3.020508051 -3.48597598 6.32826281 3.012859106 -3.23598099 6.0021848679 2.61659598
		 -3.10817909 6.065282822 2.063844919 -3.17743611 6.48059511 1.67840004 -3.40318108 7.0048360825 1.68604898
		 -2.99952507 7.62966394 2.3446939 -3.044950008 7.47639418 2.93127298 -2.97767901 6.96153116 3.24753189
		 -2.83711696 6.38667297 3.10821104 -2.70560408 6.088563919 2.59492207 -2.6601789 6.24183321 2.0083429813
		 -2.72745109 6.75669718 1.69208395 -2.86801195 7.33155489 1.83140504 -2.23849201 7.76153898 2.52555609
		 -2.22946811 7.49842882 3.11733103 -2.23775196 6.8940258 3.34999704 -2.25849199 6.30238008 3.087260962
		 -2.27953792 6.07006979 2.48303103 -2.28856206 6.333179 1.89125597 -2.28027797 6.93758202 1.65858996
		 -2.25953794 7.52922821 1.92132604 -1.41925895 7.65924883 2.59410191 -1.395908 7.25714397 3.150635
		 -1.56700099 6.60590696 3.28693795 -1.83231294 6.087020874 2.92316699 -2.036429882 6.004445076 2.27241397
		 -2.059781075 6.40654993 1.71588099 -1.88868904 7.057787895 1.57957804 -1.62337601 7.57667208 1.943349
		 -0.665402 7.26469278 2.45127296 -0.70672399 6.74187994 2.94878197;
	setAttr ".vt[332:497]" -1.10582697 6.14477396 3.030864954 -1.62892401 5.82315111 2.6494379
		 -1.96958995 5.965415 2.027935982 -1.92826796 6.4882288 1.53042698 -1.52916503 7.085334778 1.44834399
		 -1.0060689449 7.4069581 1.829772 -0.206732 6.844347 2.16135406 -0.294572 6.24354696 2.60560608
		 -0.80741 5.69628096 2.66503596 -1.44483304 5.52312803 2.30483294 -1.83344603 5.82552099 1.73599696
		 -1.74560499 6.42632103 1.29174602 -1.23276699 6.97358704 1.23231494 -0.59534502 7.14673901 1.59251904
		 0.050078001 6.59259987 1.88358295 -0.002752 5.89637613 2.21401 -0.51492602 5.31855822 2.19155788
		 -1.18641901 5.19762278 1.82938099 -1.62387896 5.60441399 1.33963501 -1.57104802 6.30063677 1.0092079639
		 -1.058874011 6.87845516 1.031659961 -0.387382 6.99939013 1.39383698 0.25235999 6.47151518 1.60731399
		 0.249357 5.71472883 1.82438898 -0.23818 5.10622692 1.71536303 -0.92465901 5.0024590492 1.34410203
		 -1.40794802 5.46421289 0.92808598 -1.40494502 6.22099781 0.71101099 -0.91740799 6.82950115 0.82003701
		 -0.230929 6.93326902 1.19129801 0.49901301 6.34017515 1.22396803 0.458231 5.58137083 1.47740996
		 -0.073698997 4.98709011 1.40283799 -0.78517902 4.90545416 1.043934941 -1.25943506 5.38428497 0.61094302
		 -1.21865404 6.14308977 0.357501 -0.68672401 6.73737001 0.432073 0.024757 6.81900597 0.79097599
		 0.768206 6.092412949 0.76322198 0.63581198 5.39874077 1.16753995 0.021122999 4.86743116 1.21279502
		 -0.71578598 4.80971718 0.87247699 -1.143242 5.25940609 0.34593999 -1.010848999 5.95307779 -0.058378
		 -0.39615899 6.48438787 -0.103633 0.340749 6.54210186 0.23668499 1.0061539412 5.69618082 0.32812399
		 0.79465997 5.10191488 0.86056799 0.1083 4.66779423 1.008308053 -0.65086597 4.64812088 0.68479902
		 -1.038128972 5.054419041 0.079549998 -0.826635 5.64868498 -0.45289499 -0.140275 6.082805157 -0.60063398
		 0.618891 6.10247898 -0.27712601 1.174546 5.15795708 -0.035615999 0.88713002 4.73190498 0.62405902
		 0.135012 4.46440887 0.87318403 -0.64122802 4.51216412 0.56582397 -0.98687899 4.8471961 -0.117973
		 -0.69946301 5.2732482 -0.77764702 0.052655 5.54074383 -1.026772022 0.82889497 5.49298906 -0.71941203
		 1.21548998 4.54470921 -0.24338 0.887389 4.37990522 0.518969 0.104727 4.34487391 0.83865702
		 -0.67402202 4.46013689 0.52841401 -0.99267799 4.65817308 -0.230022 -0.66457701 4.82297707 -0.99237102
		 0.118084 4.85800695 -1.31205797 0.89683402 4.74274492 -1.0018160343 1.17611396 4.050021172 -0.27267599
		 0.85408902 4.12638378 0.51596701 0.072316997 4.24795818 0.84083802 -0.71125001 4.34352779 0.51163203
		 -1.037610054 4.35711002 -0.27880701 -0.71558601 4.28074884 -1.067450047 0.066186003 4.15917397 -1.39232099
		 0.84975398 4.063602924 -1.063115001 1.14515197 3.73053789 -0.195427 0.82761699 3.99994302 0.56118202
		 0.038075998 4.17354584 0.86507702 -0.76096898 4.14965391 0.53824002 -1.10144699 3.94226193 -0.227873
		 -0.78391099 3.67285705 -0.98448199 0.00563 3.49925399 -1.28837705 0.80467403 3.52314591 -0.96153998
		 1.13873994 3.4755981 -0.068471 0.81081003 3.83617496 0.65376699 0.0083990004 4.0048708916 0.94848901
		 -0.79844898 3.88286591 0.64305198 -1.13709497 3.54163003 -0.083623998 -0.80916399 3.18105197 -0.80586201
		 -0.0067540002 3.012356043 -1.10058403 0.80009401 3.13436103 -0.795147 1.14459705 3.19680905 0.074350998
		 0.80833501 3.52340007 0.817168 -0.003215 3.65816593 1.12496102 -0.81465697 3.52216291 0.81742799
		 -1.15065897 3.19506001 0.074718997 -0.81439698 2.86846995 -0.66809797 -0.002847 2.73370409 -0.97589099
		 0.808595 2.86970711 -0.66835803 1.15365303 2.87354708 0.18511 0.81492001 3.07258296 0.977938
		 -0.0026100001 3.15421391 1.30643904 -0.82003897 3.07062006 0.978181 -1.15852904 2.87077093 0.185454
		 -0.81979603 2.67173505 -0.60737401 -0.002266 2.5901041 -0.935875 0.81516302 2.67369795 -0.60761702
		 1.16168594 2.52567506 0.25147101 0.82077497 2.64508891 1.065749049 -0.0022239999 2.69437408 1.40304601
		 -0.82521099 2.64465904 1.065780044 -1.16609001 2.52506709 0.25151601 -0.82517999 2.405653 -0.56276101
		 -0.0021800001 2.35636806 -0.90005898 0.82080698 2.40608311 -0.56279302 1.16892302 2.15192008 0.29985699
		 0.82591701 2.25432897 1.12159002 -0.002173 2.29674697 1.46196198 -0.83026302 2.25432706 1.12159002
		 -1.17326903 2.15191698 0.29985699 -0.83026302 2.049508095 -0.52187598 -0.002173 2.0070888996 -0.86224902
		 0.82591701 2.049509048 -0.52187598 1.17564499 1.75436103 0.34779599 0.83067 1.845348 1.175632
		 -0.0021579999 1.88291299 1.51853895 -0.83498001 1.845052 1.17564797 -1.17993903 1.75394297 0.347819
		 -0.83496398 1.662956 -0.48001799 -0.002135 1.62539101 -0.82292497 0.83068597 1.663252 -0.48003399
		 1.18206704 1.35440803 0.382186 0.83525002 1.39930701 1.21822798 -0.0020089999 1.41743398 1.56454003
		 -0.83925599 1.39816999 1.21825802 -1.18604195 1.35280001 0.382229 -0.83922499 1.30790102 -0.45381299
		 -0.0019660001 1.28977501 -0.80012602 0.83528101 1.30903804 -0.45384401 1.18838203 0.97771698 0.38487801
		 0.83987802 0.941356 1.22553301 -0.001539 0.92523301 1.57372105 -0.84297901 0.93879199 1.22547901
		 -1.19153702 0.97409099 0.384801 -0.84303403 1.010452032 -0.455854 -0.001616 1.026576042 -0.80404299
		 0.83982402 1.013017058 -0.4558 1.19461298 0.65535301 0.36125401 0.844522 0.574503 1.20282602
		 -0.00085000001 0.53948098 1.55134296 -0.84629297 0.570804 1.20264995 -1.19656003 0.65012199 0.36100599
		 -0.84646899 0.73097199 -0.48056599 -0.001098 0.76599401 -0.82908303 0.84434599 0.734671 -0.48039001
		 1.20027196 0.425062 0.341483 0.84864599 0.38851699 1.18973303 -0.000348 0.37152499 1.54105103
		 -0.84938103 0.38404 1.18963897 -1.20110095 0.41872999 0.34134999 -0.84947503 0.455275 -0.506899
		 -0.000481 0.47226599 -0.858217 0.84855199 0.45975199 -0.506805;
	setAttr -s 1000 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 496 0 496 497 0 497 0 0 1 2 0 2 495 0 495 496 0
		 2 3 0 3 494 0 494 495 0 3 4 0 4 493 0 493 494 0 4 5 0 5 492 0 492 493 0 5 6 0 6 491 0
		 491 492 0 6 7 0 7 490 0 490 491 0 7 0 0 497 490 0 0 16 0 16 1 0 16 2 0 16 3 0 16 4 0
		 16 5 0 16 6 0 16 7 0 8 9 0 9 17 0 17 8 0 9 10 0 10 17 0 10 11 0 11 17 0 11 12 0 12 17 0
		 12 13 0 13 17 0 13 14 0 14 17 0 14 15 0 15 17 0 15 8 0 19 18 0 18 15 0 14 19 0 20 19 0
		 13 20 0 21 20 0 12 21 0 22 21 0 11 22 0 23 22 0 10 23 0 24 23 0 9 24 0 25 24 0 8 25 0
		 18 25 0 27 26 0 26 18 0 19 27 0 28 27 0 20 28 0 29 28 0 21 29 0 30 29 0 22 30 0 31 30 0
		 23 31 0 32 31 0 24 32 0 33 32 0 25 33 0 26 33 0 35 34 0 34 26 0 27 35 0 36 35 0 28 36 0
		 37 36 0 29 37 0 38 37 0 30 38 0 39 38 0 31 39 0 40 39 0 32 40 0 41 40 0 33 41 0 34 41 0
		 43 42 0 42 34 0 35 43 0 44 43 0 36 44 0 45 44 0 37 45 0 46 45 0 38 46 0 47 46 0 39 47 0
		 48 47 0 40 48 0 49 48 0 41 49 0 42 49 0 51 50 0 50 42 0 43 51 0 52 51 0 44 52 0 53 52 0
		 45 53 0 54 53 0 46 54 0 55 54 0 47 55 0 56 55 0 48 56 0 57 56 0 49 57 0 50 57 0 59 58 0
		 58 50 0 51 59 0 60 59 0 52 60 0 61 60 0 53 61 0 62 61 0 54 62 0 63 62 0 55 63 0 64 63 0
		 56 64 0 65 64 0 57 65 0 58 65 0 67 66 0 66 58 0 59 67 0 68 67 0 60 68 0 69 68 0 61 69 0
		 70 69 0 62 70 0 71 70 0 63 71 0 72 71 0 64 72 0 73 72 0 65 73 0 66 73 0 75 74 0 74 66 0
		 67 75 0 76 75 0 68 76 0 77 76 0;
	setAttr ".ed[166:331]" 69 77 0 78 77 0 70 78 0 79 78 0 71 79 0 80 79 0 72 80 0
		 81 80 0 73 81 0 74 81 0 83 82 0 82 74 0 75 83 0 84 83 0 76 84 0 85 84 0 77 85 0 86 85 0
		 78 86 0 87 86 0 79 87 0 88 87 0 80 88 0 89 88 0 81 89 0 82 89 0 91 90 0 90 82 0 83 91 0
		 92 91 0 84 92 0 93 92 0 85 93 0 94 93 0 86 94 0 95 94 0 87 95 0 96 95 0 88 96 0 97 96 0
		 89 97 0 90 97 0 99 98 0 98 90 0 91 99 0 100 99 0 92 100 0 101 100 0 93 101 0 102 101 0
		 94 102 0 103 102 0 95 103 0 104 103 0 96 104 0 105 104 0 97 105 0 98 105 0 107 106 0
		 106 98 0 99 107 0 108 107 0 100 108 0 109 108 0 101 109 0 110 109 0 102 110 0 111 110 0
		 103 111 0 112 111 0 104 112 0 113 112 0 105 113 0 106 113 0 115 114 0 114 106 0 107 115 0
		 116 115 0 108 116 0 117 116 0 109 117 0 118 117 0 110 118 0 119 118 0 111 119 0 120 119 0
		 112 120 0 121 120 0 113 121 0 114 121 0 123 122 0 122 114 0 115 123 0 124 123 0 116 124 0
		 125 124 0 117 125 0 126 125 0 118 126 0 127 126 0 119 127 0 128 127 0 120 128 0 129 128 0
		 121 129 0 122 129 0 131 130 0 130 122 0 123 131 0 132 131 0 124 132 0 133 132 0 125 133 0
		 134 133 0 126 134 0 135 134 0 127 135 0 136 135 0 128 136 0 137 136 0 129 137 0 130 137 0
		 139 138 0 138 130 0 131 139 0 140 139 0 132 140 0 141 140 0 133 141 0 142 141 0 134 142 0
		 143 142 0 135 143 0 144 143 0 136 144 0 145 144 0 137 145 0 138 145 0 147 146 0 146 138 0
		 139 147 0 148 147 0 140 148 0 149 148 0 141 149 0 150 149 0 142 150 0 151 150 0 143 151 0
		 152 151 0 144 152 0 153 152 0 145 153 0 146 153 0 155 154 0 154 146 0 147 155 0 156 155 0
		 148 156 0 157 156 0 149 157 0 158 157 0 150 158 0 159 158 0 151 159 0 160 159 0;
	setAttr ".ed[332:497]" 152 160 0 161 160 0 153 161 0 154 161 0 163 162 0 162 154 0
		 155 163 0 164 163 0 156 164 0 165 164 0 157 165 0 166 165 0 158 166 0 167 166 0 159 167 0
		 168 167 0 160 168 0 169 168 0 161 169 0 162 169 0 171 170 0 170 162 0 163 171 0 172 171 0
		 164 172 0 173 172 0 165 173 0 174 173 0 166 174 0 175 174 0 167 175 0 176 175 0 168 176 0
		 177 176 0 169 177 0 170 177 0 179 178 0 178 170 0 171 179 0 180 179 0 172 180 0 181 180 0
		 173 181 0 182 181 0 174 182 0 183 182 0 175 183 0 184 183 0 176 184 0 185 184 0 177 185 0
		 178 185 0 187 186 0 186 178 0 179 187 0 188 187 0 180 188 0 189 188 0 181 189 0 190 189 0
		 182 190 0 191 190 0 183 191 0 192 191 0 184 192 0 193 192 0 185 193 0 186 193 0 195 194 0
		 194 186 0 187 195 0 196 195 0 188 196 0 197 196 0 189 197 0 198 197 0 190 198 0 199 198 0
		 191 199 0 200 199 0 192 200 0 201 200 0 193 201 0 194 201 0 203 202 0 202 194 0 195 203 0
		 204 203 0 196 204 0 205 204 0 197 205 0 206 205 0 198 206 0 207 206 0 199 207 0 208 207 0
		 200 208 0 209 208 0 201 209 0 202 209 0 211 210 0 210 202 0 203 211 0 212 211 0 204 212 0
		 213 212 0 205 213 0 214 213 0 206 214 0 215 214 0 207 215 0 216 215 0 208 216 0 217 216 0
		 209 217 0 210 217 0 219 218 0 218 210 0 211 219 0 220 219 0 212 220 0 221 220 0 213 221 0
		 222 221 0 214 222 0 223 222 0 215 223 0 224 223 0 216 224 0 225 224 0 217 225 0 218 225 0
		 227 226 0 226 218 0 219 227 0 228 227 0 220 228 0 229 228 0 221 229 0 230 229 0 222 230 0
		 231 230 0 223 231 0 232 231 0 224 232 0 233 232 0 225 233 0 226 233 0 235 234 0 234 226 0
		 227 235 0 236 235 0 228 236 0 237 236 0 229 237 0 238 237 0 230 238 0 239 238 0 231 239 0
		 240 239 0 232 240 0 241 240 0 233 241 0 234 241 0 243 242 0 242 234 0;
	setAttr ".ed[498:663]" 235 243 0 244 243 0 236 244 0 245 244 0 237 245 0 246 245 0
		 238 246 0 247 246 0 239 247 0 248 247 0 240 248 0 249 248 0 241 249 0 242 249 0 251 250 0
		 250 242 0 243 251 0 252 251 0 244 252 0 253 252 0 245 253 0 254 253 0 246 254 0 255 254 0
		 247 255 0 256 255 0 248 256 0 257 256 0 249 257 0 250 257 0 259 258 0 258 250 0 251 259 0
		 260 259 0 252 260 0 261 260 0 253 261 0 262 261 0 254 262 0 263 262 0 255 263 0 264 263 0
		 256 264 0 265 264 0 257 265 0 258 265 0 267 266 0 266 258 0 259 267 0 268 267 0 260 268 0
		 269 268 0 261 269 0 270 269 0 262 270 0 271 270 0 263 271 0 272 271 0 264 272 0 273 272 0
		 265 273 0 266 273 0 275 274 0 274 266 0 267 275 0 276 275 0 268 276 0 277 276 0 269 277 0
		 278 277 0 270 278 0 279 278 0 271 279 0 280 279 0 272 280 0 281 280 0 273 281 0 274 281 0
		 283 282 0 282 274 0 275 283 0 284 283 0 276 284 0 285 284 0 277 285 0 286 285 0 278 286 0
		 287 286 0 279 287 0 288 287 0 280 288 0 289 288 0 281 289 0 282 289 0 291 290 0 290 282 0
		 283 291 0 292 291 0 284 292 0 293 292 0 285 293 0 294 293 0 286 294 0 295 294 0 287 295 0
		 296 295 0 288 296 0 297 296 0 289 297 0 290 297 0 299 298 0 298 290 0 291 299 0 300 299 0
		 292 300 0 301 300 0 293 301 0 302 301 0 294 302 0 303 302 0 295 303 0 304 303 0 296 304 0
		 305 304 0 297 305 0 298 305 0 307 306 0 306 298 0 299 307 0 308 307 0 300 308 0 309 308 0
		 301 309 0 310 309 0 302 310 0 311 310 0 303 311 0 312 311 0 304 312 0 313 312 0 305 313 0
		 306 313 0 315 314 0 314 306 0 307 315 0 316 315 0 308 316 0 317 316 0 309 317 0 318 317 0
		 310 318 0 319 318 0 311 319 0 320 319 0 312 320 0 321 320 0 313 321 0 314 321 0 323 322 0
		 322 314 0 315 323 0 324 323 0 316 324 0 325 324 0 317 325 0 326 325 0;
	setAttr ".ed[664:829]" 318 326 0 327 326 0 319 327 0 328 327 0 320 328 0 329 328 0
		 321 329 0 322 329 0 331 330 0 330 322 0 323 331 0 332 331 0 324 332 0 333 332 0 325 333 0
		 334 333 0 326 334 0 335 334 0 327 335 0 336 335 0 328 336 0 337 336 0 329 337 0 330 337 0
		 339 338 0 338 330 0 331 339 0 340 339 0 332 340 0 341 340 0 333 341 0 342 341 0 334 342 0
		 343 342 0 335 343 0 344 343 0 336 344 0 345 344 0 337 345 0 338 345 0 347 346 0 346 338 0
		 339 347 0 348 347 0 340 348 0 349 348 0 341 349 0 350 349 0 342 350 0 351 350 0 343 351 0
		 352 351 0 344 352 0 353 352 0 345 353 0 346 353 0 355 354 0 354 346 0 347 355 0 356 355 0
		 348 356 0 357 356 0 349 357 0 358 357 0 350 358 0 359 358 0 351 359 0 360 359 0 352 360 0
		 361 360 0 353 361 0 354 361 0 363 362 0 362 354 0 355 363 0 364 363 0 356 364 0 365 364 0
		 357 365 0 366 365 0 358 366 0 367 366 0 359 367 0 368 367 0 360 368 0 369 368 0 361 369 0
		 362 369 0 371 370 0 370 362 0 363 371 0 372 371 0 364 372 0 373 372 0 365 373 0 374 373 0
		 366 374 0 375 374 0 367 375 0 376 375 0 368 376 0 377 376 0 369 377 0 370 377 0 379 378 0
		 378 370 0 371 379 0 380 379 0 372 380 0 381 380 0 373 381 0 382 381 0 374 382 0 383 382 0
		 375 383 0 384 383 0 376 384 0 385 384 0 377 385 0 378 385 0 387 386 0 386 378 0 379 387 0
		 388 387 0 380 388 0 389 388 0 381 389 0 390 389 0 382 390 0 391 390 0 383 391 0 392 391 0
		 384 392 0 393 392 0 385 393 0 386 393 0 395 394 0 394 386 0 387 395 0 396 395 0 388 396 0
		 397 396 0 389 397 0 398 397 0 390 398 0 399 398 0 391 399 0 400 399 0 392 400 0 401 400 0
		 393 401 0 394 401 0 403 402 0 402 394 0 395 403 0 404 403 0 396 404 0 405 404 0 397 405 0
		 406 405 0 398 406 0 407 406 0 399 407 0 408 407 0 400 408 0 409 408 0;
	setAttr ".ed[830:995]" 401 409 0 402 409 0 411 410 0 410 402 0 403 411 0 412 411 0
		 404 412 0 413 412 0 405 413 0 414 413 0 406 414 0 415 414 0 407 415 0 416 415 0 408 416 0
		 417 416 0 409 417 0 410 417 0 419 418 0 418 410 0 411 419 0 420 419 0 412 420 0 421 420 0
		 413 421 0 422 421 0 414 422 0 423 422 0 415 423 0 424 423 0 416 424 0 425 424 0 417 425 0
		 418 425 0 427 426 0 426 418 0 419 427 0 428 427 0 420 428 0 429 428 0 421 429 0 430 429 0
		 422 430 0 431 430 0 423 431 0 432 431 0 424 432 0 433 432 0 425 433 0 426 433 0 435 434 0
		 434 426 0 427 435 0 436 435 0 428 436 0 437 436 0 429 437 0 438 437 0 430 438 0 439 438 0
		 431 439 0 440 439 0 432 440 0 441 440 0 433 441 0 434 441 0 443 442 0 442 434 0 435 443 0
		 444 443 0 436 444 0 445 444 0 437 445 0 446 445 0 438 446 0 447 446 0 439 447 0 448 447 0
		 440 448 0 449 448 0 441 449 0 442 449 0 451 450 0 450 442 0 443 451 0 452 451 0 444 452 0
		 453 452 0 445 453 0 454 453 0 446 454 0 455 454 0 447 455 0 456 455 0 448 456 0 457 456 0
		 449 457 0 450 457 0 459 458 0 458 450 0 451 459 0 460 459 0 452 460 0 461 460 0 453 461 0
		 462 461 0 454 462 0 463 462 0 455 463 0 464 463 0 456 464 0 465 464 0 457 465 0 458 465 0
		 467 466 0 466 458 0 459 467 0 468 467 0 460 468 0 469 468 0 461 469 0 470 469 0 462 470 0
		 471 470 0 463 471 0 472 471 0 464 472 0 473 472 0 465 473 0 466 473 0 475 474 0 474 466 0
		 467 475 0 476 475 0 468 476 0 477 476 0 469 477 0 478 477 0 470 478 0 479 478 0 471 479 0
		 480 479 0 472 480 0 481 480 0 473 481 0 474 481 0 483 482 0 482 474 0 475 483 0 484 483 0
		 476 484 0 485 484 0 477 485 0 486 485 0 478 486 0 487 486 0 479 487 0 488 487 0 480 488 0
		 489 488 0 481 489 0 482 489 0 490 482 0 483 491 0 484 492 0 485 493 0;
	setAttr ".ed[996:999]" 486 494 0 487 495 0 488 496 0 489 497 0;
	setAttr -s 504 -ch 2000 ".fc";
	setAttr ".fc[0:499]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 -12
		mu 0 4 8 10 11 9
		f 4 16 17 18 -15
		mu 0 4 10 12 13 11
		f 4 19 20 21 -18
		mu 0 4 12 14 15 13
		f 4 22 -4 23 -21
		mu 0 4 14 0 3 15
		f 3 -1 24 25
		mu 0 3 1 0 16
		f 3 -5 -26 26
		mu 0 3 4 1 16
		f 3 -8 -27 27
		mu 0 3 6 4 16
		f 3 -11 -28 28
		mu 0 3 8 6 16
		f 3 -14 -29 29
		mu 0 3 10 8 16
		f 3 -17 -30 30
		mu 0 3 12 10 16
		f 3 -20 -31 31
		mu 0 3 14 12 16
		f 3 -23 -32 -25
		mu 0 3 0 14 16
		f 3 32 33 34
		mu 0 3 17 18 19
		f 3 35 36 -34
		mu 0 3 18 20 19
		f 3 37 38 -37
		mu 0 3 20 21 19
		f 3 39 40 -39
		mu 0 3 21 22 19
		f 3 41 42 -41
		mu 0 3 23 24 25
		f 3 43 44 -43
		mu 0 3 24 26 25
		f 3 45 46 -45
		mu 0 3 26 27 25
		f 3 47 -35 -47
		mu 0 3 27 17 25
		f 4 48 49 -46 50
		mu 0 4 28 29 27 26
		f 4 51 -51 -44 52
		mu 0 4 30 28 26 24
		f 4 53 -53 -42 54
		mu 0 4 31 30 24 23
		f 4 55 -55 -40 56
		mu 0 4 32 33 22 21
		f 4 57 -57 -38 58
		mu 0 4 34 32 21 20
		f 4 59 -59 -36 60
		mu 0 4 35 34 20 18
		f 4 61 -61 -33 62
		mu 0 4 36 35 18 17
		f 4 63 -63 -48 -50
		mu 0 4 29 36 17 27
		f 4 64 65 -49 66
		mu 0 4 37 38 29 28
		f 4 67 -67 -52 68
		mu 0 4 39 37 28 30
		f 4 69 -69 -54 70
		mu 0 4 40 39 30 31
		f 4 71 -71 -56 72
		mu 0 4 41 42 33 32
		f 4 73 -73 -58 74
		mu 0 4 43 41 32 34
		f 4 75 -75 -60 76
		mu 0 4 44 43 34 35
		f 4 77 -77 -62 78
		mu 0 4 45 44 35 36
		f 4 79 -79 -64 -66
		mu 0 4 38 45 36 29
		f 4 80 81 -65 82
		mu 0 4 46 47 38 37
		f 4 83 -83 -68 84
		mu 0 4 48 46 37 39
		f 4 85 -85 -70 86
		mu 0 4 49 48 39 40
		f 4 87 -87 -72 88
		mu 0 4 50 51 42 41
		f 4 89 -89 -74 90
		mu 0 4 52 50 41 43
		f 4 91 -91 -76 92
		mu 0 4 53 52 43 44
		f 4 93 -93 -78 94
		mu 0 4 54 53 44 45
		f 4 95 -95 -80 -82
		mu 0 4 47 54 45 38
		f 4 96 97 -81 98
		mu 0 4 55 56 47 46
		f 4 99 -99 -84 100
		mu 0 4 57 55 46 48
		f 4 101 -101 -86 102
		mu 0 4 58 57 48 49
		f 4 103 -103 -88 104
		mu 0 4 59 60 51 50
		f 4 105 -105 -90 106
		mu 0 4 61 59 50 52
		f 4 107 -107 -92 108
		mu 0 4 62 61 52 53
		f 4 109 -109 -94 110
		mu 0 4 63 62 53 54
		f 4 111 -111 -96 -98
		mu 0 4 56 63 54 47
		f 4 112 113 -97 114
		mu 0 4 64 65 56 55
		f 4 115 -115 -100 116
		mu 0 4 66 64 55 57
		f 4 117 -117 -102 118
		mu 0 4 67 66 57 58
		f 4 119 -119 -104 120
		mu 0 4 68 69 60 59
		f 4 121 -121 -106 122
		mu 0 4 70 68 59 61
		f 4 123 -123 -108 124
		mu 0 4 71 70 61 62
		f 4 125 -125 -110 126
		mu 0 4 72 71 62 63
		f 4 127 -127 -112 -114
		mu 0 4 65 72 63 56
		f 4 128 129 -113 130
		mu 0 4 73 74 65 64
		f 4 131 -131 -116 132
		mu 0 4 75 73 64 66
		f 4 133 -133 -118 134
		mu 0 4 76 75 66 67
		f 4 135 -135 -120 136
		mu 0 4 77 78 69 68
		f 4 137 -137 -122 138
		mu 0 4 79 77 68 70
		f 4 139 -139 -124 140
		mu 0 4 80 79 70 71
		f 4 141 -141 -126 142
		mu 0 4 81 80 71 72
		f 4 143 -143 -128 -130
		mu 0 4 74 81 72 65
		f 4 144 145 -129 146
		mu 0 4 82 83 74 73
		f 4 147 -147 -132 148
		mu 0 4 84 82 73 75
		f 4 149 -149 -134 150
		mu 0 4 85 84 75 76
		f 4 151 -151 -136 152
		mu 0 4 86 87 78 77
		f 4 153 -153 -138 154
		mu 0 4 88 86 77 79
		f 4 155 -155 -140 156
		mu 0 4 89 88 79 80
		f 4 157 -157 -142 158
		mu 0 4 90 89 80 81
		f 4 159 -159 -144 -146
		mu 0 4 83 90 81 74
		f 4 160 161 -145 162
		mu 0 4 91 92 83 82
		f 4 163 -163 -148 164
		mu 0 4 93 91 82 84
		f 4 165 -165 -150 166
		mu 0 4 94 93 84 85
		f 4 167 -167 -152 168
		mu 0 4 95 96 87 86
		f 4 169 -169 -154 170
		mu 0 4 97 95 86 88
		f 4 171 -171 -156 172
		mu 0 4 98 97 88 89
		f 4 173 -173 -158 174
		mu 0 4 99 98 89 90
		f 4 175 -175 -160 -162
		mu 0 4 92 99 90 83
		f 4 176 177 -161 178
		mu 0 4 100 101 92 91
		f 4 179 -179 -164 180
		mu 0 4 102 100 91 93
		f 4 181 -181 -166 182
		mu 0 4 103 102 93 94
		f 4 183 -183 -168 184
		mu 0 4 104 105 96 95
		f 4 185 -185 -170 186
		mu 0 4 106 104 95 97
		f 4 187 -187 -172 188
		mu 0 4 107 106 97 98
		f 4 189 -189 -174 190
		mu 0 4 108 107 98 99
		f 4 191 -191 -176 -178
		mu 0 4 101 108 99 92
		f 4 192 193 -177 194
		mu 0 4 109 110 101 100
		f 4 195 -195 -180 196
		mu 0 4 111 109 100 102
		f 4 197 -197 -182 198
		mu 0 4 112 111 102 103
		f 4 199 -199 -184 200
		mu 0 4 113 114 105 104
		f 4 201 -201 -186 202
		mu 0 4 115 113 104 106
		f 4 203 -203 -188 204
		mu 0 4 116 115 106 107
		f 4 205 -205 -190 206
		mu 0 4 117 116 107 108
		f 4 207 -207 -192 -194
		mu 0 4 110 117 108 101
		f 4 208 209 -193 210
		mu 0 4 118 119 110 109
		f 4 211 -211 -196 212
		mu 0 4 120 118 109 111
		f 4 213 -213 -198 214
		mu 0 4 121 120 111 112
		f 4 215 -215 -200 216
		mu 0 4 122 123 114 113
		f 4 217 -217 -202 218
		mu 0 4 124 122 113 115
		f 4 219 -219 -204 220
		mu 0 4 125 124 115 116
		f 4 221 -221 -206 222
		mu 0 4 126 125 116 117
		f 4 223 -223 -208 -210
		mu 0 4 119 126 117 110
		f 4 224 225 -209 226
		mu 0 4 127 128 119 118
		f 4 227 -227 -212 228
		mu 0 4 129 127 118 120
		f 4 229 -229 -214 230
		mu 0 4 130 129 120 121
		f 4 231 -231 -216 232
		mu 0 4 131 132 123 122
		f 4 233 -233 -218 234
		mu 0 4 133 131 122 124
		f 4 235 -235 -220 236
		mu 0 4 134 133 124 125
		f 4 237 -237 -222 238
		mu 0 4 135 134 125 126
		f 4 239 -239 -224 -226
		mu 0 4 128 135 126 119
		f 4 240 241 -225 242
		mu 0 4 136 137 128 127
		f 4 243 -243 -228 244
		mu 0 4 138 136 127 129
		f 4 245 -245 -230 246
		mu 0 4 139 138 129 130
		f 4 247 -247 -232 248
		mu 0 4 140 141 132 131
		f 4 249 -249 -234 250
		mu 0 4 142 140 131 133
		f 4 251 -251 -236 252
		mu 0 4 143 142 133 134
		f 4 253 -253 -238 254
		mu 0 4 144 143 134 135
		f 4 255 -255 -240 -242
		mu 0 4 137 144 135 128
		f 4 256 257 -241 258
		mu 0 4 145 146 137 136
		f 4 259 -259 -244 260
		mu 0 4 147 145 136 138
		f 4 261 -261 -246 262
		mu 0 4 148 147 138 139
		f 4 263 -263 -248 264
		mu 0 4 149 150 141 140
		f 4 265 -265 -250 266
		mu 0 4 151 149 140 142
		f 4 267 -267 -252 268
		mu 0 4 152 151 142 143
		f 4 269 -269 -254 270
		mu 0 4 153 152 143 144
		f 4 271 -271 -256 -258
		mu 0 4 146 153 144 137
		f 4 272 273 -257 274
		mu 0 4 154 155 146 145
		f 4 275 -275 -260 276
		mu 0 4 156 154 145 147
		f 4 277 -277 -262 278
		mu 0 4 157 156 147 148
		f 4 279 -279 -264 280
		mu 0 4 158 159 150 149
		f 4 281 -281 -266 282
		mu 0 4 160 158 149 151
		f 4 283 -283 -268 284
		mu 0 4 161 160 151 152
		f 4 285 -285 -270 286
		mu 0 4 162 161 152 153
		f 4 287 -287 -272 -274
		mu 0 4 155 162 153 146
		f 4 288 289 -273 290
		mu 0 4 163 164 155 154
		f 4 291 -291 -276 292
		mu 0 4 165 163 154 156
		f 4 293 -293 -278 294
		mu 0 4 166 165 156 157
		f 4 295 -295 -280 296
		mu 0 4 167 168 159 158
		f 4 297 -297 -282 298
		mu 0 4 169 167 158 160
		f 4 299 -299 -284 300
		mu 0 4 170 169 160 161
		f 4 301 -301 -286 302
		mu 0 4 171 170 161 162
		f 4 303 -303 -288 -290
		mu 0 4 164 171 162 155
		f 4 304 305 -289 306
		mu 0 4 172 173 164 163
		f 4 307 -307 -292 308
		mu 0 4 174 172 163 165
		f 4 309 -309 -294 310
		mu 0 4 175 174 165 166
		f 4 311 -311 -296 312
		mu 0 4 176 177 168 167
		f 4 313 -313 -298 314
		mu 0 4 178 176 167 169
		f 4 315 -315 -300 316
		mu 0 4 179 178 169 170
		f 4 317 -317 -302 318
		mu 0 4 180 179 170 171
		f 4 319 -319 -304 -306
		mu 0 4 173 180 171 164
		f 4 320 321 -305 322
		mu 0 4 181 182 173 172
		f 4 323 -323 -308 324
		mu 0 4 183 181 172 174
		f 4 325 -325 -310 326
		mu 0 4 184 183 174 175
		f 4 327 -327 -312 328
		mu 0 4 185 186 177 176
		f 4 329 -329 -314 330
		mu 0 4 187 185 176 178
		f 4 331 -331 -316 332
		mu 0 4 188 187 178 179
		f 4 333 -333 -318 334
		mu 0 4 189 188 179 180
		f 4 335 -335 -320 -322
		mu 0 4 182 189 180 173
		f 4 336 337 -321 338
		mu 0 4 190 191 182 181
		f 4 339 -339 -324 340
		mu 0 4 192 190 181 183
		f 4 341 -341 -326 342
		mu 0 4 193 192 183 184
		f 4 343 -343 -328 344
		mu 0 4 194 195 186 185
		f 4 345 -345 -330 346
		mu 0 4 196 194 185 187
		f 4 347 -347 -332 348
		mu 0 4 197 196 187 188
		f 4 349 -349 -334 350
		mu 0 4 198 197 188 189
		f 4 351 -351 -336 -338
		mu 0 4 191 198 189 182
		f 4 352 353 -337 354
		mu 0 4 199 200 191 190
		f 4 355 -355 -340 356
		mu 0 4 201 199 190 192
		f 4 357 -357 -342 358
		mu 0 4 202 201 192 193
		f 4 359 -359 -344 360
		mu 0 4 203 204 195 194
		f 4 361 -361 -346 362
		mu 0 4 205 203 194 196
		f 4 363 -363 -348 364
		mu 0 4 206 205 196 197
		f 4 365 -365 -350 366
		mu 0 4 207 206 197 198
		f 4 367 -367 -352 -354
		mu 0 4 200 207 198 191
		f 4 368 369 -353 370
		mu 0 4 208 209 200 199
		f 4 371 -371 -356 372
		mu 0 4 210 208 199 201
		f 4 373 -373 -358 374
		mu 0 4 211 210 201 202
		f 4 375 -375 -360 376
		mu 0 4 212 213 204 203
		f 4 377 -377 -362 378
		mu 0 4 214 212 203 205
		f 4 379 -379 -364 380
		mu 0 4 215 214 205 206
		f 4 381 -381 -366 382
		mu 0 4 216 215 206 207
		f 4 383 -383 -368 -370
		mu 0 4 209 216 207 200
		f 4 384 385 -369 386
		mu 0 4 217 218 209 208
		f 4 387 -387 -372 388
		mu 0 4 219 217 208 210
		f 4 389 -389 -374 390
		mu 0 4 220 219 210 211
		f 4 391 -391 -376 392
		mu 0 4 221 222 213 212
		f 4 393 -393 -378 394
		mu 0 4 223 221 212 214
		f 4 395 -395 -380 396
		mu 0 4 224 223 214 215
		f 4 397 -397 -382 398
		mu 0 4 225 224 215 216
		f 4 399 -399 -384 -386
		mu 0 4 218 225 216 209
		f 4 400 401 -385 402
		mu 0 4 226 227 218 217
		f 4 403 -403 -388 404
		mu 0 4 228 226 217 219
		f 4 405 -405 -390 406
		mu 0 4 229 228 219 220
		f 4 407 -407 -392 408
		mu 0 4 230 231 222 221
		f 4 409 -409 -394 410
		mu 0 4 232 230 221 223
		f 4 411 -411 -396 412
		mu 0 4 233 232 223 224
		f 4 413 -413 -398 414
		mu 0 4 234 233 224 225
		f 4 415 -415 -400 -402
		mu 0 4 227 234 225 218
		f 4 416 417 -401 418
		mu 0 4 235 236 227 226
		f 4 419 -419 -404 420
		mu 0 4 237 235 226 228
		f 4 421 -421 -406 422
		mu 0 4 238 237 228 229
		f 4 423 -423 -408 424
		mu 0 4 239 240 231 230
		f 4 425 -425 -410 426
		mu 0 4 241 239 230 232
		f 4 427 -427 -412 428
		mu 0 4 242 241 232 233
		f 4 429 -429 -414 430
		mu 0 4 243 242 233 234
		f 4 431 -431 -416 -418
		mu 0 4 236 243 234 227
		f 4 432 433 -417 434
		mu 0 4 244 245 236 235
		f 4 435 -435 -420 436
		mu 0 4 246 244 235 237
		f 4 437 -437 -422 438
		mu 0 4 247 246 237 238
		f 4 439 -439 -424 440
		mu 0 4 248 249 240 239
		f 4 441 -441 -426 442
		mu 0 4 250 248 239 241
		f 4 443 -443 -428 444
		mu 0 4 251 250 241 242
		f 4 445 -445 -430 446
		mu 0 4 252 251 242 243
		f 4 447 -447 -432 -434
		mu 0 4 245 252 243 236
		f 4 448 449 -433 450
		mu 0 4 253 254 245 244
		f 4 451 -451 -436 452
		mu 0 4 255 253 244 246
		f 4 453 -453 -438 454
		mu 0 4 256 255 246 247
		f 4 455 -455 -440 456
		mu 0 4 257 258 249 248
		f 4 457 -457 -442 458
		mu 0 4 259 257 248 250
		f 4 459 -459 -444 460
		mu 0 4 260 259 250 251
		f 4 461 -461 -446 462
		mu 0 4 261 260 251 252
		f 4 463 -463 -448 -450
		mu 0 4 254 261 252 245
		f 4 464 465 -449 466
		mu 0 4 262 263 254 253
		f 4 467 -467 -452 468
		mu 0 4 264 262 253 255
		f 4 469 -469 -454 470
		mu 0 4 265 264 255 256
		f 4 471 -471 -456 472
		mu 0 4 266 267 258 257
		f 4 473 -473 -458 474
		mu 0 4 268 266 257 259
		f 4 475 -475 -460 476
		mu 0 4 269 268 259 260
		f 4 477 -477 -462 478
		mu 0 4 270 269 260 261
		f 4 479 -479 -464 -466
		mu 0 4 263 270 261 254
		f 4 480 481 -465 482
		mu 0 4 271 272 263 262
		f 4 483 -483 -468 484
		mu 0 4 273 271 262 264
		f 4 485 -485 -470 486
		mu 0 4 274 273 264 265
		f 4 487 -487 -472 488
		mu 0 4 275 276 267 266
		f 4 489 -489 -474 490
		mu 0 4 277 275 266 268
		f 4 491 -491 -476 492
		mu 0 4 278 277 268 269
		f 4 493 -493 -478 494
		mu 0 4 279 278 269 270
		f 4 495 -495 -480 -482
		mu 0 4 272 279 270 263
		f 4 496 497 -481 498
		mu 0 4 280 281 272 271
		f 4 499 -499 -484 500
		mu 0 4 282 280 271 273
		f 4 501 -501 -486 502
		mu 0 4 283 282 273 274
		f 4 503 -503 -488 504
		mu 0 4 284 285 276 275
		f 4 505 -505 -490 506
		mu 0 4 286 284 275 277
		f 4 507 -507 -492 508
		mu 0 4 287 286 277 278
		f 4 509 -509 -494 510
		mu 0 4 288 287 278 279
		f 4 511 -511 -496 -498
		mu 0 4 281 288 279 272
		f 4 512 513 -497 514
		mu 0 4 289 290 281 280
		f 4 515 -515 -500 516
		mu 0 4 291 289 280 282
		f 4 517 -517 -502 518
		mu 0 4 292 291 282 283
		f 4 519 -519 -504 520
		mu 0 4 293 294 285 284
		f 4 521 -521 -506 522
		mu 0 4 295 293 284 286
		f 4 523 -523 -508 524
		mu 0 4 296 295 286 287
		f 4 525 -525 -510 526
		mu 0 4 297 296 287 288
		f 4 527 -527 -512 -514
		mu 0 4 290 297 288 281
		f 4 528 529 -513 530
		mu 0 4 298 299 290 289
		f 4 531 -531 -516 532
		mu 0 4 300 298 289 291
		f 4 533 -533 -518 534
		mu 0 4 301 300 291 292
		f 4 535 -535 -520 536
		mu 0 4 302 303 294 293
		f 4 537 -537 -522 538
		mu 0 4 304 302 293 295
		f 4 539 -539 -524 540
		mu 0 4 305 304 295 296
		f 4 541 -541 -526 542
		mu 0 4 306 305 296 297
		f 4 543 -543 -528 -530
		mu 0 4 299 306 297 290
		f 4 544 545 -529 546
		mu 0 4 307 308 299 298
		f 4 547 -547 -532 548
		mu 0 4 309 307 298 300
		f 4 549 -549 -534 550
		mu 0 4 310 309 300 301
		f 4 551 -551 -536 552
		mu 0 4 311 312 303 302
		f 4 553 -553 -538 554
		mu 0 4 313 311 302 304
		f 4 555 -555 -540 556
		mu 0 4 314 313 304 305
		f 4 557 -557 -542 558
		mu 0 4 315 314 305 306
		f 4 559 -559 -544 -546
		mu 0 4 308 315 306 299
		f 4 560 561 -545 562
		mu 0 4 316 317 308 307
		f 4 563 -563 -548 564
		mu 0 4 318 316 307 309
		f 4 565 -565 -550 566
		mu 0 4 319 318 309 310
		f 4 567 -567 -552 568
		mu 0 4 320 321 312 311
		f 4 569 -569 -554 570
		mu 0 4 322 320 311 313
		f 4 571 -571 -556 572
		mu 0 4 323 322 313 314
		f 4 573 -573 -558 574
		mu 0 4 324 323 314 315
		f 4 575 -575 -560 -562
		mu 0 4 317 324 315 308
		f 4 576 577 -561 578
		mu 0 4 325 326 317 316
		f 4 579 -579 -564 580
		mu 0 4 327 325 316 318
		f 4 581 -581 -566 582
		mu 0 4 328 327 318 319
		f 4 583 -583 -568 584
		mu 0 4 329 330 321 320
		f 4 585 -585 -570 586
		mu 0 4 331 329 320 322
		f 4 587 -587 -572 588
		mu 0 4 332 331 322 323
		f 4 589 -589 -574 590
		mu 0 4 333 332 323 324
		f 4 591 -591 -576 -578
		mu 0 4 326 333 324 317
		f 4 592 593 -577 594
		mu 0 4 334 335 326 325
		f 4 595 -595 -580 596
		mu 0 4 336 334 325 327
		f 4 597 -597 -582 598
		mu 0 4 337 336 327 328
		f 4 599 -599 -584 600
		mu 0 4 338 339 330 329
		f 4 601 -601 -586 602
		mu 0 4 340 338 329 331
		f 4 603 -603 -588 604
		mu 0 4 341 340 331 332
		f 4 605 -605 -590 606
		mu 0 4 342 341 332 333
		f 4 607 -607 -592 -594
		mu 0 4 335 342 333 326
		f 4 608 609 -593 610
		mu 0 4 343 344 335 334
		f 4 611 -611 -596 612
		mu 0 4 345 343 334 336
		f 4 613 -613 -598 614
		mu 0 4 346 345 336 337
		f 4 615 -615 -600 616
		mu 0 4 347 348 339 338
		f 4 617 -617 -602 618
		mu 0 4 349 347 338 340
		f 4 619 -619 -604 620
		mu 0 4 350 349 340 341
		f 4 621 -621 -606 622
		mu 0 4 351 350 341 342
		f 4 623 -623 -608 -610
		mu 0 4 344 351 342 335
		f 4 624 625 -609 626
		mu 0 4 352 353 344 343
		f 4 627 -627 -612 628
		mu 0 4 354 352 343 345
		f 4 629 -629 -614 630
		mu 0 4 355 354 345 346
		f 4 631 -631 -616 632
		mu 0 4 356 357 348 347
		f 4 633 -633 -618 634
		mu 0 4 358 356 347 349
		f 4 635 -635 -620 636
		mu 0 4 359 358 349 350
		f 4 637 -637 -622 638
		mu 0 4 360 359 350 351
		f 4 639 -639 -624 -626
		mu 0 4 353 360 351 344
		f 4 640 641 -625 642
		mu 0 4 361 362 353 352
		f 4 643 -643 -628 644
		mu 0 4 363 361 352 354
		f 4 645 -645 -630 646
		mu 0 4 364 363 354 355
		f 4 647 -647 -632 648
		mu 0 4 365 366 357 356
		f 4 649 -649 -634 650
		mu 0 4 367 365 356 358
		f 4 651 -651 -636 652
		mu 0 4 368 367 358 359
		f 4 653 -653 -638 654
		mu 0 4 369 368 359 360
		f 4 655 -655 -640 -642
		mu 0 4 362 369 360 353
		f 4 656 657 -641 658
		mu 0 4 370 371 362 361
		f 4 659 -659 -644 660
		mu 0 4 372 370 361 363
		f 4 661 -661 -646 662
		mu 0 4 373 372 363 364
		f 4 663 -663 -648 664
		mu 0 4 374 375 366 365
		f 4 665 -665 -650 666
		mu 0 4 376 374 365 367
		f 4 667 -667 -652 668
		mu 0 4 377 376 367 368
		f 4 669 -669 -654 670
		mu 0 4 378 377 368 369
		f 4 671 -671 -656 -658
		mu 0 4 371 378 369 362
		f 4 672 673 -657 674
		mu 0 4 379 380 371 370
		f 4 675 -675 -660 676
		mu 0 4 381 379 370 372
		f 4 677 -677 -662 678
		mu 0 4 382 381 372 373
		f 4 679 -679 -664 680
		mu 0 4 383 384 375 374
		f 4 681 -681 -666 682
		mu 0 4 385 383 374 376
		f 4 683 -683 -668 684
		mu 0 4 386 385 376 377
		f 4 685 -685 -670 686
		mu 0 4 387 386 377 378
		f 4 687 -687 -672 -674
		mu 0 4 380 387 378 371
		f 4 688 689 -673 690
		mu 0 4 388 389 380 379
		f 4 691 -691 -676 692
		mu 0 4 390 388 379 381
		f 4 693 -693 -678 694
		mu 0 4 391 390 381 382
		f 4 695 -695 -680 696
		mu 0 4 392 393 384 383
		f 4 697 -697 -682 698
		mu 0 4 394 392 383 385
		f 4 699 -699 -684 700
		mu 0 4 395 394 385 386
		f 4 701 -701 -686 702
		mu 0 4 396 395 386 387
		f 4 703 -703 -688 -690
		mu 0 4 389 396 387 380
		f 4 704 705 -689 706
		mu 0 4 397 398 389 388
		f 4 707 -707 -692 708
		mu 0 4 399 397 388 390
		f 4 709 -709 -694 710
		mu 0 4 400 399 390 391
		f 4 711 -711 -696 712
		mu 0 4 401 402 393 392
		f 4 713 -713 -698 714
		mu 0 4 403 401 392 394
		f 4 715 -715 -700 716
		mu 0 4 404 403 394 395
		f 4 717 -717 -702 718
		mu 0 4 405 404 395 396
		f 4 719 -719 -704 -706
		mu 0 4 398 405 396 389
		f 4 720 721 -705 722
		mu 0 4 406 407 398 397
		f 4 723 -723 -708 724
		mu 0 4 408 406 397 399
		f 4 725 -725 -710 726
		mu 0 4 409 408 399 400
		f 4 727 -727 -712 728
		mu 0 4 410 411 402 401
		f 4 729 -729 -714 730
		mu 0 4 412 410 401 403
		f 4 731 -731 -716 732
		mu 0 4 413 412 403 404
		f 4 733 -733 -718 734
		mu 0 4 414 413 404 405
		f 4 735 -735 -720 -722
		mu 0 4 407 414 405 398
		f 4 736 737 -721 738
		mu 0 4 415 416 407 406
		f 4 739 -739 -724 740
		mu 0 4 417 415 406 408
		f 4 741 -741 -726 742
		mu 0 4 418 417 408 409
		f 4 743 -743 -728 744
		mu 0 4 419 420 411 410
		f 4 745 -745 -730 746
		mu 0 4 421 419 410 412
		f 4 747 -747 -732 748
		mu 0 4 422 421 412 413
		f 4 749 -749 -734 750
		mu 0 4 423 422 413 414
		f 4 751 -751 -736 -738
		mu 0 4 416 423 414 407
		f 4 752 753 -737 754
		mu 0 4 424 425 416 415
		f 4 755 -755 -740 756
		mu 0 4 426 424 415 417
		f 4 757 -757 -742 758
		mu 0 4 427 426 417 418
		f 4 759 -759 -744 760
		mu 0 4 428 429 420 419
		f 4 761 -761 -746 762
		mu 0 4 430 428 419 421
		f 4 763 -763 -748 764
		mu 0 4 431 430 421 422
		f 4 765 -765 -750 766
		mu 0 4 432 431 422 423
		f 4 767 -767 -752 -754
		mu 0 4 425 432 423 416
		f 4 768 769 -753 770
		mu 0 4 433 434 425 424
		f 4 771 -771 -756 772
		mu 0 4 435 433 424 426
		f 4 773 -773 -758 774
		mu 0 4 436 435 426 427
		f 4 775 -775 -760 776
		mu 0 4 437 438 429 428
		f 4 777 -777 -762 778
		mu 0 4 439 437 428 430
		f 4 779 -779 -764 780
		mu 0 4 440 439 430 431
		f 4 781 -781 -766 782
		mu 0 4 441 440 431 432
		f 4 783 -783 -768 -770
		mu 0 4 434 441 432 425
		f 4 784 785 -769 786
		mu 0 4 442 443 434 433
		f 4 787 -787 -772 788
		mu 0 4 444 442 433 435
		f 4 789 -789 -774 790
		mu 0 4 445 444 435 436
		f 4 791 -791 -776 792
		mu 0 4 446 447 438 437
		f 4 793 -793 -778 794
		mu 0 4 448 446 437 439
		f 4 795 -795 -780 796
		mu 0 4 449 448 439 440
		f 4 797 -797 -782 798
		mu 0 4 450 449 440 441
		f 4 799 -799 -784 -786
		mu 0 4 443 450 441 434
		f 4 800 801 -785 802
		mu 0 4 451 452 443 442
		f 4 803 -803 -788 804
		mu 0 4 453 451 442 444
		f 4 805 -805 -790 806
		mu 0 4 454 453 444 445
		f 4 807 -807 -792 808
		mu 0 4 455 456 447 446
		f 4 809 -809 -794 810
		mu 0 4 457 455 446 448
		f 4 811 -811 -796 812
		mu 0 4 458 457 448 449
		f 4 813 -813 -798 814
		mu 0 4 459 458 449 450
		f 4 815 -815 -800 -802
		mu 0 4 452 459 450 443
		f 4 816 817 -801 818
		mu 0 4 460 461 452 451
		f 4 819 -819 -804 820
		mu 0 4 462 460 451 453
		f 4 821 -821 -806 822
		mu 0 4 463 462 453 454
		f 4 823 -823 -808 824
		mu 0 4 464 465 456 455
		f 4 825 -825 -810 826
		mu 0 4 466 464 455 457
		f 4 827 -827 -812 828
		mu 0 4 467 466 457 458
		f 4 829 -829 -814 830
		mu 0 4 468 467 458 459
		f 4 831 -831 -816 -818
		mu 0 4 461 468 459 452
		f 4 832 833 -817 834
		mu 0 4 469 470 461 460
		f 4 835 -835 -820 836
		mu 0 4 471 469 460 462
		f 4 837 -837 -822 838
		mu 0 4 472 471 462 463
		f 4 839 -839 -824 840
		mu 0 4 473 474 465 464
		f 4 841 -841 -826 842
		mu 0 4 475 473 464 466
		f 4 843 -843 -828 844
		mu 0 4 476 475 466 467
		f 4 845 -845 -830 846
		mu 0 4 477 476 467 468
		f 4 847 -847 -832 -834
		mu 0 4 470 477 468 461
		f 4 848 849 -833 850
		mu 0 4 478 479 470 469
		f 4 851 -851 -836 852
		mu 0 4 480 478 469 471
		f 4 853 -853 -838 854
		mu 0 4 481 480 471 472
		f 4 855 -855 -840 856
		mu 0 4 482 483 474 473
		f 4 857 -857 -842 858
		mu 0 4 484 482 473 475
		f 4 859 -859 -844 860
		mu 0 4 485 484 475 476
		f 4 861 -861 -846 862
		mu 0 4 486 485 476 477
		f 4 863 -863 -848 -850
		mu 0 4 479 486 477 470
		f 4 864 865 -849 866
		mu 0 4 487 488 479 478
		f 4 867 -867 -852 868
		mu 0 4 489 487 478 480
		f 4 869 -869 -854 870
		mu 0 4 490 489 480 481
		f 4 871 -871 -856 872
		mu 0 4 491 492 483 482
		f 4 873 -873 -858 874
		mu 0 4 493 491 482 484
		f 4 875 -875 -860 876
		mu 0 4 494 493 484 485
		f 4 877 -877 -862 878
		mu 0 4 495 494 485 486
		f 4 879 -879 -864 -866
		mu 0 4 488 495 486 479
		f 4 880 881 -865 882
		mu 0 4 496 497 488 487
		f 4 883 -883 -868 884
		mu 0 4 498 496 487 489
		f 4 885 -885 -870 886
		mu 0 4 499 498 489 490
		f 4 887 -887 -872 888
		mu 0 4 500 501 492 491
		f 4 889 -889 -874 890
		mu 0 4 502 500 491 493
		f 4 891 -891 -876 892
		mu 0 4 503 502 493 494
		f 4 893 -893 -878 894
		mu 0 4 504 503 494 495
		f 4 895 -895 -880 -882
		mu 0 4 497 504 495 488
		f 4 896 897 -881 898
		mu 0 4 505 506 497 496
		f 4 899 -899 -884 900
		mu 0 4 507 505 496 498
		f 4 901 -901 -886 902
		mu 0 4 508 507 498 499
		f 4 903 -903 -888 904
		mu 0 4 509 510 501 500
		f 4 905 -905 -890 906
		mu 0 4 511 509 500 502
		f 4 907 -907 -892 908
		mu 0 4 512 511 502 503
		f 4 909 -909 -894 910
		mu 0 4 513 512 503 504
		f 4 911 -911 -896 -898
		mu 0 4 506 513 504 497
		f 4 912 913 -897 914
		mu 0 4 514 515 506 505
		f 4 915 -915 -900 916
		mu 0 4 516 514 505 507
		f 4 917 -917 -902 918
		mu 0 4 517 516 507 508
		f 4 919 -919 -904 920
		mu 0 4 518 519 510 509
		f 4 921 -921 -906 922
		mu 0 4 520 518 509 511
		f 4 923 -923 -908 924
		mu 0 4 521 520 511 512
		f 4 925 -925 -910 926
		mu 0 4 522 521 512 513
		f 4 927 -927 -912 -914
		mu 0 4 515 522 513 506
		f 4 928 929 -913 930
		mu 0 4 523 524 515 514
		f 4 931 -931 -916 932
		mu 0 4 525 523 514 516
		f 4 933 -933 -918 934
		mu 0 4 526 525 516 517
		f 4 935 -935 -920 936
		mu 0 4 527 528 519 518
		f 4 937 -937 -922 938
		mu 0 4 529 527 518 520
		f 4 939 -939 -924 940
		mu 0 4 530 529 520 521
		f 4 941 -941 -926 942
		mu 0 4 531 530 521 522
		f 4 943 -943 -928 -930
		mu 0 4 524 531 522 515
		f 4 944 945 -929 946
		mu 0 4 532 533 524 523
		f 4 947 -947 -932 948
		mu 0 4 534 532 523 525
		f 4 949 -949 -934 950
		mu 0 4 535 534 525 526
		f 4 951 -951 -936 952
		mu 0 4 536 537 528 527
		f 4 953 -953 -938 954
		mu 0 4 538 536 527 529
		f 4 955 -955 -940 956
		mu 0 4 539 538 529 530
		f 4 957 -957 -942 958
		mu 0 4 540 539 530 531
		f 4 959 -959 -944 -946
		mu 0 4 533 540 531 524
		f 4 960 961 -945 962
		mu 0 4 541 542 533 532
		f 4 963 -963 -948 964
		mu 0 4 543 541 532 534
		f 4 965 -965 -950 966
		mu 0 4 544 543 534 535
		f 4 967 -967 -952 968
		mu 0 4 545 546 537 536
		f 4 969 -969 -954 970
		mu 0 4 547 545 536 538
		f 4 971 -971 -956 972
		mu 0 4 548 547 538 539
		f 4 973 -973 -958 974
		mu 0 4 549 548 539 540
		f 4 975 -975 -960 -962
		mu 0 4 542 549 540 533
		f 4 976 977 -961 978
		mu 0 4 550 551 542 541
		f 4 979 -979 -964 980
		mu 0 4 552 550 541 543
		f 4 981 -981 -966 982
		mu 0 4 553 552 543 544
		f 4 983 -983 -968 984
		mu 0 4 554 555 546 545
		f 4 985 -985 -970 986
		mu 0 4 556 554 545 547
		f 4 987 -987 -972 988
		mu 0 4 557 556 547 548
		f 4 989 -989 -974 990
		mu 0 4 558 557 548 549
		f 4 991 -991 -976 -978
		mu 0 4 551 558 549 542
		f 4 -22 992 -977 993
		mu 0 4 559 560 551 550
		f 4 -19 -994 -980 994
		mu 0 4 561 559 550 552
		f 4 -16 -995 -982 995
		mu 0 4 562 561 552 553
		f 4 -13 -996 -984 996
		mu 0 4 563 564 555 554;
	setAttr ".fc[500:503]"
		f 4 -10 -997 -986 997
		mu 0 4 565 563 554 556
		f 4 -7 -998 -988 998
		mu 0 4 566 565 556 557
		f 4 -3 -999 -990 999
		mu 0 4 567 566 557 558
		f 4 -24 -1000 -992 -993
		mu 0 4 560 567 558 551;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface2" -p "vine_unwrapped_headus:Mesh";
	setAttr ".rp" -type "double3" -4.76837158203125e-007 0.60570001602172852 0.36503297090530401 ;
	setAttr ".sp" -type "double3" -4.76837158203125e-007 0.60570001602172852 0.36503297090530401 ;
createNode mesh -n "polySurfaceShape3" -p "polySurface2";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:119]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25511041914837218 0.4379105996593935 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 147 ".uvst[0].uvsp[0:146]" -type "float2" 0.25707081 0.65346181
		 0.29438576 0.64778173 0.3145518 0.8102988 0.2857348 0.81468475 0.33196476 0.64410174
		 0.34353879 0.80746174 0.36969277 0.64242375 0.3726258 0.80616975 0.40745476 0.64274979
		 0.40173975 0.80641973 0.44514176 0.64508283 0.43080977 0.80821776 0.48263678 0.64942276
		 0.4597638 0.81156874 0.51981676 0.65576875 0.48853377 0.81648481 0.55654079 0.66411376
		 0.51705575 0.82298577 0.59265476 0.67443883 0.54527372 0.83110082 0.62798274 0.68668878
		 0.57314378 0.84086573 0.66235375 0.70073879 0.60064477 0.85230279 0.69566375 0.71629775
		 0.62783074 0.8653878 0.72820479 0.7324568 0.65482676 0.88014781 0.014633764 0.7452358
		 0.046575766 0.72792172 0.11970276 0.87448776 0.093252763 0.89020479 0.079306766 0.71117973
		 0.14640176 0.86043882 0.11315276 0.69590878 0.17347576 0.84802377 0.14802076 0.68240178
		 0.20097676 0.83726776 0.18374076 0.67079079 0.22888675 0.82814682 0.22014277 0.66113484
		 0.25715879 0.82062781 0.34846443 0.3700856 0.36485443 0.40225261 0.25511041 0.43791062
		 0.32293642 0.3445566 0.29076841 0.3281666 0.25511041 0.32251862 0.21945241 0.3281666
		 0.18728442 0.3445566 0.16175641 0.3700856 0.14536642 0.40225261 0.13971841 0.43791062
		 0.14536642 0.47356862 0.16175641 0.50573564 0.18728442 0.5312646 0.21945241 0.54765463
		 0.25511041 0.55330265 0.29076841 0.54765463 0.3229354 0.5312646 0.34846443 0.50573564
		 0.36485443 0.47356862 0.37050241 0.43791062 0.028365642 0.55966675 0.037265643 0.54219878
		 0.087959647 0.57902974 0.051128641 0.52833575 0.068596646 0.51943576 0.087959647
		 0.51636875 0.10732265 0.51943576 0.12479065 0.52833575 0.13865364 0.54219878 0.14755365
		 0.55966675 0.15062064 0.57902974 0.14755365 0.59839272 0.13865364 0.6158607 0.12479065
		 0.62972373 0.10732265 0.63862371 0.087959647 0.64169073 0.068596646 0.63862371 0.051128641
		 0.62972373 0.037265643 0.6158607 0.028365642 0.59839272 0.02529864 0.57902974 0.3208448
		 0.86016679 0.29472777 0.86411381 0.3471348 0.8576088 0.37352476 0.85644078 0.39993879
		 0.85666382 0.42630377 0.85827875 0.45254478 0.86128783 0.47858879 0.86569381 0.50436872
		 0.87150478 0.52981573 0.87874079 0.55485976 0.88743877 0.57939076 0.89766181 0.60316879
		 0.90946972 0.62558174 0.92280674 0.14592676 0.91765976 0.12400576 0.93178976 0.16926576
		 0.90500772 0.19341576 0.89391172 0.21813075 0.88432276 0.24330278 0.87618077 0.26885781
		 0.86944973 0.32456979 0.88978779 0.30005381 0.89347172 0.34926376 0.88739574 0.37405875
		 0.88630176 0.39887676 0.88650775 0.42364076 0.88801479 0.44827279 0.89081883 0.47269377
		 0.89491475 0.49682376 0.90029883 0.52057576 0.90697682 0.54385573 0.91498375 0.56654578
		 0.92443573 0.58848476 0.93563282 0.60957175 0.94909477 0.16153875 0.94328177 0.14094776
		 0.95748973 0.18306175 0.93130577 0.20539775 0.92104673 0.22837576 0.91221082 0.25187376
		 0.90468574 0.27579477 0.89844072 0.32941476 0.92865181 0.30697581 0.93201375 0.3520368
		 0.9264648 0.37475976 0.92546272 0.39750275 0.92565084 0.42018977 0.92702675 0.44273475
		 0.92958379 0.46504775 0.93331075 0.48702076 0.93818676 0.50851876 0.94418776 0.52935576
		 0.9512918 0.54926878 0.95950377 0.56788677 0.96892178 0.58451277 0.98006582 0.18331677
		 0.97581077 0.16710076 0.98754382 0.20158376 0.96573174 0.22119077 0.95681083 0.24175878
		 0.94896579 0.26302776 0.9421978 0.28481176 0.93653774;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 102 ".vt[0:101]"  1.35720396 -1.091449022 -0.075948998 1.15450597 -1.091449022 -0.47376499
		 0.83879799 -1.091449022 -0.789473 0.44098201 -1.091449022 -0.99216998 0 -1.091449022 -1.062015057
		 -0.44098201 -1.091449022 -0.99216998 -0.83879799 -1.091449022 -0.789473 -1.15450597 -1.091449022 -0.473764
		 -1.35720301 -1.091449022 -0.075948998 -1.42704797 -1.091449022 0.365033 -1.35720301 -1.091449022 0.80601501
		 -1.15450597 -1.091449022 1.20383096 -0.83879799 -1.091449022 1.519539 -0.44098201 -1.091449022 1.72223604
		 0 -1.091449022 1.792081 0.44098201 -1.091449022 1.72223604 0.83879697 -1.091449022 1.519539
		 1.15450597 -1.091449022 1.20383096 1.35720301 -1.091449022 0.80601501 1.42704701 -1.091449022 0.365033
		 1.17240703 0.92466497 -0.015905 0.99730903 0.92466497 -0.35955399 0.72458702 0.92466497 -0.632276
		 0.38093799 0.92466497 -0.807374 0 0.92466497 -0.86770803 -0.38093799 0.92466497 -0.807374
		 -0.72458702 0.92466497 -0.63227499 -0.99730903 0.92466497 -0.35955399 -1.17240703 0.92466497 -0.015905
		 -1.232741 0.92466497 0.365033 -1.17240703 0.92466497 0.74597102 -0.99730903 0.92466497 1.089619994
		 -0.72458702 0.92466497 1.362342 -0.38093799 0.92466497 1.53743994 0 0.92466497 1.59777498
		 0.38093799 0.92466497 1.53743994 0.72458702 0.92466497 1.362342 0.99730802 0.92466497 1.089619994
		 1.17240596 0.92466497 0.74597102 1.232741 0.92466497 0.365033 0 -1.091449022 0.365033
		 0.96545702 1.50694704 0.051337 0.82126701 1.50694704 -0.23165201 0.59668499 1.50694704 -0.45623401
		 0.313696 1.50694704 -0.60042399 0 1.50694704 -0.65010899 -0.313696 1.50694704 -0.60042399
		 -0.59668499 1.50694704 -0.45623401 -0.82126701 1.50694704 -0.23165201 -0.96545702 1.50694704 0.051337
		 -1.015141964 1.50694704 0.365033 -0.96545702 1.50694704 0.678729 -0.82126701 1.50694704 0.96171802
		 -0.59668499 1.50694704 1.18630004 -0.313696 1.50694704 1.33048999 0 1.50694704 1.38017499
		 0.313696 1.50694704 1.33048999 0.59668499 1.50694704 1.18630004 0.82126701 1.50694704 0.96171802
		 0.96545702 1.50694704 0.678729 1.01514101 1.50694704 0.365033 0.95399499 1.87539899 0.055061001
		 0.811517 1.87539899 -0.22456799 0.58960199 1.87539899 -0.446484 0.30997199 1.87539899 -0.58896202
		 0 1.87539899 -0.63805699 -0.30997199 1.87539899 -0.58896202 -0.58960199 1.87539899 -0.446484
		 -0.811517 1.87539899 -0.22456799 -0.95399499 1.87539899 0.055061001 -1.003090024 1.87539899 0.365033
		 -0.95399499 1.87539899 0.67500502 -0.811517 1.87539899 0.95463502 -0.58960199 1.87539899 1.17655003
		 -0.30997199 1.87539899 1.31902802 0 1.87539899 1.36812305 0.30997199 1.87539899 1.31902802
		 0.58960098 1.87539899 1.17655003 0.811517 1.87539899 0.95463502 0.95399499 1.87539899 0.67500502
		 1.003090024 1.87539899 0.365033 0.73699999 2.30284905 0.125567 0.62692899 2.30284905 -0.090457998
		 0 2.30284905 0.365033 0.45549101 2.30284905 -0.26189601 0.239466 2.30284905 -0.371966
		 0 2.30284905 -0.40989399 -0.239466 2.30284905 -0.371966 -0.45549101 2.30284905 -0.26189601
		 -0.62692899 2.30284905 -0.090457 -0.73699999 2.30284905 0.125568 -0.77492702 2.30284905 0.365033
		 -0.73699999 2.30284905 0.60449898 -0.62692899 2.30284905 0.82052398 -0.45549101 2.30284905 0.99196202
		 -0.239466 2.30284905 1.10203302 0 2.30284905 1.13996005 0.239465 2.30284905 1.10203302
		 0.45549101 2.30284905 0.99196202 0.62692899 2.30284905 0.82052398 0.73699898 2.30284905 0.60449898
		 0.77492702 2.30284905 0.365033;
	setAttr -s 220 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 21 0 21 20 0 20 0 0 1 2 0 2 22 0 22 21 0 2 3 0
		 3 23 0 23 22 0 3 4 0 4 24 0 24 23 0 4 5 0 5 25 0 25 24 0 5 6 0 6 26 0 26 25 0 6 7 0
		 7 27 0 27 26 0 7 8 0 8 28 0 28 27 0 8 9 0 9 29 0 29 28 0 9 10 0 10 30 0 30 29 0 10 11 0
		 11 31 0 31 30 0 11 12 0 12 32 0 32 31 0 12 13 0 13 33 0 33 32 0 13 14 0 14 34 0 34 33 0
		 14 15 0 15 35 0 35 34 0 15 16 0 16 36 0 36 35 0 16 17 0 17 37 0 37 36 0 17 18 0 18 38 0
		 38 37 0 18 19 0 19 39 0 39 38 0 19 0 0 20 39 0 0 40 0 40 1 0 40 2 0 40 3 0 40 4 0
		 40 5 0 40 6 0 40 7 0 40 8 0 40 9 0 40 10 0 40 11 0 40 12 0 40 13 0 40 14 0 40 15 0
		 40 16 0 40 17 0 40 18 0 40 19 0 81 82 0 82 83 0 83 81 0 82 84 0 84 83 0 84 85 0 85 83 0
		 85 86 0 86 83 0 86 87 0 87 83 0 87 88 0 88 83 0 88 89 0 89 83 0 89 90 0 90 83 0 90 91 0
		 91 83 0 91 92 0 92 83 0 92 93 0 93 83 0 93 94 0 94 83 0 94 95 0 95 83 0 95 96 0 96 83 0
		 96 97 0 97 83 0 97 98 0 98 83 0 98 99 0 99 83 0 99 100 0 100 83 0 100 101 0 101 83 0
		 101 81 0 21 42 0 42 41 0 41 20 0 22 43 0 43 42 0 23 44 0 44 43 0 24 45 0 45 44 0
		 25 46 0 46 45 0 26 47 0 47 46 0 27 48 0 48 47 0 28 49 0 49 48 0 29 50 0 50 49 0 30 51 0
		 51 50 0 31 52 0 52 51 0 32 53 0 53 52 0 33 54 0 54 53 0 34 55 0 55 54 0 35 56 0 56 55 0
		 36 57 0 57 56 0 37 58 0 58 57 0 38 59 0 59 58 0 39 60 0 60 59 0 41 60 0 42 62 0 62 61 0
		 61 41 0 43 63 0 63 62 0 44 64 0;
	setAttr ".ed[166:219]" 64 63 0 45 65 0 65 64 0 46 66 0 66 65 0 47 67 0 67 66 0
		 48 68 0 68 67 0 49 69 0 69 68 0 50 70 0 70 69 0 51 71 0 71 70 0 52 72 0 72 71 0 53 73 0
		 73 72 0 54 74 0 74 73 0 55 75 0 75 74 0 56 76 0 76 75 0 57 77 0 77 76 0 58 78 0 78 77 0
		 59 79 0 79 78 0 60 80 0 80 79 0 61 80 0 62 82 0 81 61 0 63 84 0 64 85 0 65 86 0 66 87 0
		 67 88 0 68 89 0 69 90 0 70 91 0 71 92 0 72 93 0 73 94 0 74 95 0 75 96 0 76 97 0 77 98 0
		 78 99 0 79 100 0 80 101 0;
	setAttr -s 120 -ch 440 ".fc[0:119]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 6 8 9 7
		f 4 13 14 15 -12
		mu 0 4 8 10 11 9
		f 4 16 17 18 -15
		mu 0 4 10 12 13 11
		f 4 19 20 21 -18
		mu 0 4 12 14 15 13
		f 4 22 23 24 -21
		mu 0 4 14 16 17 15
		f 4 25 26 27 -24
		mu 0 4 16 18 19 17
		f 4 28 29 30 -27
		mu 0 4 18 20 21 19
		f 4 31 32 33 -30
		mu 0 4 20 22 23 21
		f 4 34 35 36 -33
		mu 0 4 22 24 25 23
		f 4 37 38 39 -36
		mu 0 4 24 26 27 25
		f 4 40 41 42 -39
		mu 0 4 28 29 30 31
		f 4 43 44 45 -42
		mu 0 4 29 32 33 30
		f 4 46 47 48 -45
		mu 0 4 32 34 35 33
		f 4 49 50 51 -48
		mu 0 4 34 36 37 35
		f 4 52 53 54 -51
		mu 0 4 36 38 39 37
		f 4 55 56 57 -54
		mu 0 4 38 40 41 39
		f 4 58 -4 59 -57
		mu 0 4 40 0 3 41
		f 3 -1 60 61
		mu 0 3 42 43 44
		f 3 -5 -62 62
		mu 0 3 45 42 44
		f 3 -8 -63 63
		mu 0 3 46 45 44
		f 3 -11 -64 64
		mu 0 3 47 46 44
		f 3 -14 -65 65
		mu 0 3 48 47 44
		f 3 -17 -66 66
		mu 0 3 49 48 44
		f 3 -20 -67 67
		mu 0 3 50 49 44
		f 3 -23 -68 68
		mu 0 3 51 50 44
		f 3 -26 -69 69
		mu 0 3 52 51 44
		f 3 -29 -70 70
		mu 0 3 53 52 44
		f 3 -32 -71 71
		mu 0 3 54 53 44
		f 3 -35 -72 72
		mu 0 3 55 54 44
		f 3 -38 -73 73
		mu 0 3 56 55 44
		f 3 -41 -74 74
		mu 0 3 57 56 44
		f 3 -44 -75 75
		mu 0 3 58 57 44
		f 3 -47 -76 76
		mu 0 3 59 58 44
		f 3 -50 -77 77
		mu 0 3 60 59 44
		f 3 -53 -78 78
		mu 0 3 61 60 44
		f 3 -56 -79 79
		mu 0 3 62 61 44
		f 3 -59 -80 -61
		mu 0 3 43 62 44
		f 3 80 81 82
		mu 0 3 63 64 65
		f 3 83 84 -82
		mu 0 3 64 66 65
		f 3 85 86 -85
		mu 0 3 66 67 65
		f 3 87 88 -87
		mu 0 3 67 68 65
		f 3 89 90 -89
		mu 0 3 68 69 65
		f 3 91 92 -91
		mu 0 3 69 70 65
		f 3 93 94 -93
		mu 0 3 70 71 65
		f 3 95 96 -95
		mu 0 3 71 72 65
		f 3 97 98 -97
		mu 0 3 72 73 65
		f 3 99 100 -99
		mu 0 3 73 74 65
		f 3 101 102 -101
		mu 0 3 74 75 65
		f 3 103 104 -103
		mu 0 3 75 76 65
		f 3 105 106 -105
		mu 0 3 76 77 65
		f 3 107 108 -107
		mu 0 3 77 78 65
		f 3 109 110 -109
		mu 0 3 78 79 65
		f 3 111 112 -111
		mu 0 3 79 80 65
		f 3 113 114 -113
		mu 0 3 80 81 65
		f 3 115 116 -115
		mu 0 3 81 82 65
		f 3 117 118 -117
		mu 0 3 82 83 65
		f 3 119 -83 -119
		mu 0 3 83 63 65
		f 4 -3 120 121 122
		mu 0 4 3 2 84 85
		f 4 -7 123 124 -121
		mu 0 4 2 5 86 84
		f 4 -10 125 126 -124
		mu 0 4 5 7 87 86
		f 4 -13 127 128 -126
		mu 0 4 7 9 88 87
		f 4 -16 129 130 -128
		mu 0 4 9 11 89 88
		f 4 -19 131 132 -130
		mu 0 4 11 13 90 89
		f 4 -22 133 134 -132
		mu 0 4 13 15 91 90
		f 4 -25 135 136 -134
		mu 0 4 15 17 92 91
		f 4 -28 137 138 -136
		mu 0 4 17 19 93 92
		f 4 -31 139 140 -138
		mu 0 4 19 21 94 93
		f 4 -34 141 142 -140
		mu 0 4 21 23 95 94
		f 4 -37 143 144 -142
		mu 0 4 23 25 96 95
		f 4 -40 145 146 -144
		mu 0 4 25 27 97 96
		f 4 -43 147 148 -146
		mu 0 4 31 30 98 99
		f 4 -46 149 150 -148
		mu 0 4 30 33 100 98
		f 4 -49 151 152 -150
		mu 0 4 33 35 101 100
		f 4 -52 153 154 -152
		mu 0 4 35 37 102 101
		f 4 -55 155 156 -154
		mu 0 4 37 39 103 102
		f 4 -58 157 158 -156
		mu 0 4 39 41 104 103
		f 4 -60 -123 159 -158
		mu 0 4 41 3 85 104
		f 4 -122 160 161 162
		mu 0 4 85 84 105 106
		f 4 -125 163 164 -161
		mu 0 4 84 86 107 105
		f 4 -127 165 166 -164
		mu 0 4 86 87 108 107
		f 4 -129 167 168 -166
		mu 0 4 87 88 109 108
		f 4 -131 169 170 -168
		mu 0 4 88 89 110 109
		f 4 -133 171 172 -170
		mu 0 4 89 90 111 110
		f 4 -135 173 174 -172
		mu 0 4 90 91 112 111
		f 4 -137 175 176 -174
		mu 0 4 91 92 113 112
		f 4 -139 177 178 -176
		mu 0 4 92 93 114 113
		f 4 -141 179 180 -178
		mu 0 4 93 94 115 114
		f 4 -143 181 182 -180
		mu 0 4 94 95 116 115
		f 4 -145 183 184 -182
		mu 0 4 95 96 117 116
		f 4 -147 185 186 -184
		mu 0 4 96 97 118 117
		f 4 -149 187 188 -186
		mu 0 4 99 98 119 120
		f 4 -151 189 190 -188
		mu 0 4 98 100 121 119
		f 4 -153 191 192 -190
		mu 0 4 100 101 122 121
		f 4 -155 193 194 -192
		mu 0 4 101 102 123 122
		f 4 -157 195 196 -194
		mu 0 4 102 103 124 123
		f 4 -159 197 198 -196
		mu 0 4 103 104 125 124
		f 4 -160 -163 199 -198
		mu 0 4 104 85 106 125
		f 4 -162 200 -81 201
		mu 0 4 106 105 126 127
		f 4 -165 202 -84 -201
		mu 0 4 105 107 128 126
		f 4 -167 203 -86 -203
		mu 0 4 107 108 129 128
		f 4 -169 204 -88 -204
		mu 0 4 108 109 130 129
		f 4 -171 205 -90 -205
		mu 0 4 109 110 131 130
		f 4 -173 206 -92 -206
		mu 0 4 110 111 132 131
		f 4 -175 207 -94 -207
		mu 0 4 111 112 133 132
		f 4 -177 208 -96 -208
		mu 0 4 112 113 134 133
		f 4 -179 209 -98 -209
		mu 0 4 113 114 135 134
		f 4 -181 210 -100 -210
		mu 0 4 114 115 136 135
		f 4 -183 211 -102 -211
		mu 0 4 115 116 137 136
		f 4 -185 212 -104 -212
		mu 0 4 116 117 138 137
		f 4 -187 213 -106 -213
		mu 0 4 117 118 139 138
		f 4 -189 214 -108 -214
		mu 0 4 120 119 140 141
		f 4 -191 215 -110 -215
		mu 0 4 119 121 142 140
		f 4 -193 216 -112 -216
		mu 0 4 121 122 143 142
		f 4 -195 217 -114 -217
		mu 0 4 122 123 144 143
		f 4 -197 218 -116 -218
		mu 0 4 123 124 145 144
		f 4 -199 219 -118 -219
		mu 0 4 124 125 146 145
		f 4 -200 -202 -120 -220
		mu 0 4 125 106 127 146;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
createNode transform -n "polySurface3" -p "vine_unwrapped_headus:Mesh";
	setAttr ".rp" -type "double3" 0.073430508375167847 6.885498046875 1.2051034867763519 ;
	setAttr ".sp" -type "double3" 0.073430508375167847 6.885498046875 1.2051034867763519 ;
createNode mesh -n "polySurfaceShape4" -p "polySurface3";
	setAttr -k off ".v";
	setAttr ".iog[0].og[0].gcl" -type "componentList" 1 "f[0:17]";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.46476054667598632 0.55565736960797096 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 22 ".uvst[0].uvsp[0:21]" -type "float2" 0.46550506 0.50966978
		 0.49797699 0.51587713 0.48526141 0.55292809 0.46481317 0.54879093 0.52615893 0.53177482
		 0.50348783 0.56404924 0.54870325 0.55326009 0.51834875 0.58070189 0.38081786 0.55029374
		 0.40410727 0.52961826 0.42562336 0.56267297 0.41018429 0.57879072 0.43283319 0.51472592
		 0.44423112 0.55220312 0.47393095 0.58244514 0.46425822 0.58029056 0.48222861 0.58823305
		 0.48774227 0.59700996 0.44601795 0.58759129 0.44019794 0.59616816 0.45451474 0.58210158
		 0.46388012 0.60164493;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 19 ".vt[0:18]"  0.30745399 6.38145018 1.11080098 0.17309099 6.59194517 0.83107001
		 -0.155421 6.76843691 0.87033898 -0.34956899 6.73443508 1.18934 -0.215206 6.52393913 1.46907198
		 0.113306 6.34744692 1.42980194 0.45541799 6.80834818 1.29990304 0.353699 6.96770191 1.08813405
		 0.105001 7.10131502 1.11786199 -0.041978002 7.075572014 1.35936105 0.059741002 6.9162178 1.57113004
		 0.30843899 6.78260612 1.54140103 0.49643001 7.17343092 1.45308304 0.44915599 7.24749088 1.35466301
		 0.33357301 7.309587 1.36847997 0.265264 7.29762411 1.48071694 0.312538 7.22356415 1.57913697
		 0.428121 7.16146708 1.56532001 0.49237099 7.42354918 1.55481601;
	setAttr -s 36 ".ed[0:35]"  0 1 0 1 7 0 7 6 0 6 0 0 1 2 0 2 8 0 8 7 0
		 2 3 0 3 9 0 9 8 0 3 4 0 4 10 0 10 9 0 4 5 0 5 11 0 11 10 0 5 0 0 6 11 0 7 13 0 13 12 0
		 12 6 0 8 14 0 14 13 0 9 15 0 15 14 0 10 16 0 16 15 0 11 17 0 17 16 0 12 17 0 13 18 0
		 18 12 0 14 18 0 15 18 0 16 18 0 17 18 0;
	setAttr -s 18 -ch 66 ".fc[0:17]" -type "polyFaces" 
		f 4 0 1 2 3
		mu 0 4 0 1 2 3
		f 4 4 5 6 -2
		mu 0 4 1 4 5 2
		f 4 7 8 9 -6
		mu 0 4 4 6 7 5
		f 4 10 11 12 -9
		mu 0 4 8 9 10 11
		f 4 13 14 15 -12
		mu 0 4 9 12 13 10
		f 4 16 -4 17 -15
		mu 0 4 12 0 3 13
		f 4 -3 18 19 20
		mu 0 4 3 2 14 15
		f 4 -7 21 22 -19
		mu 0 4 2 5 16 14
		f 4 -10 23 24 -22
		mu 0 4 5 7 17 16
		f 4 -13 25 26 -24
		mu 0 4 11 10 18 19
		f 4 -16 27 28 -26
		mu 0 4 10 13 20 18
		f 4 -18 -21 29 -28
		mu 0 4 13 3 15 20
		f 3 -20 30 31
		mu 0 3 15 14 21
		f 3 -23 32 -31
		mu 0 3 14 16 21
		f 3 -25 33 -33
		mu 0 3 16 17 21
		f 3 -27 34 -34
		mu 0 3 19 18 21
		f 3 -29 35 -35
		mu 0 3 18 20 21
		f 3 -30 -32 -36
		mu 0 3 20 15 21;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
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
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 240 ".ktv[0:239]"  1 1 2 1.0007425894867685 3 1.0029428838799577
		 4 1.0065596732518545 5 1.0115517445910642 6 1.0178778907597366 7 1.0254968965442512
		 8 1.0343675600769833 9 1.0444486579672629 10 1.0556989854406411 11 1.0680773410678623
		 12 1.0815424964404659 13 1.0960532600801236 14 1.1115683890812751 15 1.1280467171172743
		 16 1.1454470119371438 17 1.1637280360143742 18 1.182848630935617 19 1.2027675604048174
		 20 1.2234435835578177 21 1.2448355488334231 22 1.2669022164210735 23 1.2896023426495342
		 24 1.3128947817486214 25 1.3367382564409391 26 1.3610916594102376 27 1.385913640619141
		 28 1.4111630584453561 29 1.436798776158221 30 1.4627794363829107 31 1.4890639013427136
		 32 1.5156110367376929 33 1.5423794799778596 34 1.569328096070941 35 1.5964157520865823
		 36 1.6236010823419167 37 1.650842953567967 38 1.6781002331428181 39 1.7053315544130105
		 40 1.7324957847717206 41 1.759551790844329 42 1.7864582071290702 43 1.8131739006201308
		 44 1.8396577361290443 45 1.8658683514280252 46 1.8917646120511267 47 1.9173053799348925
		 48 1.9424492982478037 49 1.9671553000210933 50 1.9913819646112945 51 2.0150883585263344
		 52 2.0382331307874848 53 2.0607749432704718 54 2.0826728432015478 55 2.1038854888891056
		 56 2.1243715543257125 57 2.1440900632113715 58 2.1629996852638849 59 2.1810591087149449
		 60 2.1982273294937347 61 2.2144630308497515 62 2.2297249173760978 63 2.2439719529865663
		 64 2.2571628365846346 65 2.269256291247101 66 2.2802112446277953 67 2.2899864134064627
		 68 2.2985405412658828 69 2.3058325153553509 70 2.3118210722531645 71 2.3164649783703721
		 72 2.3197230761071621 73 2.3215541240626694 74 2.3220191950210913 75 2.3232369981543943
		 76 2.3260464024035383 77 2.330423980591076 78 2.3363463852395543 79 2.3437901980778992
		 80 2.3527319660128838 81 2.3631483938002602 82 2.3750160368515285 83 2.388311417362619
		 84 2.4030112899126159 85 2.4190921848005309 86 2.4365306007163867 87 2.4553033396527271
		 88 2.4753869080010102 89 2.4967577821502913 90 2.5193928090966975 91 2.5432684725290722
		 92 2.5683612277404371 93 2.5946479643206315 94 2.6221051444608201 95 2.6507092035629292
		 96 2.6804370714006347 97 2.7112650103695959 98 2.7431701612914847 99 2.776128396412811
		 100 2.8101166774541628 101 2.8451120132882042 102 2.881090205433265 103 2.918028251375667
		 104 2.9559031925406467 105 2.9946907645381011 106 3.0343679982102127 107 3.0749119651249166
		 108 3.1162983398034241 109 3.1585041840339052 110 3.2015065971171186 111 3.2452811973053386
		 112 3.2898050749228487 113 3.3350553545933574 114 3.3810076031199499 115 3.427638936953147
		 116 3.4749265036297374 117 3.5228458233233608 118 3.5713740362009059 119 3.6204883103023633
		 120 3.670164123991678 121 3.7203786387422291 122 3.7711090406873393 123 3.8223307712010044
		 124 3.8740210106532218 125 3.9261569608607703 126 3.9787140310274456 127 4.0316694180099883
		 128 4.0850003368987613 129 4.1386821695471046 130 4.192692126888633 131 4.2470074348774158
		 132 4.3016034528360887 133 4.356457403365261 134 4.4115465208728395 135 4.4668461469705001
		 136 4.5223335135159761 137 4.577985860961137 138 4.6337785180264444 139 4.689688723416884
		 140 4.7456937212184114 141 4.8017688320800263 142 4.8578912991440877 143 4.9140383677207691
		 144 4.9701853552073496 145 5.0263095067736936 146 5.0823880665443131 147 5.1383963534845192
		 148 5.1943116123818047 149 5.250111083765149 150 5.3057700929876397 151 5.3612658820445267
		 152 5.4165756854593816 153 5.4716748397928168 154 5.5265405818379634 155 5.5811501377031139
		 156 5.6354788599761534 157 5.6895039778382204 158 5.7432027065724522 159 5.7965504196137552
		 160 5.8495243361214015 161 5.9021016581435006 162 5.954257784781726 163 6.0059699227636099
		 164 6.0572152584923629 165 6.1079692215561714 166 6.1582090038409536 167 6.2079117736951455
		 168 6.2570529960131944 169 6.3056098454295348 170 6.3535594698279514 171 6.4008773742289016
		 172 6.4475407136054574 173 6.4935266129668854 174 6.5388106222793958 175 6.583369874444827
		 176 6.6271814691880522 177 6.6702210062407818 178 6.7042995357213471 179 6.721972123854874
		 180 6.7396447119884009 181 6.7573173001219269 182 6.7749898882554538 183 6.7926624763889807
		 184 6.8103350645225076 185 6.8280076526560336 186 6.8456802407895605 187 6.8633528289230874
		 188 6.8810254170566134 189 6.8986980051901403 190 6.9163705933236672 191 6.9340431814571932
		 192 6.9517157695907201 193 6.969388357724247 194 6.9870609458577739 195 7.0047335339912999
		 196 7.0224061221248268 197 7.0400787102583537 198 7.0577512983918806 199 7.0754238865254067
		 200 7.0930964746589336 201 7.1107690627924605 202 7.1284416509259865 203 7.1461142390595143
		 204 7.1637868271930403 205 7.1814594153265663 206 7.1991320034600941 207 7.2168045915936201
		 208 7.234477179727147 209 7.2521497678606739 210 7.2698223559941999 211 7.2874949441277268
		 212 7.3051675322612537 213 7.3228401203947797 214 7.3405127085283066 215 7.3581852966618335
		 216 7.3758578847953604 217 7.3935304729288864 218 7.4112030610624133 219 7.4288756491959402
		 220 7.4465482373294662 221 7.4642208254629931 222 7.48189341359652 223 7.4995660017300469
		 224 7.5172385898635738 225 7.5349111779970999 226 7.5525837661306268 227 7.5702563542641537
		 228 7.5879289423976797 229 7.6056015305312066 230 7.6232741186647335 231 7.6409467067982604
		 232 7.6586192949317864 233 7.6762918830653133 234 7.6939644711988402 235 7.7116370593323662
		 236 7.7293096474658931 237 7.74698223559942 238 7.764654823732946 239 7.7823274118664738
		 240 7.8;
createNode displayLayer -n "vine_layer";
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
		+ "                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n"
		+ "                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n"
		+ "                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n"
		+ "                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n"
		+ "                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n"
		+ "                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n                $editorName;;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -ignoreAssets 1\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -island 0\n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -syncedSelection 1\n                -extendToShapes 1\n"
		+ "                $editorName;;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n"
		+ "                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n"
		+ "                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n"
		+ "                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n"
		+ "                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n"
		+ "\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 20 100 -ps 2 80 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -showShapes 0\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 1\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    $editorName\"\n"
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
		 0 1.3973895019778386 0.46378998686861089 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.7011732e-007 1.9531947 0.46378973 ;
	setAttr ".rs" 61678;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.2327411548867526 1.9531947437334396 -0.7689515082527667 ;
	setAttr ".cbx" -type "double3" 1.2327408146521277 1.9531947437334396 1.696530971638051 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 21 ".tk";
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
		 0 1.3973895019778386 0.46378998686861089 1;
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
		 0 1.3973895019778386 0.46378998686861089 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -1.2758798e-007 3.2539678 0.46378991 ;
	setAttr ".rs" 53741;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.0030899280366581 3.2539678532677261 -0.5393001963440156 ;
	setAttr ".cbx" -type "double3" 1.0030896728606893 3.2539678532677261 1.4668799999639248 ;
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
createNode groupId -n "groupId3";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	setAttr ".ihi" 0;
createNode transferAttributes -n "transferAttributes1";
	setAttr ".uvs" 2;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak2";
	setAttr -s 21 ".vl[0].vt";
	setAttr ".vl[0].vt[0]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".vl[0].vt[1]" -type "float3" 0 -0.54346502 1.4901161e-008 ;
	setAttr ".vl[0].vt[2]" -type "float3" 7.4505806e-009 -0.54346502 0 ;
	setAttr ".vl[0].vt[3]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".vl[0].vt[4]" -type "float3" -1.7763568e-015 -0.54346502 0 ;
	setAttr ".vl[0].vt[5]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".vl[0].vt[6]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".vl[0].vt[7]" -type "float3" 0 -0.54346502 7.4505806e-009 ;
	setAttr ".vl[0].vt[8]" -type "float3" 0 -0.54346502 3.7252901e-009 ;
	setAttr ".vl[0].vt[9]" -type "float3" -1.4901161e-008 -0.54346502 3.5527137e-015 ;
	setAttr ".vl[0].vt[10]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".vl[0].vt[11]" -type "float3" 0 -0.54346502 -7.4505806e-009 ;
	setAttr ".vl[0].vt[12]" -type "float3" 7.4505806e-009 -0.54346502 0 ;
	setAttr ".vl[0].vt[13]" -type "float3" 7.4505806e-009 -0.54346502 0 ;
	setAttr ".vl[0].vt[14]" -type "float3" 0 -0.54346502 1.4901161e-008 ;
	setAttr ".vl[0].vt[15]" -type "float3" 3.7252903e-009 -0.54346502 0 ;
	setAttr ".vl[0].vt[16]" -type "float3" 0 -0.54346502 0 ;
	setAttr ".vl[0].vt[17]" -type "float3" -1.4901161e-008 -0.54346502 7.4505806e-009 ;
	setAttr ".vl[0].vt[18]" -type "float3" 0 -0.54346502 -3.7252903e-009 ;
	setAttr ".vl[0].vt[19]" -type "float3" 1.4901161e-008 -0.54346502 3.5527137e-015 ;
	setAttr ".vl[0].vt[40]" -type "float3" -1.7763568e-015 -0.54346502 3.5527137e-015 ;
createNode objectSet -n "set1";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId8";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts6";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId9";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes2";
	setAttr ".uvs" 2;
	setAttr ".spa" 1;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set2";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts8";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes3";
	setAttr ".uvs" 2;
	setAttr ".spa" 3;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId11";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes4";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts10";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes5";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId13";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts11";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes6";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak3";
createNode objectSet -n "set6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId14";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts12";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet3";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId15";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts13";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes7";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak4";
createNode objectSet -n "set7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId16";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts14";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId17";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts15";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes8";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak5";
createNode objectSet -n "set8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId18";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts16";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet5";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId19";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts17";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes9";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak6";
createNode objectSet -n "set9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId20";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts18";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet6";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId21";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts19";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes10";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId22";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts20";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes11";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak7";
createNode objectSet -n "set11";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId23";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet7";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId24";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts22";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes12";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set12";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId25";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts23";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes13";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak8";
createNode objectSet -n "set13";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId26";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts24";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId27";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts25";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes14";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak9";
createNode objectSet -n "set14";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId28";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts26";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet9";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId29";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts27";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes15";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak10";
createNode objectSet -n "set15";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId30";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts28";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet10";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId31";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts29";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes16";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak11";
createNode objectSet -n "set16";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId32";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts30";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet11";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId33";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts31";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes17";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak12";
createNode objectSet -n "set17";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId34";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts32";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet12";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId35";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts33";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes18";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode tweak -n "tweak13";
createNode objectSet -n "set18";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId36";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts34";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode objectSet -n "tweakSet13";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId37";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts35";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes19";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set19";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId38";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts36";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId48";
	setAttr ".ihi" 0;
createNode transferAttributes -n "transferAttributes20";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set20";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId49";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts37";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes21";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set21";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId50";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts38";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes22";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set22";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId51";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts39";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes23";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set23";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId52";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts40";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes24";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set24";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId53";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts41";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes25";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set25";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId54";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts42";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes26";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set26";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId55";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts43";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes27";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set27";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId56";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts44";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes28";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set28";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId57";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts45";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes29";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set29";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId58";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts46";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes30";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set30";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId59";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts47";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes31";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set31";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId60";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts48";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes32";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set32";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId61";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts49";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode transferAttributes -n "transferAttributes33";
	setAttr ".uvs" 2;
	setAttr ".spa" 4;
	setAttr ".sus" -type "string" "map1";
	setAttr ".tus" -type "string" "map1";
createNode objectSet -n "set33";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId62";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts50";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "vtx[*]";
createNode groupId -n "groupId47";
	setAttr ".ihi" 0;
createNode groupId -n "groupId46";
	setAttr ".ihi" 0;
select -ne :time1;
	setAttr ".o" 186;
	setAttr ".unw" 186;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 18 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 5 ".gn";
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
connectAttr "groupId34.id" "pSphereShape11.iog.og[0].gid";
connectAttr "set17.mwc" "pSphereShape11.iog.og[0].gco";
connectAttr "groupId35.id" "pSphereShape11.iog.og[1].gid";
connectAttr "tweakSet12.mwc" "pSphereShape11.iog.og[1].gco";
connectAttr "groupId62.id" "pSphereShape11.iog.og[2].gid";
connectAttr "set33.mwc" "pSphereShape11.iog.og[2].gco";
connectAttr "transferAttributes33.og[0]" "pSphereShape11.i";
connectAttr "tweak12.vl[0].vt[0]" "pSphereShape11.twl";
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
connectAttr "groupId32.id" "pSphereShape10.iog.og[0].gid";
connectAttr "set16.mwc" "pSphereShape10.iog.og[0].gco";
connectAttr "groupId33.id" "pSphereShape10.iog.og[1].gid";
connectAttr "tweakSet11.mwc" "pSphereShape10.iog.og[1].gco";
connectAttr "groupId61.id" "pSphereShape10.iog.og[2].gid";
connectAttr "set32.mwc" "pSphereShape10.iog.og[2].gco";
connectAttr "transferAttributes32.og[0]" "pSphereShape10.i";
connectAttr "tweak11.vl[0].vt[0]" "pSphereShape10.twl";
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
connectAttr "groupId30.id" "pSphereShape9.iog.og[0].gid";
connectAttr "set15.mwc" "pSphereShape9.iog.og[0].gco";
connectAttr "groupId31.id" "pSphereShape9.iog.og[1].gid";
connectAttr "tweakSet10.mwc" "pSphereShape9.iog.og[1].gco";
connectAttr "groupId60.id" "pSphereShape9.iog.og[2].gid";
connectAttr "set31.mwc" "pSphereShape9.iog.og[2].gco";
connectAttr "transferAttributes31.og[0]" "pSphereShape9.i";
connectAttr "tweak10.vl[0].vt[0]" "pSphereShape9.twl";
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
connectAttr "groupId36.id" "pSphereShape8.iog.og[0].gid";
connectAttr "set18.mwc" "pSphereShape8.iog.og[0].gco";
connectAttr "groupId37.id" "pSphereShape8.iog.og[1].gid";
connectAttr "tweakSet13.mwc" "pSphereShape8.iog.og[1].gco";
connectAttr "groupId38.id" "pSphereShape8.iog.og[2].gid";
connectAttr "set19.mwc" "pSphereShape8.iog.og[2].gco";
connectAttr "groupId59.id" "pSphereShape8.iog.og[3].gid";
connectAttr "set30.mwc" "pSphereShape8.iog.og[3].gco";
connectAttr "transferAttributes30.og[0]" "pSphereShape8.i";
connectAttr "tweak13.vl[0].vt[0]" "pSphereShape8.twl";
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
connectAttr "groupId28.id" "pSphereShape7.iog.og[0].gid";
connectAttr "set14.mwc" "pSphereShape7.iog.og[0].gco";
connectAttr "groupId29.id" "pSphereShape7.iog.og[1].gid";
connectAttr "tweakSet9.mwc" "pSphereShape7.iog.og[1].gco";
connectAttr "groupId58.id" "pSphereShape7.iog.og[2].gid";
connectAttr "set29.mwc" "pSphereShape7.iog.og[2].gco";
connectAttr "transferAttributes29.og[0]" "pSphereShape7.i";
connectAttr "tweak9.vl[0].vt[0]" "pSphereShape7.twl";
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
connectAttr "groupId26.id" "pSphereShape6.iog.og[0].gid";
connectAttr "set13.mwc" "pSphereShape6.iog.og[0].gco";
connectAttr "groupId27.id" "pSphereShape6.iog.og[1].gid";
connectAttr "tweakSet8.mwc" "pSphereShape6.iog.og[1].gco";
connectAttr "groupId57.id" "pSphereShape6.iog.og[2].gid";
connectAttr "set28.mwc" "pSphereShape6.iog.og[2].gco";
connectAttr "transferAttributes28.og[0]" "pSphereShape6.i";
connectAttr "tweak8.vl[0].vt[0]" "pSphereShape6.twl";
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
connectAttr "groupId23.id" "pSphereShape5.iog.og[0].gid";
connectAttr "set11.mwc" "pSphereShape5.iog.og[0].gco";
connectAttr "groupId24.id" "pSphereShape5.iog.og[1].gid";
connectAttr "tweakSet7.mwc" "pSphereShape5.iog.og[1].gco";
connectAttr "groupId25.id" "pSphereShape5.iog.og[2].gid";
connectAttr "set12.mwc" "pSphereShape5.iog.og[2].gco";
connectAttr "groupId56.id" "pSphereShape5.iog.og[3].gid";
connectAttr "set27.mwc" "pSphereShape5.iog.og[3].gco";
connectAttr "transferAttributes27.og[0]" "pSphereShape5.i";
connectAttr "tweak7.vl[0].vt[0]" "pSphereShape5.twl";
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
connectAttr "groupId18.id" "pSphereShape4.iog.og[0].gid";
connectAttr "set8.mwc" "pSphereShape4.iog.og[0].gco";
connectAttr "groupId19.id" "pSphereShape4.iog.og[1].gid";
connectAttr "tweakSet5.mwc" "pSphereShape4.iog.og[1].gco";
connectAttr "groupId22.id" "pSphereShape4.iog.og[2].gid";
connectAttr "set10.mwc" "pSphereShape4.iog.og[2].gco";
connectAttr "groupId55.id" "pSphereShape4.iog.og[3].gid";
connectAttr "set26.mwc" "pSphereShape4.iog.og[3].gco";
connectAttr "transferAttributes26.og[0]" "pSphereShape4.i";
connectAttr "tweak5.vl[0].vt[0]" "pSphereShape4.twl";
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
connectAttr "groupId20.id" "pSphereShape3.iog.og[0].gid";
connectAttr "set9.mwc" "pSphereShape3.iog.og[0].gco";
connectAttr "groupId21.id" "pSphereShape3.iog.og[1].gid";
connectAttr "tweakSet6.mwc" "pSphereShape3.iog.og[1].gco";
connectAttr "groupId54.id" "pSphereShape3.iog.og[2].gid";
connectAttr "set25.mwc" "pSphereShape3.iog.og[2].gco";
connectAttr "transferAttributes25.og[0]" "pSphereShape3.i";
connectAttr "tweak6.vl[0].vt[0]" "pSphereShape3.twl";
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
connectAttr "groupId16.id" "pSphereShape2.iog.og[0].gid";
connectAttr "set7.mwc" "pSphereShape2.iog.og[0].gco";
connectAttr "groupId17.id" "pSphereShape2.iog.og[1].gid";
connectAttr "tweakSet4.mwc" "pSphereShape2.iog.og[1].gco";
connectAttr "groupId53.id" "pSphereShape2.iog.og[2].gid";
connectAttr "set24.mwc" "pSphereShape2.iog.og[2].gco";
connectAttr "transferAttributes24.og[0]" "pSphereShape2.i";
connectAttr "tweak4.vl[0].vt[0]" "pSphereShape2.twl";
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
connectAttr "groupId14.id" "pSphereShape1.iog.og[0].gid";
connectAttr "set6.mwc" "pSphereShape1.iog.og[0].gco";
connectAttr "groupId15.id" "pSphereShape1.iog.og[1].gid";
connectAttr "tweakSet3.mwc" "pSphereShape1.iog.og[1].gco";
connectAttr "groupId52.id" "pSphereShape1.iog.og[2].gid";
connectAttr "set23.mwc" "pSphereShape1.iog.og[2].gco";
connectAttr "transferAttributes23.og[0]" "pSphereShape1.i";
connectAttr "tweak3.vl[0].vt[0]" "pSphereShape1.twl";
connectAttr "groupId8.id" "pCylinderShape1.iog.og[0].gid";
connectAttr "set1.mwc" "pCylinderShape1.iog.og[0].gco";
connectAttr "groupId9.id" "pCylinderShape1.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "pCylinderShape1.iog.og[1].gco";
connectAttr "groupId10.id" "pCylinderShape1.iog.og[2].gid";
connectAttr "set2.mwc" "pCylinderShape1.iog.og[2].gco";
connectAttr "groupId11.id" "pCylinderShape1.iog.og[3].gid";
connectAttr "set3.mwc" "pCylinderShape1.iog.og[3].gco";
connectAttr "groupId12.id" "pCylinderShape1.iog.og[4].gid";
connectAttr "set4.mwc" "pCylinderShape1.iog.og[4].gco";
connectAttr "groupId49.id" "pCylinderShape1.iog.og[5].gid";
connectAttr "set20.mwc" "pCylinderShape1.iog.og[5].gco";
connectAttr "groupId50.id" "pCylinderShape1.iog.og[6].gid";
connectAttr "set21.mwc" "pCylinderShape1.iog.og[6].gco";
connectAttr "tweak2.og[0]" "pCylinderShape1.i";
connectAttr "tweak2.vl[0].vt[0]" "pCylinderShape1.twl";
connectAttr "polySoftEdge1.out" "pCylinderShape1Orig.i";
connectAttr "placement_ctrl_Grow.o" "placement_ctrl.Grow";
connectAttr "placement_ctrl.Grow" "vine_geo.sy";
connectAttr "vine_layer.di" "vine_geo.do";
connectAttr "wire1GroupId.id" "vine_geoShape.iog.og[0].gid";
connectAttr "wire1Set.mwc" "vine_geoShape.iog.og[0].gco";
connectAttr "groupId2.id" "vine_geoShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "vine_geoShape.iog.og[1].gco";
connectAttr "groupId13.id" "vine_geoShape.iog.og[2].gid";
connectAttr "set5.mwc" "vine_geoShape.iog.og[2].gco";
connectAttr "groupId51.id" "vine_geoShape.iog.og[3].gid";
connectAttr "set22.mwc" "vine_geoShape.iog.og[3].gco";
connectAttr "wire1.og[0]" "vine_geoShape.i";
connectAttr "tweak1.vl[0].vt[0]" "vine_geoShape.twl";
connectAttr "groupId3.id" "vine_unwrapped:MeshShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "vine_unwrapped:MeshShape.iog.og[0].gco";
connectAttr "groupId4.id" "vine_unwrapped:MeshShape.ciog.cog[0].cgid";
connectAttr "groupId46.id" "polySurfaceShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape2.iog.og[0].gco";
connectAttr "groupId47.id" "polySurfaceShape3.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape3.iog.og[0].gco";
connectAttr "groupId48.id" "polySurfaceShape4.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "polySurfaceShape4.iog.og[0].gco";
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
connectAttr "transferAttributes5.og[0]" "groupParts2.ig";
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
connectAttr "groupParts6.og" "transferAttributes1.ip[0].ig";
connectAttr "groupId8.id" "transferAttributes1.ip[0].gi";
connectAttr "groupParts7.og" "tweak2.ip[0].ig";
connectAttr "groupId9.id" "tweak2.ip[0].gi";
connectAttr "groupId8.msg" "set1.gn" -na;
connectAttr "pCylinderShape1.iog.og[0]" "set1.dsm" -na;
connectAttr "transferAttributes1.msg" "set1.ub[0]";
connectAttr "transferAttributes3.og[0]" "groupParts6.ig";
connectAttr "groupId8.id" "groupParts6.gi";
connectAttr "groupId9.msg" "tweakSet2.gn" -na;
connectAttr "pCylinderShape1.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "transferAttributes1.og[0]" "groupParts7.ig";
connectAttr "groupId9.id" "groupParts7.gi";
connectAttr "groupParts8.og" "transferAttributes2.ip[0].ig";
connectAttr "groupId10.id" "transferAttributes2.ip[0].gi";
connectAttr "groupId10.msg" "set2.gn" -na;
connectAttr "pCylinderShape1.iog.og[2]" "set2.dsm" -na;
connectAttr "transferAttributes2.msg" "set2.ub[0]";
connectAttr "transferAttributes4.og[0]" "groupParts8.ig";
connectAttr "groupId10.id" "groupParts8.gi";
connectAttr "groupParts9.og" "transferAttributes3.ip[0].ig";
connectAttr "groupId11.id" "transferAttributes3.ip[0].gi";
connectAttr "groupId11.msg" "set3.gn" -na;
connectAttr "pCylinderShape1.iog.og[3]" "set3.dsm" -na;
connectAttr "transferAttributes3.msg" "set3.ub[0]";
connectAttr "transferAttributes2.og[0]" "groupParts9.ig";
connectAttr "groupId11.id" "groupParts9.gi";
connectAttr "groupParts10.og" "transferAttributes4.ip[0].ig";
connectAttr "groupId12.id" "transferAttributes4.ip[0].gi";
connectAttr "groupId12.msg" "set4.gn" -na;
connectAttr "pCylinderShape1.iog.og[4]" "set4.dsm" -na;
connectAttr "transferAttributes4.msg" "set4.ub[0]";
connectAttr "transferAttributes20.og[0]" "groupParts10.ig";
connectAttr "groupId12.id" "groupParts10.gi";
connectAttr "groupParts11.og" "transferAttributes5.ip[0].ig";
connectAttr "groupId13.id" "transferAttributes5.ip[0].gi";
connectAttr "groupId13.msg" "set5.gn" -na;
connectAttr "vine_geoShape.iog.og[2]" "set5.dsm" -na;
connectAttr "transferAttributes5.msg" "set5.ub[0]";
connectAttr "transferAttributes22.og[0]" "groupParts11.ig";
connectAttr "groupId13.id" "groupParts11.gi";
connectAttr "groupParts12.og" "transferAttributes6.ip[0].ig";
connectAttr "groupId14.id" "transferAttributes6.ip[0].gi";
connectAttr "groupParts13.og" "tweak3.ip[0].ig";
connectAttr "groupId15.id" "tweak3.ip[0].gi";
connectAttr "groupId14.msg" "set6.gn" -na;
connectAttr "pSphereShape1.iog.og[0]" "set6.dsm" -na;
connectAttr "transferAttributes6.msg" "set6.ub[0]";
connectAttr "tweak3.og[0]" "groupParts12.ig";
connectAttr "groupId14.id" "groupParts12.gi";
connectAttr "groupId15.msg" "tweakSet3.gn" -na;
connectAttr "pSphereShape1.iog.og[1]" "tweakSet3.dsm" -na;
connectAttr "tweak3.msg" "tweakSet3.ub[0]";
connectAttr "pSphereShape1Orig.w" "groupParts13.ig";
connectAttr "groupId15.id" "groupParts13.gi";
connectAttr "groupParts14.og" "transferAttributes7.ip[0].ig";
connectAttr "groupId16.id" "transferAttributes7.ip[0].gi";
connectAttr "groupParts15.og" "tweak4.ip[0].ig";
connectAttr "groupId17.id" "tweak4.ip[0].gi";
connectAttr "groupId16.msg" "set7.gn" -na;
connectAttr "pSphereShape2.iog.og[0]" "set7.dsm" -na;
connectAttr "transferAttributes7.msg" "set7.ub[0]";
connectAttr "tweak4.og[0]" "groupParts14.ig";
connectAttr "groupId16.id" "groupParts14.gi";
connectAttr "groupId17.msg" "tweakSet4.gn" -na;
connectAttr "pSphereShape2.iog.og[1]" "tweakSet4.dsm" -na;
connectAttr "tweak4.msg" "tweakSet4.ub[0]";
connectAttr "pSphereShape2Orig.w" "groupParts15.ig";
connectAttr "groupId17.id" "groupParts15.gi";
connectAttr "groupParts16.og" "transferAttributes8.ip[0].ig";
connectAttr "groupId18.id" "transferAttributes8.ip[0].gi";
connectAttr "groupParts17.og" "tweak5.ip[0].ig";
connectAttr "groupId19.id" "tweak5.ip[0].gi";
connectAttr "groupId18.msg" "set8.gn" -na;
connectAttr "pSphereShape4.iog.og[0]" "set8.dsm" -na;
connectAttr "transferAttributes8.msg" "set8.ub[0]";
connectAttr "tweak5.og[0]" "groupParts16.ig";
connectAttr "groupId18.id" "groupParts16.gi";
connectAttr "groupId19.msg" "tweakSet5.gn" -na;
connectAttr "pSphereShape4.iog.og[1]" "tweakSet5.dsm" -na;
connectAttr "tweak5.msg" "tweakSet5.ub[0]";
connectAttr "pSphereShape4Orig.w" "groupParts17.ig";
connectAttr "groupId19.id" "groupParts17.gi";
connectAttr "groupParts18.og" "transferAttributes9.ip[0].ig";
connectAttr "groupId20.id" "transferAttributes9.ip[0].gi";
connectAttr "groupParts19.og" "tweak6.ip[0].ig";
connectAttr "groupId21.id" "tweak6.ip[0].gi";
connectAttr "groupId20.msg" "set9.gn" -na;
connectAttr "pSphereShape3.iog.og[0]" "set9.dsm" -na;
connectAttr "transferAttributes9.msg" "set9.ub[0]";
connectAttr "tweak6.og[0]" "groupParts18.ig";
connectAttr "groupId20.id" "groupParts18.gi";
connectAttr "groupId21.msg" "tweakSet6.gn" -na;
connectAttr "pSphereShape3.iog.og[1]" "tweakSet6.dsm" -na;
connectAttr "tweak6.msg" "tweakSet6.ub[0]";
connectAttr "pSphereShape3Orig.w" "groupParts19.ig";
connectAttr "groupId21.id" "groupParts19.gi";
connectAttr "groupParts20.og" "transferAttributes10.ip[0].ig";
connectAttr "groupId22.id" "transferAttributes10.ip[0].gi";
connectAttr "groupId22.msg" "set10.gn" -na;
connectAttr "pSphereShape4.iog.og[2]" "set10.dsm" -na;
connectAttr "transferAttributes10.msg" "set10.ub[0]";
connectAttr "transferAttributes8.og[0]" "groupParts20.ig";
connectAttr "groupId22.id" "groupParts20.gi";
connectAttr "groupParts21.og" "transferAttributes11.ip[0].ig";
connectAttr "groupId23.id" "transferAttributes11.ip[0].gi";
connectAttr "groupParts22.og" "tweak7.ip[0].ig";
connectAttr "groupId24.id" "tweak7.ip[0].gi";
connectAttr "groupId23.msg" "set11.gn" -na;
connectAttr "pSphereShape5.iog.og[0]" "set11.dsm" -na;
connectAttr "transferAttributes11.msg" "set11.ub[0]";
connectAttr "tweak7.og[0]" "groupParts21.ig";
connectAttr "groupId23.id" "groupParts21.gi";
connectAttr "groupId24.msg" "tweakSet7.gn" -na;
connectAttr "pSphereShape5.iog.og[1]" "tweakSet7.dsm" -na;
connectAttr "tweak7.msg" "tweakSet7.ub[0]";
connectAttr "pSphereShape5Orig.w" "groupParts22.ig";
connectAttr "groupId24.id" "groupParts22.gi";
connectAttr "groupParts23.og" "transferAttributes12.ip[0].ig";
connectAttr "groupId25.id" "transferAttributes12.ip[0].gi";
connectAttr "groupId25.msg" "set12.gn" -na;
connectAttr "pSphereShape5.iog.og[2]" "set12.dsm" -na;
connectAttr "transferAttributes12.msg" "set12.ub[0]";
connectAttr "transferAttributes11.og[0]" "groupParts23.ig";
connectAttr "groupId25.id" "groupParts23.gi";
connectAttr "groupParts24.og" "transferAttributes13.ip[0].ig";
connectAttr "groupId26.id" "transferAttributes13.ip[0].gi";
connectAttr "groupParts25.og" "tweak8.ip[0].ig";
connectAttr "groupId27.id" "tweak8.ip[0].gi";
connectAttr "groupId26.msg" "set13.gn" -na;
connectAttr "pSphereShape6.iog.og[0]" "set13.dsm" -na;
connectAttr "transferAttributes13.msg" "set13.ub[0]";
connectAttr "tweak8.og[0]" "groupParts24.ig";
connectAttr "groupId26.id" "groupParts24.gi";
connectAttr "groupId27.msg" "tweakSet8.gn" -na;
connectAttr "pSphereShape6.iog.og[1]" "tweakSet8.dsm" -na;
connectAttr "tweak8.msg" "tweakSet8.ub[0]";
connectAttr "pSphereShape6Orig.w" "groupParts25.ig";
connectAttr "groupId27.id" "groupParts25.gi";
connectAttr "groupParts26.og" "transferAttributes14.ip[0].ig";
connectAttr "groupId28.id" "transferAttributes14.ip[0].gi";
connectAttr "groupParts27.og" "tweak9.ip[0].ig";
connectAttr "groupId29.id" "tweak9.ip[0].gi";
connectAttr "groupId28.msg" "set14.gn" -na;
connectAttr "pSphereShape7.iog.og[0]" "set14.dsm" -na;
connectAttr "transferAttributes14.msg" "set14.ub[0]";
connectAttr "tweak9.og[0]" "groupParts26.ig";
connectAttr "groupId28.id" "groupParts26.gi";
connectAttr "groupId29.msg" "tweakSet9.gn" -na;
connectAttr "pSphereShape7.iog.og[1]" "tweakSet9.dsm" -na;
connectAttr "tweak9.msg" "tweakSet9.ub[0]";
connectAttr "pSphereShape7Orig.w" "groupParts27.ig";
connectAttr "groupId29.id" "groupParts27.gi";
connectAttr "groupParts28.og" "transferAttributes15.ip[0].ig";
connectAttr "groupId30.id" "transferAttributes15.ip[0].gi";
connectAttr "groupParts29.og" "tweak10.ip[0].ig";
connectAttr "groupId31.id" "tweak10.ip[0].gi";
connectAttr "groupId30.msg" "set15.gn" -na;
connectAttr "pSphereShape9.iog.og[0]" "set15.dsm" -na;
connectAttr "transferAttributes15.msg" "set15.ub[0]";
connectAttr "tweak10.og[0]" "groupParts28.ig";
connectAttr "groupId30.id" "groupParts28.gi";
connectAttr "groupId31.msg" "tweakSet10.gn" -na;
connectAttr "pSphereShape9.iog.og[1]" "tweakSet10.dsm" -na;
connectAttr "tweak10.msg" "tweakSet10.ub[0]";
connectAttr "pSphereShape9Orig.w" "groupParts29.ig";
connectAttr "groupId31.id" "groupParts29.gi";
connectAttr "groupParts30.og" "transferAttributes16.ip[0].ig";
connectAttr "groupId32.id" "transferAttributes16.ip[0].gi";
connectAttr "groupParts31.og" "tweak11.ip[0].ig";
connectAttr "groupId33.id" "tweak11.ip[0].gi";
connectAttr "groupId32.msg" "set16.gn" -na;
connectAttr "pSphereShape10.iog.og[0]" "set16.dsm" -na;
connectAttr "transferAttributes16.msg" "set16.ub[0]";
connectAttr "tweak11.og[0]" "groupParts30.ig";
connectAttr "groupId32.id" "groupParts30.gi";
connectAttr "groupId33.msg" "tweakSet11.gn" -na;
connectAttr "pSphereShape10.iog.og[1]" "tweakSet11.dsm" -na;
connectAttr "tweak11.msg" "tweakSet11.ub[0]";
connectAttr "pSphereShape10Orig.w" "groupParts31.ig";
connectAttr "groupId33.id" "groupParts31.gi";
connectAttr "groupParts32.og" "transferAttributes17.ip[0].ig";
connectAttr "groupId34.id" "transferAttributes17.ip[0].gi";
connectAttr "groupParts33.og" "tweak12.ip[0].ig";
connectAttr "groupId35.id" "tweak12.ip[0].gi";
connectAttr "groupId34.msg" "set17.gn" -na;
connectAttr "pSphereShape11.iog.og[0]" "set17.dsm" -na;
connectAttr "transferAttributes17.msg" "set17.ub[0]";
connectAttr "tweak12.og[0]" "groupParts32.ig";
connectAttr "groupId34.id" "groupParts32.gi";
connectAttr "groupId35.msg" "tweakSet12.gn" -na;
connectAttr "pSphereShape11.iog.og[1]" "tweakSet12.dsm" -na;
connectAttr "tweak12.msg" "tweakSet12.ub[0]";
connectAttr "pSphereShape11Orig.w" "groupParts33.ig";
connectAttr "groupId35.id" "groupParts33.gi";
connectAttr "groupParts34.og" "transferAttributes18.ip[0].ig";
connectAttr "groupId36.id" "transferAttributes18.ip[0].gi";
connectAttr "groupParts35.og" "tweak13.ip[0].ig";
connectAttr "groupId37.id" "tweak13.ip[0].gi";
connectAttr "groupId36.msg" "set18.gn" -na;
connectAttr "pSphereShape8.iog.og[0]" "set18.dsm" -na;
connectAttr "transferAttributes18.msg" "set18.ub[0]";
connectAttr "tweak13.og[0]" "groupParts34.ig";
connectAttr "groupId36.id" "groupParts34.gi";
connectAttr "groupId37.msg" "tweakSet13.gn" -na;
connectAttr "pSphereShape8.iog.og[1]" "tweakSet13.dsm" -na;
connectAttr "tweak13.msg" "tweakSet13.ub[0]";
connectAttr "pSphereShape8Orig.w" "groupParts35.ig";
connectAttr "groupId37.id" "groupParts35.gi";
connectAttr "groupParts36.og" "transferAttributes19.ip[0].ig";
connectAttr "groupId38.id" "transferAttributes19.ip[0].gi";
connectAttr "groupId38.msg" "set19.gn" -na;
connectAttr "pSphereShape8.iog.og[2]" "set19.dsm" -na;
connectAttr "transferAttributes19.msg" "set19.ub[0]";
connectAttr "transferAttributes18.og[0]" "groupParts36.ig";
connectAttr "groupId38.id" "groupParts36.gi";
connectAttr "groupParts37.og" "transferAttributes20.ip[0].ig";
connectAttr "groupId49.id" "transferAttributes20.ip[0].gi";
connectAttr "polySurfaceShape3.w" "transferAttributes20.src[0]";
connectAttr "groupId49.msg" "set20.gn" -na;
connectAttr "pCylinderShape1.iog.og[5]" "set20.dsm" -na;
connectAttr "transferAttributes20.msg" "set20.ub[0]";
connectAttr "transferAttributes21.og[0]" "groupParts37.ig";
connectAttr "groupId49.id" "groupParts37.gi";
connectAttr "groupParts38.og" "transferAttributes21.ip[0].ig";
connectAttr "groupId50.id" "transferAttributes21.ip[0].gi";
connectAttr "polySurfaceShape3.w" "transferAttributes21.src[0]";
connectAttr "groupId50.msg" "set21.gn" -na;
connectAttr "pCylinderShape1.iog.og[6]" "set21.dsm" -na;
connectAttr "transferAttributes21.msg" "set21.ub[0]";
connectAttr "pCylinderShape1Orig.w" "groupParts38.ig";
connectAttr "groupId50.id" "groupParts38.gi";
connectAttr "groupParts39.og" "transferAttributes22.ip[0].ig";
connectAttr "groupId51.id" "transferAttributes22.ip[0].gi";
connectAttr "polySurfaceShape2.w" "transferAttributes22.src[0]";
connectAttr "groupId51.msg" "set22.gn" -na;
connectAttr "vine_geoShape.iog.og[3]" "set22.dsm" -na;
connectAttr "transferAttributes22.msg" "set22.ub[0]";
connectAttr "vine_geoShapeOrig.w" "groupParts39.ig";
connectAttr "groupId51.id" "groupParts39.gi";
connectAttr "groupParts40.og" "transferAttributes23.ip[0].ig";
connectAttr "groupId52.id" "transferAttributes23.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes23.src[0]";
connectAttr "groupId52.msg" "set23.gn" -na;
connectAttr "pSphereShape1.iog.og[2]" "set23.dsm" -na;
connectAttr "transferAttributes23.msg" "set23.ub[0]";
connectAttr "transferAttributes6.og[0]" "groupParts40.ig";
connectAttr "groupId52.id" "groupParts40.gi";
connectAttr "groupParts41.og" "transferAttributes24.ip[0].ig";
connectAttr "groupId53.id" "transferAttributes24.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes24.src[0]";
connectAttr "groupId53.msg" "set24.gn" -na;
connectAttr "pSphereShape2.iog.og[2]" "set24.dsm" -na;
connectAttr "transferAttributes24.msg" "set24.ub[0]";
connectAttr "transferAttributes7.og[0]" "groupParts41.ig";
connectAttr "groupId53.id" "groupParts41.gi";
connectAttr "groupParts42.og" "transferAttributes25.ip[0].ig";
connectAttr "groupId54.id" "transferAttributes25.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes25.src[0]";
connectAttr "groupId54.msg" "set25.gn" -na;
connectAttr "pSphereShape3.iog.og[2]" "set25.dsm" -na;
connectAttr "transferAttributes25.msg" "set25.ub[0]";
connectAttr "transferAttributes9.og[0]" "groupParts42.ig";
connectAttr "groupId54.id" "groupParts42.gi";
connectAttr "groupParts43.og" "transferAttributes26.ip[0].ig";
connectAttr "groupId55.id" "transferAttributes26.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes26.src[0]";
connectAttr "groupId55.msg" "set26.gn" -na;
connectAttr "pSphereShape4.iog.og[3]" "set26.dsm" -na;
connectAttr "transferAttributes26.msg" "set26.ub[0]";
connectAttr "transferAttributes10.og[0]" "groupParts43.ig";
connectAttr "groupId55.id" "groupParts43.gi";
connectAttr "groupParts44.og" "transferAttributes27.ip[0].ig";
connectAttr "groupId56.id" "transferAttributes27.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes27.src[0]";
connectAttr "groupId56.msg" "set27.gn" -na;
connectAttr "pSphereShape5.iog.og[3]" "set27.dsm" -na;
connectAttr "transferAttributes27.msg" "set27.ub[0]";
connectAttr "transferAttributes12.og[0]" "groupParts44.ig";
connectAttr "groupId56.id" "groupParts44.gi";
connectAttr "groupParts45.og" "transferAttributes28.ip[0].ig";
connectAttr "groupId57.id" "transferAttributes28.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes28.src[0]";
connectAttr "groupId57.msg" "set28.gn" -na;
connectAttr "pSphereShape6.iog.og[2]" "set28.dsm" -na;
connectAttr "transferAttributes28.msg" "set28.ub[0]";
connectAttr "transferAttributes13.og[0]" "groupParts45.ig";
connectAttr "groupId57.id" "groupParts45.gi";
connectAttr "groupParts46.og" "transferAttributes29.ip[0].ig";
connectAttr "groupId58.id" "transferAttributes29.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes29.src[0]";
connectAttr "groupId58.msg" "set29.gn" -na;
connectAttr "pSphereShape7.iog.og[2]" "set29.dsm" -na;
connectAttr "transferAttributes29.msg" "set29.ub[0]";
connectAttr "transferAttributes14.og[0]" "groupParts46.ig";
connectAttr "groupId58.id" "groupParts46.gi";
connectAttr "groupParts47.og" "transferAttributes30.ip[0].ig";
connectAttr "groupId59.id" "transferAttributes30.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes30.src[0]";
connectAttr "groupId59.msg" "set30.gn" -na;
connectAttr "pSphereShape8.iog.og[3]" "set30.dsm" -na;
connectAttr "transferAttributes30.msg" "set30.ub[0]";
connectAttr "transferAttributes19.og[0]" "groupParts47.ig";
connectAttr "groupId59.id" "groupParts47.gi";
connectAttr "groupParts48.og" "transferAttributes31.ip[0].ig";
connectAttr "groupId60.id" "transferAttributes31.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes31.src[0]";
connectAttr "groupId60.msg" "set31.gn" -na;
connectAttr "pSphereShape9.iog.og[2]" "set31.dsm" -na;
connectAttr "transferAttributes31.msg" "set31.ub[0]";
connectAttr "transferAttributes15.og[0]" "groupParts48.ig";
connectAttr "groupId60.id" "groupParts48.gi";
connectAttr "groupParts49.og" "transferAttributes32.ip[0].ig";
connectAttr "groupId61.id" "transferAttributes32.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes32.src[0]";
connectAttr "groupId61.msg" "set32.gn" -na;
connectAttr "pSphereShape10.iog.og[2]" "set32.dsm" -na;
connectAttr "transferAttributes32.msg" "set32.ub[0]";
connectAttr "transferAttributes16.og[0]" "groupParts49.ig";
connectAttr "groupId61.id" "groupParts49.gi";
connectAttr "groupParts50.og" "transferAttributes33.ip[0].ig";
connectAttr "groupId62.id" "transferAttributes33.ip[0].gi";
connectAttr "polySurfaceShape4.w" "transferAttributes33.src[0]";
connectAttr "groupId62.msg" "set33.gn" -na;
connectAttr "pSphereShape11.iog.og[2]" "set33.dsm" -na;
connectAttr "transferAttributes33.msg" "set33.ub[0]";
connectAttr "transferAttributes17.og[0]" "groupParts50.ig";
connectAttr "groupId62.id" "groupParts50.gi";
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
connectAttr "vine_unwrapped:MeshShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "vine_unwrapped:MeshShape.ciog.cog[0]" ":initialShadingGroup.dsm" -na
		;
connectAttr "polySurfaceShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape3.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "polySurfaceShape4.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId46.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId47.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId48.msg" ":initialShadingGroup.gn" -na;
connectAttr "clamp1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "condition1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr ":perspShape.msg" ":defaultRenderGlobals.sc";
// End of vine_anim_bake_test.ma
