page 50102 Test
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    Caption = 'Arithmetic Operations';
    //SourceTable = Test;


    layout
    {
        area(Content)
        {
            group(Input)
            {
                Caption = 'Kindly enter the correct values to proceed';
                field(Value1; Value1)
                {
                    ApplicationArea = All;

                }
                field(Value2; Value2)
                {
                    ApplicationArea = All;
                }
                field(DOB; DOB)
                {
                    ApplicationArea = All;
                }
            }
            group(Output)
            {
                Caption = 'Your Results!';
                field(AdditionVal; AdditionVal)
                {
                    ApplicationArea = All;
                }
                field(diff; diff)
                {
                    ApplicationArea = All;
                }
                field(product; product)
                {
                    ApplicationArea = All;
                }
                field(Age; Age)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Calculate)
            {
                ApplicationArea = All;
                Caption = 'Calculate';
                Image = ExecuteBatch;
                trigger OnAction()
                begin
                    AdditionVal := Value1 + Value2;
                    product := Value1 * Value2;
                    diff := Value1 - Value2;
                    //Age := Today - DOB;
                end;
            }
        }
    }

    var
        Value1: Integer;
        Value2: Integer;
        AdditionVal: Integer;
        diff: Integer;
        product: Integer;
        CurrDate: DateFormula;
        Age: DateFormula;
        DOB: DateFormula;
}