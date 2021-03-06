﻿//***********************************************
//* (C) ColorfulSoft, 2019. Все права защищены.
//***********************************************

//-> Определение для слоя Conv2DLayer.

using System;
using System.Threading.Tasks;

namespace NeuralArt
{

     ///<summary>Предоставляет реализацию слоёв нейросети.</summary>
     public static partial class Layers
     {

         ///<summary>Реализует слой двумерной свёртки.</summary>
        ///<param name="input">Входной тензор.</param>
        ///<param name="Filters">Фильтры.</param>
        public static Tensor Conv2D(Tensor input, Tensor[] Filters, int stride)
        {
            var OutputDepth = Filters.Length;
            var Result = new Tensor(input.Width / stride, input.Height / stride, OutputDepth);
            Parallel.For(0, OutputDepth, (int d) =>
            {
                var f = Filters[d];
                for (int ay = 0; ay < Result.Height; ay++)
                {
                    var y = ay * stride - f.Height / 2;
                    for (int ax = 0; ax < Result.Width; ax++)
                    {
                        var x = ax * stride - f.Width / 2;
                        var a = 0.0f;
                        for (int fy = 0; fy < f.Height; fy++)
                        {
                            var oy = y + fy;
                            for (int fx = 0; fx < f.Width; fx++)
                            {
                                var ox = x + fx;
                                if ((oy >= 0) && (oy < input.Height) && (ox >= 0) && (ox < input.Width))
                                {
                                    var fi = ((f.Width * fy) + fx) * f.Depth;
                                    var ti = ((input.Width * oy) + ox) * input.Depth;
                                    for (var fd = 0; fd < f.Depth; fd++)
                                    {
                                        a += f.W[fi + fd] * input.W[ti + fd];
                                    }
                                }
                            }
                        }
                        Result.Set(ax, ay, d, a);
                    }
                }
            });
            return Result;
        }

     }

}