// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:34465,y:33306,varname:node_4013,prsc:2|diff-1304-RGB,normal-2999-OUT,alpha-7349-OUT,voffset-6001-OUT,tess-6442-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:33996,y:33050,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5367647,c2:0.5367647,c3:0.5367647,c4:1;n:type:ShaderForge.SFN_Multiply,id:2999,x:34188,y:33452,varname:node_2999,prsc:2|A-5626-OUT,B-7265-OUT;n:type:ShaderForge.SFN_TexCoord,id:1857,x:31471,y:33764,varname:node_1857,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Append,id:1318,x:31854,y:33197,varname:node_1318,prsc:2|A-3504-OUT,B-1047-OUT;n:type:ShaderForge.SFN_Append,id:205,x:31854,y:33340,varname:node_205,prsc:2|A-1047-OUT,B-3504-OUT;n:type:ShaderForge.SFN_Subtract,id:7234,x:32053,y:33197,varname:node_7234,prsc:2|A-7784-UVOUT,B-1318-OUT;n:type:ShaderForge.SFN_Subtract,id:5371,x:32053,y:33340,varname:node_5371,prsc:2|A-7784-UVOUT,B-205-OUT;n:type:ShaderForge.SFN_Slider,id:3504,x:31302,y:33306,ptovrint:False,ptlb:PD Distance Check,ptin:_PDDistanceCheck,varname:node_3504,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5206941,max:1;n:type:ShaderForge.SFN_Vector1,id:1047,x:31641,y:33298,varname:node_1047,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2d,id:7438,x:32364,y:33233,varname:node_7438,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-7234-OUT,TEX-7088-TEX;n:type:ShaderForge.SFN_Tex2d,id:532,x:32364,y:33444,varname:node_532,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-5371-OUT,TEX-7088-TEX;n:type:ShaderForge.SFN_Tex2d,id:3153,x:32364,y:33660,varname:node_3153,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-7784-UVOUT,TEX-7088-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7088,x:32094,y:33801,ptovrint:False,ptlb:cloud,ptin:_cloud,varname:node_7088,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Append,id:5827,x:32640,y:33359,varname:node_5827,prsc:2|A-7438-R,B-532-R;n:type:ShaderForge.SFN_Subtract,id:8232,x:32851,y:33444,varname:node_8232,prsc:2|A-5827-OUT,B-3153-R;n:type:ShaderForge.SFN_Multiply,id:6001,x:33088,y:33751,varname:node_6001,prsc:2|A-3153-R,B-7265-OUT,C-7654-OUT;n:type:ShaderForge.SFN_NormalVector,id:7654,x:32601,y:33980,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:2038,x:32582,y:33848,ptovrint:False,ptlb:strength,ptin:_strength,varname:node_2038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Dot,id:8483,x:33425,y:33501,varname:node_8483,prsc:2,dt:0|A-8477-OUT,B-8477-OUT;n:type:ShaderForge.SFN_OneMinus,id:7884,x:33617,y:33501,varname:node_7884,prsc:2|IN-8483-OUT;n:type:ShaderForge.SFN_Sqrt,id:4927,x:33801,y:33501,varname:node_4927,prsc:2|IN-7884-OUT;n:type:ShaderForge.SFN_Append,id:5626,x:34000,y:33452,varname:node_5626,prsc:2|A-8477-OUT,B-4927-OUT;n:type:ShaderForge.SFN_Multiply,id:9937,x:33092,y:33577,varname:node_9937,prsc:2|A-8232-OUT,B-7265-OUT;n:type:ShaderForge.SFN_ConstantClamp,id:8477,x:33256,y:33577,varname:node_8477,prsc:2,min:-1,max:1|IN-9937-OUT;n:type:ShaderForge.SFN_Slider,id:7265,x:32211,y:33960,ptovrint:False,ptlb:node_7265,ptin:_node_7265,varname:node_7265,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.6442209,max:1;n:type:ShaderForge.SFN_Panner,id:7784,x:31650,y:33764,varname:node_7784,prsc:2,spu:0,spv:0.1|UVIN-1857-UVOUT;n:type:ShaderForge.SFN_Vector1,id:6442,x:34154,y:33775,varname:node_6442,prsc:2,v1:3;n:type:ShaderForge.SFN_DepthBlend,id:4746,x:33523,y:33140,varname:node_4746,prsc:2|DIST-3600-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3600,x:33351,y:33140,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_3600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Blend,id:7349,x:33782,y:33276,varname:node_7349,prsc:2,blmd:14,clmp:True|SRC-4746-OUT,DST-3153-R;proporder:1304-3504-7088-2038-7265-3600;pass:END;sub:END;*/

