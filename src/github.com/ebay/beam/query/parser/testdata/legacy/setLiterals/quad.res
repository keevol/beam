Query:
#123 ?s <in> {0.5}

Parsed:
#123 ?s in {0.500000}

Rewritten:
Error: literal sets may only be used on lines without fact IDs

Parsed Details:
(*parser.Query)({
  Type: (parser.QueryType) 1,
  Select: (parser.SelectClause) {
    Keyword: (parser.selectClauseKeyword) <nil>,
    Items: ([]parser.selectClauseItem) <nil>
  },
  Where: (parser.WhereClause) (len=1) {
    (*parser.Quad)({
      ID: (*parser.LiteralID)({
        Value: (uint64) 123,
        Hint: (string) ""
      }),
      Subject: (*parser.Variable)({
        Name: (string) (len=1) "s"
      }),
      Predicate: (*parser.Operator)({
        Value: (rpc.Operator) 10
      }),
      Object: (*parser.LiteralSet)({
        Values: ([]parser.Term) (len=1) {
          (*parser.LiteralFloat)({
            Unit: (parser.Unit) {
              ID: (uint64) 0,
              Value: (string) ""
            },
            Value: (float64) 0.5
          })
        }
      }),
      Specificity: (parser.MatchSpecificity) 0
    })
  },
  Modifiers: (parser.SolutionModifier) {
    OrderBy: ([]parser.OrderCondition) <nil>,
    Paging: (parser.LimitOffset) {
      Limit: (*uint64)(<nil>),
      Offset: (*uint64)(<nil>)
    }
  }
})

