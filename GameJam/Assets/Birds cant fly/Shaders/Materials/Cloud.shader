// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4013,x:34465,y:33306,varname:node_4013,prsc:2|diff-4194-OUT,emission-4194-OUT,alpha-7349-OUT,voffset-6001-OUT;n:type:ShaderForge.SFN_Color,id:1304,x:33913,y:33146,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_1304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Tex2d,id:3153,x:32364,y:33660,varname:node_3153,prsc:2,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-966-OUT,TEX-7088-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:7088,x:32094,y:33801,ptovrint:False,ptlb:cloud,ptin:_cloud,varname:node_7088,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:6001,x:33088,y:33751,varname:node_6001,prsc:2|A-3153-R,B-2038-OUT,C-7654-OUT;n:type:ShaderForge.SFN_NormalVector,id:7654,x:32601,y:33980,prsc:2,pt:False;n:type:ShaderForge.SFN_ValueProperty,id:2038,x:32582,y:33848,ptovrint:False,ptlb:strength,ptin:_strength,varname:node_2038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_DepthBlend,id:4746,x:33597,y:33497,varname:node_4746,prsc:2|DIST-3600-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3600,x:33436,y:33497,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_3600,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Blend,id:7349,x:33763,y:33497,varname:node_7349,prsc:2,blmd:14,clmp:True|SRC-4746-OUT,DST-3153-R;n:type:ShaderForge.SFN_Lerp,id:4194,x:34212,y:33288,varname:node_4194,prsc:2|A-1304-RGB,B-3153-R,T-2959-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:5679,x:31129,y:33764,varname:node_5679,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1620,x:31475,y:33764,varname:node_1620,prsc:2|A-5495-OUT,B-6651-OUT;n:type:ShaderForge.SFN_Append,id:5495,x:31293,y:33764,varname:node_5495,prsc:2|A-5679-X,B-5679-Z;n:type:ShaderForge.SFN_ValueProperty,id:6651,x:31293,y:33903,ptovrint:False,ptlb:Scale,ptin:_Scale,varname:node_6651,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.1;n:type:ShaderForge.SFN_ValueProperty,id:2959,x:33984,y:33380,ptovrint:False,ptlb:FogColourAmount,ptin:_FogColourAmount,varname:node_2959,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:8577,x:31293,y:33973,varname:node_8577,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3234,x:31475,y:33973,varname:node_3234,prsc:2|A-8577-T,B-8319-OUT,C-6257-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8319,x:31293,y:34127,ptovrint:False,ptlb:pan speed,ptin:_panspeed,varname:node_8319,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:966,x:31660,y:33764,varname:node_966,prsc:2|A-1620-OUT,B-3234-OUT;n:type:ShaderForge.SFN_Vector2,id:6257,x:31293,y:34187,varname:node_6257,prsc:2,v1:0,v2:1;proporder:1304-7088-2038-3600-6651-2959-8319;pass:END;sub:END;*/

Shader "Shader Forge/Cloud" {
    Properties {
        _Color ("Color", Color) = (1,1,1,1)
        _cloud ("cloud", 2D) = "white" {}
        _strength ("strength", Float ) = 1
        _Depth ("Depth", Float ) = 0
        _Scale ("Scale", Float ) = 0.1
        _FogColourAmount ("FogColourAmount", Float ) = 0
        _panspeed ("pan speed", Float ) = 1
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
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _Color;
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _strength;
            uniform float _Depth;
            uniform float _Scale;
            uniform float _FogColourAmount;
            uniform float _panspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8577 = _Time;
                float2 node_966 = ((float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)*_Scale)+(node_8577.g*_panspeed*float2(0,1)));
                float4 node_3153 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_966, _cloud),0.0,0));
                v.vertex.xyz += (node_3153.r*_strength*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
////// Emissive:
                float4 node_8577 = _Time;
                float2 node_966 = ((float2(i.posWorld.r,i.posWorld.b)*_Scale)+(node_8577.g*_panspeed*float2(0,1)));
                float4 node_3153 = tex2D(_cloud,TRANSFORM_TEX(node_966, _cloud));
                float3 node_4194 = lerp(_Color.rgb,float3(node_3153.r,node_3153.r,node_3153.r),_FogColourAmount);
                float3 emissive = node_4194;
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,saturate(( saturate((sceneZ-partZ)/_Depth) > 0.5 ? (node_3153.r + 2.0*saturate((sceneZ-partZ)/_Depth) -1.0) : (node_3153.r + 2.0*(saturate((sceneZ-partZ)/_Depth)-0.5)))));
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
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 2.0
            uniform sampler2D _cloud; uniform float4 _cloud_ST;
            uniform float _strength;
            uniform float _Scale;
            uniform float _panspeed;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 node_8577 = _Time;
                float2 node_966 = ((float2(mul(unity_ObjectToWorld, v.vertex).r,mul(unity_ObjectToWorld, v.vertex).b)*_Scale)+(node_8577.g*_panspeed*float2(0,1)));
                float4 node_3153 = tex2Dlod(_cloud,float4(TRANSFORM_TEX(node_966, _cloud),0.0,0));
                v.vertex.xyz += (node_3153.r*_strength*v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
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
