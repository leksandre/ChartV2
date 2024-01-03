object Form1: TForm1
  Left = 196
  Top = 115
  Width = 381
  Height = 344
  Caption = 'Chart'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBChart1: TDBChart
    Left = 0
    Top = 0
    Width = 373
    Height = 290
    AllowPanning = pmNone
    AllowZoom = False
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    BackWall.Pen.Visible = False
    Title.Text.Strings = (
      'TDBChart')
    Title.Visible = False
    AxisVisible = False
    ClipPoints = False
    Frame.Visible = False
    Legend.Visible = False
    View3DOptions.Elevation = 315
    View3DOptions.Orthogonal = False
    View3DOptions.Perspective = 0
    View3DOptions.Rotation = 360
    View3DWalls = False
    Align = alClient
    TabOrder = 0
    OnClick = DBChart1Click
    object RadioGroup1: TRadioGroup
      Left = -8
      Top = 456
      Width = 185
      Height = 105
      Caption = 'RadioGroup1'
      ItemIndex = 0
      Items.Strings = (
        'TopAxes'
        'Botom'
        '3'
        '4')
      TabOrder = 0
      Visible = False
      OnClick = RadioGroup1Click
    end
    object RadioGroup2: TRadioGroup
      Left = 200
      Top = 456
      Width = 185
      Height = 105
      Caption = 'RadioGroup2'
      ItemIndex = 0
      Items.Strings = (
        '1'
        '2'
        '3'
        '4')
      TabOrder = 1
      Visible = False
      OnClick = RadioGroup2Click
    end
    object Series1: TPieSeries
      Marks.ArrowLength = 8
      Marks.Style = smsLabelValue
      Marks.Visible = False
      SeriesColor = clRed
      Circled = True
      OtherSlice.Text = 'Other'
      PieValues.DateTime = False
      PieValues.Name = 'Pie'
      PieValues.Multiplier = 1.000000000000000000
      PieValues.Order = loDescending
    end
  end
  object MainMenu1: TMainMenu
    Left = 8
    object File1: TMenuItem
      Caption = 'File'
      object Close1: TMenuItem
        Caption = 'Close'
        OnClick = Close1Click
      end
    end
    object Open1: TMenuItem
      Caption = 'Open'
      object N21: TMenuItem
        Caption = 'Variant 2'
        OnClick = N21Click
      end
      object Variant31: TMenuItem
        Caption = 'Variant 3'
        OnClick = Variant31Click
      end
    end
    object Print1: TMenuItem
      Caption = 'Print'
      object Run1: TMenuItem
        Caption = 'Run'
        OnClick = Run1Click
      end
    end
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100
    OnTimer = Timer1Timer
    Left = 320
    Top = 8
  end
  object Timer2: TTimer
    OnTimer = Timer2Timer
    Left = 280
    Top = 8
  end
end
