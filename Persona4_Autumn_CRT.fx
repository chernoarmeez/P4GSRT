#include "ReShade.fxh"

/*PARAMETERS*/

/*-------------------------
    Lens Effects
-------------------------*/

uniform bool EnableLens <
    ui_category = "Lens Effects";
    ui_label = "Enable Lens Distortion";
    ui_tooltip = "Turns CRT glass curvature simulation on or off. Higher distortion values bend the image stronger near the edges.";
> = true;


uniform bool EnableChromatic <
    ui_category = "Lens Effects";
    ui_label = "Enable Chromatic Aberration";
    ui_tooltip = "Simulates color separation caused by imperfect lenses. Creates red and blue color shifts near edges.";
> = true;


uniform float Distortion <
    ui_category = "Lens Effects";
    ui_label = "Lens Distortion";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 0.15;
    ui_tooltip = "Controls the amount of CRT glass curvature. Higher values create stronger screen bending.";
> = 0.035;


uniform float Chromatic <
    ui_category = "Lens Effects";
    ui_label = "Chromatic";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 3.0;
    ui_tooltip = "Controls the intensity of RGB color separation.";
> = 0.45;


uniform float CAFalloff <
    ui_category = "Lens Effects";
    ui_label = "CA Edge Concentration";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 4.0;
    ui_step = 0.05;
    ui_tooltip = "Controls where chromatic aberration appears. Higher values concentrate the effect closer to the screen edges.";
> = 0.40;



/*-------------------------
    Color
-------------------------*/

uniform bool EnableColor <
    ui_category = "Color";
    ui_label = "Enable Color Grading";
    ui_tooltip = "Applies warm CRT-inspired color adjustments.";
> = true;


uniform float Warmth <
    ui_category = "Color";
    ui_label = "Warmth";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 1.3;
    ui_tooltip = "Adds warm orange tones to the image.";
> = 0.80;


uniform float Saturation <
    ui_category = "Color";
    ui_label = "Saturation";
    ui_type = "slider";
    ui_min = 0.5;
    ui_max = 1.5;
    ui_tooltip = "Controls color intensity. Higher values make colors stronger.";
> = 1.10;


uniform float Contrast <
    ui_category = "Color";
    ui_label = "Contrast";
    ui_type = "slider";
    ui_min = 0.7;
    ui_max = 1.3;
    ui_tooltip = "Controls the difference between dark and bright areas.";
> = 1.03;



/*-------------------------
    CRT Display
-------------------------*/

uniform bool EnableScanlines <
    ui_category = "CRT Display";
    ui_label = "Enable Scanlines";
    ui_tooltip = "Simulates horizontal CRT scanline gaps.";
> = true;


uniform float ScanlineStrength <
    ui_category = "CRT Display";
    ui_label = "Scanline Strength";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 0.5;
    ui_tooltip = "Controls how dark scanlines become.";
> = 0.18;


uniform float ScanlineDensity <
    ui_category = "CRT Display";
    ui_label = "Scanline Density";
    ui_type = "slider";
    ui_min = 100.0;
    ui_max = 2000.0;
    ui_tooltip = "Controls the number of scanlines. Higher values create thinner, more frequent lines.";
> = 1300.0;


uniform bool EnableMask <
    ui_category = "CRT Display";
    ui_label = "Enable Phosphor Mask";
    ui_tooltip = "Simulates RGB phosphor elements found in CRT displays.";
> = true;


uniform float MaskStrength <
    ui_category = "CRT Display";
    ui_label = "Phosphor Mask Strength";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 0.5;
    ui_tooltip = "Controls how visible the RGB phosphor pattern becomes.";
> = 0.375;


uniform float MaskScale <
    ui_category = "CRT Display";
    ui_label = "Phosphor Mask Scale";
    ui_type = "slider";
    ui_min = 1.0;
    ui_max = 5.0;
    ui_tooltip = "Controls the size of RGB phosphor groups.";
