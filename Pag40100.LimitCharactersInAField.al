page 40100 "Limit Characters In A Field"
{
    ApplicationArea = All;
    Caption = 'Limit Characters In A Field';
    PageType = Card;
    UsageCategory=Lists;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                field(Name;Name)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        if StrLen(Name) > 2 then begin
                            Error('You have to enter a maximum of 2 characters');
                        end;
                    end;
                }
            }
        }
    }

    var 
    Name: Text;
}
