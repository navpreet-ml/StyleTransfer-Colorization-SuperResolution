MD Release

C:\Windows\Microsoft.NET\Framework\v4.0.30319\csc.exe -target:winexe -optimize -unsafe -out:"Release\Photo-Realistic Single Image Super-Resolution Using a Generative Adversarial Network.exe" -r:"System.dll" -r:"System.Drawing.dll" -r:"System.Threading.dll" -r:"System.Threading.Tasks.dll" -r:"System.IO.dll" -r:"System.Windows.Forms.dll" -r:"System.Reflection.dll" -resource:"src\Resources\MainIcon.jpg" -resource:"src\Resources\Original.jpg" -resource:"src\Resources\SRGAN.hmodel" "src\Data\ResidualBlockData.cs" "src\Data\SRGAN_Data.cs" "src\Interface\MainForm.cs" "src\Layers\BatchNormLayer.cs" "src\Layers\Conv2DLayer.cs" "src\Layers\ElementwiseLayer.cs" "src\Layers\ReLULayer.cs" "src\Layers\ResidualBlockLayer.cs" "src\Layers\SubpixelConv2DLayer.cs" "src\Layers\TanhLayer.cs" "src\Network\SRGAN.cs" "src\Utils\Half2Float.cs" "src\Utils\IOConverters.cs" "src\Utils\Tensor.cs" "src\Program.cs"

cmd.exe