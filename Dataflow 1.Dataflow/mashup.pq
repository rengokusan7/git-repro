[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared Table = let
  Source = Table.FromRows(Json.Document(Binary.Decompress(Binary.FromText("i45WSixOVtJRqkiuSC4uTilWitWJVkopTykHipWnAKnYWAA=", BinaryEncoding.Base64), Compression.Deflate)), let _t = ((type nullable text) meta [Serialized.Text = true]) in type table [Column1 = _t, s = _t])
in
  Source;
