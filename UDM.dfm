object DM: TDM
  OldCreateOrder = False
  Height = 489
  Width = 730
  object conexao: TFDConnection
    Params.Strings = (
      'Database=agenda'
      'User_Name=root'
      'Server=127.0.0.1'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object tbContatos: TFDTable
    Active = True
    AfterInsert = tbContatosAfterInsert
    IndexFieldNames = 'id'
    Connection = conexao
    TableName = 'agenda.contatos'
    Left = 120
    Top = 48
    object tbContatosid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbContatosnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tbContatoscelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object tbContatosbloqueado: TBooleanField
      AutoGenerateValue = arDefault
      FieldName = 'bloqueado'
      Origin = 'bloqueado'
    end
    object tbContatosdata: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object tbContatosobservacoes: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'observacoes'
      Origin = 'observacoes'
      BlobType = ftMemo
    end
  end
  object dsContatos: TDataSource
    DataSet = tbContatos
    Left = 200
    Top = 48
  end
end
