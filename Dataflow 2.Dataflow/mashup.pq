[StagingDefinition = [Kind = "FastCopy"]]
section Section1;
shared #"Customer Lookup" = let
  Source = Csv.Document(File.Contents("C:\New folder\Customer Lookup.csv"), [Delimiter = ",", Columns = 9, QuoteStyle = QuoteStyle.None]),
  #"Promoted headers" = Table.PromoteHeaders(Source, [PromoteAllScalars = true]),
  #"Changed column type" = Table.TransformColumnTypes(#"Promoted headers", {{"customer_id", Int64.Type}, {"home_store", Int64.Type}, {"customer_first-name", type text}, {"customer_email", type text}, {"customer_since", type date}, {"loyalty_card_number", type text}, {"birthdate", type date}, {"gender", type text}, {"birth_year", Int64.Type}})
in
  #"Changed column type";
