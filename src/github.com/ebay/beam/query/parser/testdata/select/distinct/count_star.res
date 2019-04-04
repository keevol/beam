Query:
SELECT 
    DISTINCT (count(*) AS ?rims)
WHERE {
    ?rim rdf:type products:rims
    ?rim <size> ?sz
}

Parsed:
SELECT DISTINCT (COUNT(*) AS ?rims)
WHERE {
_ ?rim rdf:type products:rims
_ ?rim <size> ?sz
}

Rewritten:
SELECT DISTINCT (COUNT(*) AS ?rims)
WHERE {
_ ?rim rdf:type products:rims
_ ?rim <size> ?sz
}

Parsed Details:
(*parser.Query)({
  Type: (parser.QueryType) 2,
  Select: (parser.SelectClause) {
    Keyword: (parser.Distinct) {
    },
    Items: ([]parser.selectClauseItem) (len=1) {
      (*parser.BoundExpression)({
        Expr: (*parser.AggregateExpr)({
          Function: (parser.AggregateFunction) 1,
          Of: (parser.Wildcard) {
          }
        }),
        As: (*parser.Variable)({
          Name: (string) (len=4) "rims"
        })
      })
    }
  },
  Where: (parser.WhereClause) (len=2) {
    (*parser.Quad)({
      ID: (*parser.Nil)({
      }),
      Subject: (*parser.Variable)({
        Name: (string) (len=3) "rim"
      }),
      Predicate: (*parser.QName)({
        ID: (uint64) 0,
        Value: (string) (len=8) "rdf:type"
      }),
      Object: (*parser.QName)({
        ID: (uint64) 0,
        Value: (string) (len=13) "products:rims"
      }),
      Specificity: (parser.MatchSpecificity) 0
    }),
    (*parser.Quad)({
      ID: (*parser.Nil)({
      }),
      Subject: (*parser.Variable)({
        Name: (string) (len=3) "rim"
      }),
      Predicate: (*parser.Entity)({
        ID: (uint64) 0,
        Value: (string) (len=4) "size"
      }),
      Object: (*parser.Variable)({
        Name: (string) (len=2) "sz"
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

Rewritten Details:
(*parser.Query)({
  Type: (parser.QueryType) 2,
  Select: (parser.SelectClause) {
    Keyword: (parser.Distinct) {
    },
    Items: ([]parser.selectClauseItem) (len=1) {
      (*parser.BoundExpression)({
        Expr: (*parser.AggregateExpr)({
          Function: (parser.AggregateFunction) 1,
          Of: (parser.Wildcard) {
          }
        }),
        As: (*parser.Variable)({
          Name: (string) (len=4) "rims"
        })
      })
    }
  },
  Where: (parser.WhereClause) (len=2) {
    (*parser.Quad)({
      ID: (*parser.Nil)({
      }),
      Subject: (*parser.Variable)({
        Name: (string) (len=3) "rim"
      }),
      Predicate: (*parser.LiteralID)({
        Value: (uint64) 13542198003,
        Hint: (string) (len=8) "rdf:type"
      }),
      Object: (*parser.LiteralID)({
        Value: (uint64) 8,
        Hint: (string) (len=13) "products:rims"
      }),
      Specificity: (parser.MatchSpecificity) 0
    }),
    (*parser.Quad)({
      ID: (*parser.Nil)({
      }),
      Subject: (*parser.Variable)({
        Name: (string) (len=3) "rim"
      }),
      Predicate: (*parser.LiteralID)({
        Value: (uint64) 10,
        Hint: (string) (len=6) "<size>"
      }),
      Object: (*parser.Variable)({
        Name: (string) (len=2) "sz"
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

