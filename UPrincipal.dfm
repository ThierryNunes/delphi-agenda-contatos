object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  Caption = 'Agenda de Contatos'
  ClientHeight = 464
  ClientWidth = 834
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 24
    Width = 239
    Height = 29
    Caption = 'Agenda de Contatos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -24
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 131
    Width = 84
    Height = 13
    Caption = 'Nome do Contato'
  end
  object Label3: TLabel
    Left = 32
    Top = 192
    Width = 33
    Height = 13
    Caption = 'Celular'
  end
  object Label4: TLabel
    Left = 32
    Top = 288
    Width = 63
    Height = 13
    Caption = 'Observa'#231#245'es'
  end
  object dbData: TDBText
    Left = 32
    Top = 430
    Width = 193
    Height = 17
    DataField = 'data'
    DataSource = DM.dsContatos
  end
  object Label5: TLabel
    Left = 32
    Top = 411
    Width = 105
    Height = 13
    Caption = 'Data e Hora Cadastro'
  end
  object Label6: TLabel
    Left = 480
    Top = 104
    Width = 90
    Height = 13
    Caption = 'Busca de Contatos'
  end
  object dbNome: TDBEdit
    Left = 32
    Top = 150
    Width = 377
    Height = 21
    DataField = 'nome'
    DataSource = DM.dsContatos
    TabOrder = 0
  end
  object dbCelular: TDBEdit
    Left = 32
    Top = 211
    Width = 193
    Height = 21
    DataField = 'celular'
    DataSource = DM.dsContatos
    TabOrder = 1
    OnExit = dbCelularExit
  end
  object DBCheckBox1: TDBCheckBox
    Left = 32
    Top = 251
    Width = 97
    Height = 17
    Caption = 'Bloqueado'
    DataField = 'bloqueado'
    DataSource = DM.dsContatos
    TabOrder = 2
  end
  object dbObs: TDBMemo
    Left = 32
    Top = 307
    Width = 377
    Height = 89
    DataField = 'observacoes'
    DataSource = DM.dsContatos
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 32
    Top = 72
    Width = 380
    Height = 37
    DataSource = DM.dsContatos
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 480
    Top = 150
    Width = 320
    Height = 246
    DataSource = DM.dsContatos
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'Contatos Cadastrados'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object txtBusca: TEdit
    Left = 480
    Top = 123
    Width = 320
    Height = 21
    TabOrder = 6
    OnChange = txtBuscaChange
  end
end
