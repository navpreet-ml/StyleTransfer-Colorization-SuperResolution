MD Release

C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe -target:winexe -optimize -unsafe -out:"Release\Perceptual Losses for Real-Time Style Transfer and Super-Resolution.exe" -r:"System.dll" -r:"System.Drawing.dll" -r:"System.Threading.dll" -r:"System.Threading.Tasks.dll" -r:"System.IO.dll" -r:"System.Windows.Forms.dll" -r:"System.Reflection.dll" -resource:"src\Resources\Content.jpg" -resource:"src\Resources\Models\la_muse.HModel" -resource:"src\Resources\Models\rain_princess.HModel" -resource:"src\Resources\Models\scream.HModel" -resource:"src\Resources\Models\udnie.HModel" -resource:"src\Resources\Models\wave.HModel" -resource:"src\Resources\Models\wreck.HModel" -resource:"src\Resources\Pictures\la_muse.jpg" -resource:"src\Resources\Pictures\rain_princess.jpg" -resource:"src\Resources\Pictures\scream.jpg" -resource:"src\Resources\Pictures\udnie.jpg" -resource:"src\Resources\Pictures\wave.jpg" -resource:"src\Resources\Pictures\wreck.jpg" -resource:"src\Resources\MainIcon.jpg" "src\Data\ResBlockData.cs" "src\Data\TransformerData.cs" "src\Interface\MainForm.cs" "src\Layers\Conv2DLayer.cs" "src\Layers\ConvTranspose2DLayer.cs" "src\Layers\ElementwiseSumLayer.cs" "src\Layers\InstanceNorm2DLayer.cs" "src\Layers\ReLULayer.cs" "src\Layers\ResBlock.cs" "src\Layers\TanhLayer.cs" "src\Network\Transformer.cs" "src\Utils\Half2Float.cs" "src\Utils\IOConverters.cs" "src\Utils\Tensor.cs" "src\Program.cs" "src\Properties.cs"

cmd.exe