Shader "Shader Forge/Cloud" {
    Properties {
        _Color ("Color", Color) = (0.5367647,0.5367647,0.5367647,1)
        _PDDistanceCheck ("PD Distance Check", Range(0, 1)) = 0.5206941
        _cloud ("cloud", 2D) = "white" {}
        _strength ("strength", Float ) = 1
        _node_7265 ("node_7265", Range(0, 1)) = 0.6442209
        _Depth ("Depth", Float ) = 0
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Color;
            uniform float _PDDistanceCheck;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _node_7265;
            uniform float _Depth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                UNITY_FOG_COORDS(6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_1768 = _Time;
                float2 node_7784 = (o.uv0+node_1768.g*float2(0,0.1));
                float4 node_3153 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_7784, _cloud),0.0,0));
                v.vertex.xyz += (node_3153.r*_node_7265*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return 3.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_1768 = _Time;
                float2 node_7784 = (i.uv0+node_1768.g*float2(0,0.1));
                float node_1047 = 0.0;
                float2 node_7234 = (node_7784-float2(_PDDistanceCheck,node_1047));
                float4 node_7438 = tex2D(_cloud,TRANSFORM_TEX(node_7234, _cloud));
                float2 node_5371 = (node_7784-float2(node_1047,_PDDistanceCheck));
                float4 node_532 = tex2D(_cloud,TRANSFORM_TEX(node_5371, _cloud));
                float4 node_3153 = tex2D(_cloud,TRANSFORM_TEX(node_7784, _cloud));
                float2 node_8477 = clamp(((float2(node_7438.r,node_532.r)-node_3153.r)*_node_7265),-1,1);
                float3 normalLocal = (float3(node_8477,sqrt((1.0 - dot(node_8477,node_8477))))*_node_7265);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float3 diffuseColor = _Color.rgb;
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                float node_4746 = saturate((sceneZ-partZ)/_Depth);
                fixed4 finalRGBA = fixed4(finalColor,saturate(( node_4746 > 0.5 ? (node_3153.r + 2.0*node_4746 -1.0) : (node_3153.r + 2.0*(node_4746-0.5)))));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            ZWrite Off
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Tessellation.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform float4 _LightColor0;
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Color;
            uniform float _PDDistanceCheck;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _node_7265;
            uniform float _Depth;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                LIGHTING_COORDS(6,7)
                UNITY_FOG_COORDS(8)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                float4 node_4280 = _Time;
                float2 node_7784 = (o.uv0+node_4280.g*float2(0,0.1));
                float4 node_3153 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_7784, _cloud),0.0,0));
                v.vertex.xyz += (node_3153.r*_node_7265*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return 3.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_4280 = _Time;
                float2 node_7784 = (i.uv0+node_4280.g*float2(0,0.1));
                float node_1047 = 0.0;
                float2 node_7234 = (node_7784-float2(_PDDistanceCheck,node_1047));
                float4 node_7438 = tex2D(_cloud,TRANSFORM_TEX(node_7234, _cloud));
                float2 node_5371 = (node_7784-float2(node_1047,_PDDistanceCheck));
                float4 node_532 = tex2D(_cloud,TRANSFORM_TEX(node_5371, _cloud));
                float4 node_3153 = tex2D(_cloud,TRANSFORM_TEX(node_7784, _cloud));
                float2 node_8477 = clamp(((float2(node_7438.r,node_532.r)-node_3153.r)*_node_7265),-1,1);
                float3 normalLocal = (float3(node_8477,sqrt((1.0 - dot(node_8477,node_8477))))*_node_7265);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 diffuseColor = _Color.rgb;
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                float node_4746 = saturate((sceneZ-partZ)/_Depth);
                fixed4 finalRGBA = fixed4(finalColor * saturate(( node_4746 > 0.5 ? (node_3153.r + 2.0*node_4746 -1.0) : (node_3153.r + 2.0*(node_4746-0.5)))),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma hull hull
            #pragma domain domain
            #pragma vertex tessvert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "Tessellation.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 2.0
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _node_7265;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_6519 = _Time;
                float2 node_7784 = (o.uv0+node_6519.g*float2(0,0.1));
                float4 node_3153 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_7784, _cloud),0.0,0));
                v.vertex.xyz += (node_3153.r*_node_7265*v.normal);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            #ifdef UNITY_CAN_COMPILE_TESSELLATION
                struct TessVertex {
                    float4 vertex : INTERNALTESSPOS;
                    float3 normal : NORMAL;
                    float4 tangent : TANGENT;
                    float2 texcoord0 : TEXCOORD0;
                };
                struct OutputPatchConstant {
                    float edge[3]         : SV_TessFactor;
                    float inside          : SV_InsideTessFactor;
                    float3 vTangent[4]    : TANGENT;
                    float2 vUV[4]         : TEXCOORD;
                    float3 vTanUCorner[4] : TANUCORNER;
                    float3 vTanVCorner[4] : TANVCORNER;
                    float4 vCWts          : TANWEIGHTS;
                };
                TessVertex tessvert (VertexInput v) {
                    TessVertex o;
                    o.vertex = v.vertex;
                    o.normal = v.normal;
                    o.tangent = v.tangent;
                    o.texcoord0 = v.texcoord0;
                    return o;
                }
                float Tessellation(TessVertex v){
                    return 3.0;
                }
                float4 Tessellation(TessVertex v, TessVertex v1, TessVertex v2){
                    float tv = Tessellation(v);
                    float tv1 = Tessellation(v1);
                    float tv2 = Tessellation(v2);
                    return float4( tv1+tv2, tv2+tv, tv+tv1, tv+tv1+tv2 ) / float4(2,2,2,3);
                }
                OutputPatchConstant hullconst (InputPatch<TessVertex,3> v) {
                    OutputPatchConstant o = (OutputPatchConstant)0;
                    float4 ts = Tessellation( v[0], v[1], v[2] );
                    o.edge[0] = ts.x;
                    o.edge[1] = ts.y;
                    o.edge[2] = ts.z;
                    o.inside = ts.w;
                    return o;
                }
                [domain("tri")]
                [partitioning("fractional_odd")]
                [outputtopology("triangle_cw")]
                [patchconstantfunc("hullconst")]
                [outputcontrolpoints(3)]
                TessVertex hull (InputPatch<TessVertex,3> v, uint id : SV_OutputControlPointID) {
                    return v[id];
                }
                [domain("tri")]
                VertexOutput domain (OutputPatchConstant tessFactors, const OutputPatch<TessVertex,3> vi, float3 bary : SV_DomainLocation) {
                    VertexInput v = (VertexInput)0;
                    v.vertex = vi[0].vertex*bary.x + vi[1].vertex*bary.y + vi[2].vertex*bary.z;
                    v.normal = vi[0].normal*bary.x + vi[1].normal*bary.y + vi[2].normal*bary.z;
                    v.tangent = vi[0].tangent*bary.x + vi[1].tangent*bary.y + vi[2].tangent*bary.z;
                    v.texcoord0 = vi[0].texcoord0*bary.x + vi[1].texcoord0*bary.y + vi[2].texcoord0*bary.z;
                    VertexOutput o = vert(v);
                    return o;
                }
            #endif
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
