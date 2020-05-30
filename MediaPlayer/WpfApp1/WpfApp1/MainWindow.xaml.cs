using System;
using System.Windows;

namespace WpfApp1
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void Button_Click(object sender, RoutedEventArgs e)//play
        {
            MediaElement1.Play();
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)//stop
        {
            MediaElement1.Stop();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)//pause
        {
            MediaElement1.Pause();
        }

        private void Button_Click_3(object sender, RoutedEventArgs e)//load
        {
            Microsoft.Win32.OpenFileDialog openf = new Microsoft.Win32.OpenFileDialog();
            openf.AddExtension = true;

            openf.Filter = "Video Files (*.mp4)|*.mp4|Video Files (*.mpeg)|*.mpeg|Video Files (*.wmv)|*.wmv";
            openf.FilterIndex = 0;
            openf.RestoreDirectory = true;
            openf.ShowDialog();
            MediaElement1.Play();
            try
            {
                MediaElement1.Source = new Uri(openf.FileName);
            }
            catch
            {
                new NullReferenceException("Error");
            }
        }

        private void player1_MediaOpened(object sender, RoutedEventArgs e)
        {
            TimeSpan ts = MediaElement1.NaturalDuration.TimeSpan;
            slider1.Maximum = ts.TotalSeconds;
            slider1.SmallChange = 1;
            slider1.LargeChange = Math.Min(2, ts.Seconds / 2);
        }

        private void seekBar_DragCompleted(object sender, System.Windows.Controls.Primitives.DragCompletedEventArgs e)
        {
            MediaElement1.Position = TimeSpan.FromSeconds(slider1.Value);
        }
        private void Slider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            MediaElement1.Position = TimeSpan.FromSeconds(slider1.Value);
            slider1.Value = MediaElement1.Position.Seconds;
        }

        private void slider2_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            MediaElement1.Volume = (double)slider2.Value;
        }
    }
}//Code by M.Dzikri Hisyam Ilyasa