> = 2.9;



/*-------------------------
    Bloom
-------------------------*/

uniform bool EnableBloom <
    ui_category = "Bloom";
    ui_label = "Enable Bloom";
    ui_tooltip = "Adds a soft glow around bright parts of the image.";
> = true;


uniform float BloomStrength <
    ui_category = "Bloom";
    ui_label = "Bloom Strength";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 1.0;
    ui_tooltip = "Controls the intensity of the glow effect.";
> = 0.24;


uniform float BloomThreshold <
    ui_category = "Bloom";
    ui_label = "Bloom Threshold";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 1.0;
    ui_tooltip = "Controls how bright a pixel must be before it starts glowing.";
> = 0.31;


uniform float BloomRadius <
    ui_category = "Bloom";
    ui_label = "Bloom Radius";
    ui_type = "slider";
    ui_min = 1.0;
    ui_max = 20.0;
    ui_tooltip = "Controls the size of the glow spread.";
> = 5.15;



/*-------------------------
    Film
-------------------------*/

uniform bool EnableGrain <
    ui_category = "Film";
    ui_label = "Enable Film Grain";
    ui_tooltip = "Adds animated film-like noise over the image.";
> = true;


uniform float GrainStrength <
    ui_category = "Film";
    ui_label = "Film Grain Strength";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 0.2;
    ui_tooltip = "Controls how visible the film grain is.";
> = 0.095;


uniform float GrainSize <
    ui_category = "Film";
    ui_label = "Film Grain Size";
    ui_type = "slider";
    ui_min = 200.0;
    ui_max = 4000.0;
    ui_tooltip = "Controls the size of individual grain particles.";
> = 2250.0;


uniform float GrainSpeed <
    ui_category = "Film";
    ui_label = "Film Grain Speed";
    ui_type = "slider";
    ui_min = 0.0;
    ui_max = 5.0;
    ui_tooltip = "Controls how quickly the grain animation changes.";
> = 1.2;



/*-------------------------
    Screen Shape
-------------------------*/

uniform bool EnableCorners <
    ui_category = "Screen Shape";
    ui_label = "Enable Rounded Corners";
    ui_tooltip = "Adds rounded CRT monitor screen edges.";
> = true;


uniform float CornerRadius <
    ui_category = "Screen Shape";
    ui_label = "Corner Radius";
    ui_type = "slider";
    ui_min = 0.80;
    ui_max = 1.00;
    ui_tooltip = "Controls how much the corners are rounded.";
> = 0.96    ;


uniform float CornerSoftness <
    ui_category = "Screen Shape";
    ui_label = "Corner Softness";
    ui_type = "slider";
    ui_min = 0.005;
    ui_max = 0.10;
    ui_tooltip = "Controls how smooth the transition into the black corners is.";
> = 0.040;


uniform float Time <
    source = "timer";
    hidden = true;
>;
/*HELPERS*/

float2 DistortUV(float2 uv)
{
    if (!EnableLens)
        return uv;

    float2 p = uv * 2.0 - 1.0;

    float r2 = dot(p,p);

    p *= (1.0 + Distortion * r2);

    return p * 0.5 + 0.5;
}

float3 SampleScene(float2 uv)
{
    return tex2D(ReShade::BackBuffer, uv).rgb;
}


/*EFFECTS*/

float3 ApplyChromatic(float2 uv)
{
    if (!EnableChromatic)
        return SampleScene(uv);

    float2 dir = uv - 0.5;

    float dist = length(dir);

    if (dist > 0.0001)
        dir /= dist;
    else
        dir = float2(0,0);

    float caAmount = pow(dist, CAFalloff);

    float shift = Chromatic * caAmount * 0.01;

    float3 c;

    c.r = SampleScene(uv + dir * shift).r;
    c.g = SampleScene(uv).g;
    c.b = SampleScene(uv - dir * shift).b;

    return c;
}

