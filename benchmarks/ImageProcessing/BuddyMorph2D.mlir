//===- BuddyMorph2D.mlir ---------------------------------------------------===//
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
//
//===----------------------------------------------------------------------===//
//
// This file provides Buddy Morpholgical operations.
//
//===----------------------------------------------------------------------===//

func.func @erosion_2d_constant_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue: f32)
{
  dip.erosion_2d <CONSTANT_PADDING> %inputImage, %kernel, %outputImage, %copymemref, %centerX, %centerY, %iterations, %constantValue: memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @erosion_2d_replicate_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue : f32)
{
  dip.erosion_2d <REPLICATE_PADDING> %inputImage, %kernel, %outputImage, %copymemref, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @dilation_2d_constant_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue: f32)
{
  dip.dilation_2d <CONSTANT_PADDING> %inputImage,  %kernel, %outputImage, %copymemref, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @dilation_2d_replicate_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue : f32)
{
  dip.dilation_2d <REPLICATE_PADDING> %inputImage, %kernel, %outputImage, %copymemref, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @opening_2d_constant_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue: f32)
{
  dip.opening_2d <CONSTANT_PADDING> %inputImage, %kernel, %outputImage, %outputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @opening_2d_replicate_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue : f32)
{
  dip.opening_2d <REPLICATE_PADDING> %inputImage, %kernel, %outputImage, %outputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @closing_2d_constant_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue: f32)
{
  dip.closing_2d <CONSTANT_PADDING> %inputImage, %kernel, %outputImage, %outputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @closing_2d_replicate_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue : f32)
{
  dip.closing_2d <REPLICATE_PADDING> %inputImage,  %kernel, %outputImage, %outputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>,memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @tophat_2d_constant_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>,%outputImage2 : memref<?x?xf32>, %inputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue: f32)
{
  dip.tophat_2d <CONSTANT_PADDING> %inputImage, %kernel, %outputImage, %outputImage1, %outputImage2, %inputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @tophat_2d_replicate_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>, %outputImage2 : memref<?x?xf32>, %inputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue : f32)
{
  dip.tophat_2d <REPLICATE_PADDING> %inputImage, %kernel, %outputImage, %outputImage1, %outputImage2, %inputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @bottomhat_2d_constant_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>, %outputImage2 : memref<?x?xf32>, %inputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue: f32)
{
  dip.bottomhat_2d <CONSTANT_PADDING> %inputImage, %kernel, %outputImage, %outputImage1, %outputImage2, %inputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @bottomhat_2d_replicate_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>, %outputImage2 : memref<?x?xf32>, %inputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue : f32)
{
  dip.bottomhat_2d <REPLICATE_PADDING> %inputImage, %kernel, %outputImage, %outputImage1, %outputImage2, %inputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}

func.func @morphgrad_2d_constant_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>,%outputImage2 : memref<?x?xf32>, %inputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index,%iterations : index, %constantValue: f32)
{
  dip.morphgrad_2d <CONSTANT_PADDING> %inputImage, %kernel, %outputImage, %outputImage1, %outputImage2,  %inputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index,index, f32
  return
}

func.func @morphgrad_2d_replicate_padding(%inputImage : memref<?x?xf32>, %kernel : memref<?x?xf32>, %outputImage : memref<?x?xf32>, %outputImage1 : memref<?x?xf32>,%outputImage2 : memref<?x?xf32>, %inputImage1 : memref<?x?xf32>, %copymemref : memref<?x?xf32>, %copymemref1 : memref<?x?xf32>, %centerX : index, %centerY : index, %iterations : index, %constantValue : f32)
{
  dip.morphgrad_2d <REPLICATE_PADDING> %inputImage, %kernel, %outputImage, %outputImage1,%outputImage2, %inputImage1, %copymemref, %copymemref1, %centerX, %centerY, %iterations, %constantValue : memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, memref<?x?xf32>, index, index, index, f32
  return
}