float3 ApplyColor(float3 color)
{
    // Contrast
    color = (color - 0.5) * Contrast + 0.5;

    // Warm highlights
    color.r += Warmth * 0.05;
    color.g += Warmth * 0.02;
    color.b -= Warmth * 0.03;

    // Saturation
    float luminance = dot(color, float3(0.299,0.587,0.114));

    color = lerp(luminance.xxx, color, Saturation);

    return saturate(color);
}
float3 ApplyFilmGrain(float3 color, float2 uv)
{
    float time = Time * GrainSpeed;


    float scale =
        GrainSize *
        (1.0 + sin(time * 0.7) * 0.05);


    float2 grainUV =
        uv * scale;


    grainUV += float2(
        sin(time * 1.3),
        cos(time * 0.9)
    );


    float noise = frac(
        sin(dot(
            grainUV,
            float2(12.9898,78.233)
        ))
        * 43758.5453
    );


    noise -= 0.5;


    float strength =
        GrainStrength *
        (0.8 + sin(time)*0.2);


    color += noise * strength;


    return color;
}

float3 ApplyScanlines(float3 color, float2 uv)
{
    float line = sin(
        uv.y * ScanlineDensity * 3.14159
    );


float mask = 1.0 -
abs(line) * ScanlineStrength;


    return color * mask;
}

float3 ApplyMask(float3 color, float2 uv)
{
    float stripe = frac(uv.x * BUFFER_WIDTH * MaskScale);


    float3 mask;


    if (stripe < 0.333)
    {
        mask = float3(1.0, 0.85, 0.85);
    }
    else if (stripe < 0.666)
    {
        mask = float3(0.85, 1.0, 0.85);
    }
    else
    {
        mask = float3(0.85, 0.85, 1.0);
    }


    float3 masked =
        color * mask;


    return lerp(
        color,
        masked,
        MaskStrength
    );
}

float3 ApplyBloom(float3 color, float2 uv)
{
    float3 glow = 0;

    float2 px = BUFFER_PIXEL_SIZE;


    glow += SampleScene(
        uv + float2(px.x * BloomRadius,0)
    );

    glow += SampleScene(
        uv - float2(px.x * BloomRadius,0)
    );

    glow += SampleScene(
        uv + float2(0,px.y * BloomRadius)
    );

    glow += SampleScene(
        uv - float2(0,px.y * BloomRadius)
    );


    glow /= 4.0;


    float brightness =
        dot(glow,float3(
            0.299,
            0.587,
            0.114
        ));


    float mask =
        max(brightness - BloomThreshold,0);


    color += glow * mask * BloomStrength;


    return color;
}

float3 ApplyCorners(float3 color, float2 uv)
{
    float2 p = abs(uv * 2.0 - 1.0);

    p = max(p - CornerRadius, 0.0);

    float d = length(p);

    float mask = 1.0 - smoothstep(0.0, CornerSoftness, d);

    return color * mask;
}


/*MAIN*/

float4 PS(float4 pos : SV_Position, float2 uv : TEXCOORD) : SV_Target
{
    float2 dUV = DistortUV(uv);

    if (dUV.x < 0.0 || dUV.x > 1.0 ||
        dUV.y < 0.0 || dUV.y > 1.0)
        return float4(0,0,0,1);

    float3 color;

    color = ApplyChromatic(dUV);

    if (EnableColor)
        color = ApplyColor(color);

    if (EnableBloom)
        color = ApplyBloom(color,dUV);

    if (EnableGrain)
        color = ApplyFilmGrain(color,dUV);

    if (EnableMask)
        color = ApplyMask(color,dUV);

    if (EnableScanlines)
        color = ApplyScanlines(color,dUV);

    if (EnableCorners)
        color = ApplyCorners(color,dUV);

    return float4(color,1);
}


technique Persona4_Autumn_CRT
{
    pass
    {
        VertexShader = PostProcessVS;
        PixelShader = PS;
    }
}
