unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.ComboEdit, FMX.ListBox,
  FMX.Objects, math, System.ImageList, FMX.ImgList, FMX.Ani, FMX.Layouts,
  FMX.TabControl, FMX.Gestures, System.Actions, FMX.ActnList, FMX.StdActns,
  FMX.VirtualKeyboard, FMX.Platform, FMX.grid, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, System.IOUtils;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    ComboBox1: TComboBox;
    Label2: TLabel;
    Edit2: TEdit;
    Rectangle1: TRectangle;
    Label3: TLabel;
    Rectangle2: TRectangle;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Rectangle3: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Label8: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    ComboEdit1: TComboBox;
    ImageList1: TImageList;
    Button2: TButton;
    Layout2: TLayout;
    TabControl1: TTabControl;
    TabItem1: TTabItem;
    TabItem2: TTabItem;
    Layout3: TLayout;
    Layout4: TLayout;
    Layout5: TLayout;
    Layout6: TLayout;
    Layout7: TLayout;
    Layout8: TLayout;
    Layout9: TLayout;
    Layout10: TLayout;
    Layout11: TLayout;
    Layout12: TLayout;
    Layout13: TLayout;
    Layout14: TLayout;
    Layout15: TLayout;
    Layout17: TLayout;
    Layout21: TLayout;
    Image1: TImage;
    Layout24: TLayout;
    Layout25: TLayout;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    LayoutCheck: TLayout;
    Layout29: TLayout;
    ComboBox2: TComboBox;
    Layout30: TLayout;
    Image5: TImage;
    Image6: TImage;
    VertScrollBox1: TVertScrollBox;
    MainLayout: TLayout;
    Edit6: TEdit;
    Edit11: TEdit;
    Edit12: TEdit;
    Label10: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Rectangle12: TRectangle;
    Rectangle13: TRectangle;
    Rectangle14: TRectangle;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Line1: TLine;
    Line2: TLine;
    Layout1: TLayout;
    Line3: TLine;
    Layout31: TLayout;
    Line4: TLine;
    Rectangle6: TRectangle;
    Layout33: TLayout;
    Layout34: TLayout;
    Layout35: TLayout;
    Layout36: TLayout;
    Layout37: TLayout;
    Layout38: TLayout;
    LayoutRight2: TLayout;
    LayoutLeft2: TLayout;
    Line5: TLine;
    Line6: TLine;
    Layout39: TLayout;
    Line7: TLine;
    Settings: TButton;
    Save: TButton;
    Layout41: TLayout;
    LayoutSet: TLayout;
    Add: TButton;
    Del: TButton;
    Button4: TButton;
    Layout16: TLayout;
    Layout42: TLayout;
    Button5: TButton;
    StringGrid1: TStringGrid;
    StringColumn1: TStringColumn;
    StringColumn2: TStringColumn;
    Button6: TButton;
    Layout44: TLayout;
    Layout45: TLayout;
    Layout43: TLayout;
    Layout46: TLayout;
    procedure ComboEdit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormFocusChanged(Sender: TObject);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure ComboBox2Change(Sender: TObject);
    procedure ChangeEdit(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SettingsClick(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure AddClick(Sender: TObject);
    procedure DelClick(Sender: TObject);
    procedure Edit3ChangeTracking(Sender: TObject);
    procedure Edit4ChangeTracking(Sender: TObject);
    procedure Edit5ChangeTracking(Sender: TObject);
    procedure Edit6ChangeTracking(Sender: TObject);
    procedure Edit11ChangeTracking(Sender: TObject);
    procedure Edit12ChangeTracking(Sender: TObject);
    procedure Edit2ChangeTracking(Sender: TObject);

  private
    { Private declarations }
    FKBBounds: TRectF;
    FNeedOffset: Boolean;
    procedure CalcContentBoundsProc(Sender: TObject;
                                    var ContentBounds: TRectF);
    procedure RestorePosition;
    procedure UpdateKBBounds;

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  F:textfile;
  Density: array of real;
  Names: array of string;
  Flags: TReplaceFlags;

implementation

{$R *.fmx}
{$R *.XLgXhdpiTb.fmx ANDROID}
{$R *.NmXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiPh.fmx ANDROID}
{$R *.LgXhdpiTb.fmx ANDROID}
{$R *.Meizu.fmx ANDROID}

const par:array[0..21] of real=(3, 8.8, 0.37, 1.4, 1.4, 2.3, 8, 1.1, 1, 8.1, 9, 1.1, 2, 1.6, 1.8, 3.2, 11.34, 17, 1.4, 4.5, 2.2, 1.25);
      key:array[0..21] of string=('Алюминий','Бронза', 'Войлок', 'Винипласт', 'Гетинакс', 'Графит', 'Железо/чугун', 'Капролон', 'Кожа техн.', 'Латунь', 'Медь', 'Орг. стекло', 'Паронит', 'Резина', 'Стеклотекстолит', 'Слюда', 'Свинец', 'Сплав ВНМ/ВНЖ', 'Текстолит', 'Титан', 'Фторопласт', 'Эбонит');

procedure TForm1.AddClick(Sender: TObject);
    begin
        StringGrid1.RowCount := StringGrid1.RowCount + 1;
    end;

procedure TForm1.Button1Click(Sender: TObject);
  Var m,d,l,h,b,Ro,s:real;  n:integer;

    begin
        if edit2.Text = '1' then
            label9.Text:='Для  '+ edit2.Text+'  штуки'
        else
            label9.Text:='Для  '+ edit2.Text+'  штук';
        if comboedit1.ItemIndex = High(Density) + 1 then
            try
                Ro:=strtofloat(StringReplace(edit1.text, '.', ',', Flags))
            except
                edit1.Text := copy(edit1.Text,0,length(edit1.Text)-1);
            end
        else
            Ro:=strtofloat(StringReplace(label21.text, '.', ',', Flags));
        try
            if combobox1.ItemIndex = 0 then
                begin
                    d:=strtofloat(StringReplace(edit3.text, '.', ',', Flags));
                    l:=strtofloat(StringReplace(edit4.text, '.', ',', Flags));
                    m:=PI*d*d*l*Ro/4000000;
                end;
            if combobox1.ItemIndex = 1 then
                begin
                    l:=strtofloat(StringReplace(edit3.text, '.', ',', Flags));
                    h:=strtofloat(StringReplace(edit4.text, '.', ',', Flags));
                    b:=strtofloat(StringReplace(edit5.text, '.', ',', Flags));
                    m:=l*h*b*Ro/1000000;
                end;
            if combobox1.ItemIndex = 2 then
                begin
                    s:=strtofloat(StringReplace(edit3.text, '.', ',', Flags));
                    l:=strtofloat(StringReplace(edit4.text, '.', ',', Flags));
                    m:=3.464*(s*s/4)*l*Ro/1000000;
                end;
        except
            m:=0;
        end;
    label17.Text:=floattostr(RoundTo(m,-2));
    label18.Text:=floattostr(RoundTo(m*1.2,-2));
        try
            n:=strtoint(edit2.text);
        except
            n := 0;
        end;
    label19.Text:=floattostr(RoundTo(m*n,-2));
    label20.Text:=floattostr(RoundTo(m*n*1.2,-2));
    end;

procedure TForm1.Button2Click(Sender: TObject);
    begin
        showmessage('Иконки для приложения взяты с сайта: https://icons8.com');
    end;

procedure TForm1.Button4Click(Sender: TObject);
  var i: integer;
    begin
        StringGrid1.RowCount := length(par);
        for I := 0 to length(par)-1 do
            begin
                stringgrid1.Cells[0, i] := key[i];
                stringgrid1.Cells[1, i] := floattostr(par[i]);
            end;
    end;

procedure TForm1.Button5Click(Sender: TObject);
    begin
        LayoutSet.Visible := False;
        TabControl1.Visible := True;
        FormCreate(self);
    end;

procedure TForm1.Button6Click(Sender: TObject);
  var i: integer; s1, s2: string;
    begin
        try
            AssignFile(F,TPath.GetPublicPath + '/Table.koz');
            Reset(F);
            StringGrid1.RowCount := 0;
            i := 0;
                while (not EOF(F)) do
                    begin
                        readln(F, s1);
                        readln(F, s2);
                        StringGrid1.RowCount := i + 1;
                        stringgrid1.Cells[0, i] := s1;
                        stringgrid1.Cells[1, i] := s2;
                        i := i + 1;
                        SetLength(Density, i);
                        SetLength(Names, i);
                        Density[i - 1] := strtofloat(s2);
                        Names[i - 1] := s1;
                    end;
                CloseFile(F);
        Except
            Showmessage('Вы еще не создали файл.');
        end;
    end;

procedure TForm1.ChangeEdit(Sender: TObject);
  Var a, B, H, S, D:real;  n:integer;
    begin
        try
            if combobox2.ItemIndex=0 then
                begin
                    if RadioButton1.IsChecked then
                        begin
                            if edit6.Text = '' then label10.text := 'D';
                            a:=strtofloat(StringReplace(edit6.text, '.', ',', Flags));
                            D:= 1.414 * a;
                            label10.text := floattostr(RoundTo(D,-2))
                        end
                    Else
                        begin
                            if edit11.Text = '' then label15.text := 'a';
                            D:=strtofloat(StringReplace(edit11.text, '.', ',', Flags));
                            a := D / 1.414;
                            label15.Text := floattostr(RoundTo(a,-2))
                        end;
                end;
            if combobox2.ItemIndex=1 then
                begin
                    if RadioButton1.IsChecked then
                        begin
                            if edit6.Text = '' then label10.text := 'D';
                            if edit12.Text = '' then label10.text := 'D';
                            B:=strtofloat(StringReplace(edit6.text, '.', ',', Flags));
                            H:=strtofloat(StringReplace(edit12.text, '.', ',', Flags));
                            D:= sqrt(B * B + H * H);
                            label10.text := floattostr(RoundTo(D,-2))
                        end
                    Else
                        begin
                            if edit6.Text = '' then label16.text := 'H';
                            if edit11.Text = '' then label16.text := 'H';
                            D:=strtofloat(StringReplace(edit11.text, '.', ',', Flags));
                            B:=strtofloat(StringReplace(edit6.text, '.', ',', Flags));
                            if D >= B then
                                begin
                                    H := sqrt(D * D - B * B);
                                    label16.text := floattostr(RoundTo(H,-2))
                                end
                            else
                                begin
                                    showmessage('Введите сторону меньше диаметра!');
                                    edit6.text := '';
                                end;

                        end;
                end;
            if combobox2.ItemIndex=2 then
                begin
                    if RadioButton1.IsChecked then
                        begin
                            if edit6.Text = '' then label10.text := 'D';
                            S:=strtofloat(StringReplace(edit6.text, '.', ',', Flags));
                            D:= 2 * S / 1.732;
                            label10.text := floattostr(RoundTo(D,-2))
                        end
                    Else
                        begin
                            if edit11.Text = '' then label15.text := 'S';
                            D:=strtofloat(StringReplace(edit11.text, '.', ',', Flags));
                            S := (D/2) * 1.732;
                            label15.text := floattostr(RoundTo(S,-2))
                        end;
                end;
        except

        end;
    end;

procedure TForm1.ComboBox1Change(Sender: TObject);
    begin
        edit3.Text:='';
        edit4.Text:='';
        edit5.Text:='';
        label17.Text := '0';
        label18.Text := '0';
        label19.Text := '0';
        label20.Text := '0';
        if combobox1.ItemIndex=0 then
            begin
                label5.Text:='D (мм)';
                label6.Text:='L (мм)';
                layout9.Visible := false;
                image2.Visible:= true;
                image3.Visible:= false;
                image4.Visible:= false;
            end;
        if combobox1.ItemIndex=1 then
            begin
                label5.Text:='L (мм)';
                label6.Text:='H (мм)';
                label7.Text:='B (мм)';
                layout9.Visible := true;
                image2.Visible:= false;
                image3.Visible:= true;
                image4.Visible:= false;
            end;
        if combobox1.ItemIndex=2 then
            begin
                label5.Text:='S (мм)';
                label6.Text:='L (мм)';
                layout9.Visible := false;
                image2.Visible:= false;
                image3.Visible:= false;
                image4.Visible:= true;
            end;
        Edit3ChangeTracking(self);
        Edit4ChangeTracking(self);
        Edit5ChangeTracking(self);
        Button1Click(self);
    end;

procedure TForm1.ComboBox2Change(Sender: TObject);
    begin
        edit11.Text := '';
        edit6.Text := '';
        edit12.Text := '';
        label10.Text := 'D';
        line5.Visible := false;
        line6.Visible := false;
        line7.Visible := false;
        if combobox2.ItemIndex=0 then
            begin
                image1.Visible:= true;
                image5.Visible:= false;
                image6.Visible:= false;
                label15.Text := 'a';
                label16.Visible := false;
                rectangle14.Visible := false;
                if RadioButton1.IsChecked then
                    begin
                        Rectangle12.Visible := false;
                        Rectangle13.Visible := true;
                        line5.Visible := true;
                    end
                else
                    begin
                        line6.Visible := true;
                        Rectangle12.Visible := true;
                        Rectangle13.Visible := false;
                    end;
            end;
        if combobox2.ItemIndex=1 then
            begin
                image1.Visible:= false;
                image5.Visible:= true;
                image6.Visible:= false;
                label15.Text := 'B';
                label16.Text := 'H';
                label16.Visible := true;
                if RadioButton1.IsChecked then
                    begin
                        line5.Visible := true;
                        Rectangle12.Visible := false;
                        Rectangle13.Visible := true;
                        Rectangle14.Visible := true;
                    end
                else
                    begin
                        line7.Visible := true;
                        Rectangle12.Visible := true;
                        Rectangle13.Visible := true;
                        Rectangle14.Visible := false;
                    end;
            end;
        if combobox2.ItemIndex=2 then
            begin
                image1.Visible:= false;
                image5.Visible:= false;
                image6.Visible:= true;
                label15.Text := 'S';
                label16.Visible := false;
                rectangle14.Visible := false;
                if RadioButton1.IsChecked then
                    begin
                        line5.Visible := true;
                        Rectangle12.Visible := false;
                        Rectangle13.Visible := true;
                    end
                else
                    begin
                        line6.Visible := true;
                        Rectangle12.Visible := true;
                        Rectangle13.Visible := false;
                    end;
            end;

    end;

procedure TForm1.ComboEdit1Change(Sender: TObject); //combobox
  var i: integer;
    begin
        label17.Text := '0';
        label18.Text := '0';
        label19.Text := '0';
        label20.Text := '0';
        label21.Visible := true;
        rectangle2.Visible := false;
        for i := 0 to High(Density) do
            begin
                if comboedit1.ItemIndex = i then
                    label21.Text := FloatToStrF(Density[i],ffFixed, 3, 2);
            end;
        if comboedit1.ItemIndex = High(Density) + 1 then
            begin
                label21.Visible := false;
                rectangle2.Visible := true;
                Edit1.Text := '';
            end;
        Edit3ChangeTracking(self);
        Edit4ChangeTracking(self);
        Edit5ChangeTracking(self);
        Button1Click(self);
    end;

procedure TForm1.DelClick(Sender: TObject);
    begin
        if StringGrid1.RowCount>0 then
            begin
                StringGrid1.RowCount := StringGrid1.RowCount - 1;
            end;
    end;



procedure TForm1.Edit11ChangeTracking(Sender: TObject);
var j: real;
    begin
         try
            j := strtofloat(StringReplace(edit11.text, '.', ',', Flags))
         except
            edit11.Text := copy(edit11.Text,0,length(edit11.Text)-1);
         end;
         ChangeEdit(self);
    end;

procedure TForm1.Edit12ChangeTracking(Sender: TObject);
var j: real;
    begin
         try
            j := strtofloat(StringReplace(edit12.text, '.', ',', Flags))
         except
            edit12.Text := copy(edit12.Text,0,length(edit12.Text)-1);
         end;
         ChangeEdit(self);
    end;

procedure TForm1.Edit2ChangeTracking(Sender: TObject);
var j: integer;
    begin
         try
            j := strtoint(edit2.text)
         except
            edit2.Text := copy(edit2.Text,0,length(edit2.Text)-1);
         end;
         button1click(self);
    end;

procedure TForm1.Edit3ChangeTracking(Sender: TObject);
var j: real;
    begin
         try
            j := strtofloat(StringReplace(edit3.text, '.', ',', Flags))
         except
            edit3.Text := copy(edit3.Text,0,length(edit3.Text)-1);
         end;
         button1click(self);
    end;

procedure TForm1.Edit4ChangeTracking(Sender: TObject);
var j: real;
    begin
         try
            j := strtofloat(StringReplace(edit4.text, '.', ',', Flags))
         except
            edit4.Text := copy(edit4.Text,0,length(edit4.Text)-1);
         end;
         button1click(self);
    end;

procedure TForm1.Edit5ChangeTracking(Sender: TObject);
var j: real;
    begin
         try
            j := strtofloat(StringReplace(edit5.text, '.', ',', Flags))
         except
            edit5.Text := copy(edit5.Text,0,length(edit5.Text)-1);
         end;
         button1click(self);
    end;

procedure TForm1.Edit6ChangeTracking(Sender: TObject);
var j: real;
    begin
         try
            j := strtofloat(StringReplace(edit6.text, '.', ',', Flags))
         except
            edit6.Text := copy(edit6.Text,0,length(edit6.Text)-1);
         end;
         ChangeEdit(self);
    end;

procedure TForm1.FormCreate(Sender: TObject);
  var i:integer; FileDir: string;
    begin
        FileDir := TPath.GetPublicPath + '/Table.koz';
        edit2.Text:=floattostr(1);
        VertScrollBox1.OnCalcContentBounds := CalcContentBoundsProc;
        line1.Width := screen.Width - 30;
        line2.Width := screen.Width - 30;
        line3.Width := screen.Width - 30;
        line4.Width := screen.Width - 30;
        ComboEdit1.Items.Clear;
        if FileExists(FileDir) then
            Button6click(self)
        Else
            begin
                SetLength(Density, high(key)+1);
                SetLength(Names, high(par)+1);
                for i := 0 to High(par) do
                    begin
                        Density[i] := par[i];
                        Names[i] := key[i];
                    end;
            end;
       for i := 0 to High(Names) do
          ComboEdit1.Items.Add(Names[i]);
       ComboEdit1.ItemIndex := 0;
       ComboEdit1.Items.Add('Другой');
       ComboEdit1Change(self);
       ComboBox1Change(self);
    end;

procedure TForm1.FormFocusChanged(Sender: TObject);
    begin
        UpdateKBBounds;
    end;

procedure TForm1.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
    begin
        FKBBounds.Create(0, 0, 0, 0);
        FNeedOffset := False;
        RestorePosition;
    end;

procedure TForm1.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
    begin
        FKBBounds := TRectF.Create(Bounds);
        FKBBounds.TopLeft := ScreenToClient(FKBBounds.TopLeft);
        FKBBounds.BottomRight := ScreenToClient(FKBBounds.BottomRight);
        UpdateKBBounds;
    end;

procedure TForm1.CalcContentBoundsProc(Sender: TObject; var ContentBounds: TRectF);
    begin
        if FNeedOffset and (FKBBounds.Top > 0) then
            begin
                ContentBounds.Bottom := Max(ContentBounds.Bottom,
                                2 * ClientHeight - FKBBounds.Top - 100);
            end;
    end;

procedure TForm1.RestorePosition;
    begin
        VertScrollBox1.ViewportPosition := PointF(VertScrollBox1.ViewportPosition.X, 0);
        MainLayout.Align := TAlignLayout.Client;
        VertScrollBox1.RealignContent;
    end;

procedure TForm1.SaveClick(Sender: TObject);
  var i: integer; b: real; Flags: TReplaceFlags; ch: boolean; s: string;
    begin
        AssignFile(F,TPath.GetPublicPath + '/Table.koz');
        rewrite(F);
        for i := 0 to StringGrid1.RowCount - 1 do
            begin
                if (stringgrid1.Cells[0, i] <> '') and (stringgrid1.Cells[1, i] <> '') then
                    begin
                        try
                            b:= StrToFloat(StringReplace(stringgrid1.Cells[1, i], '.', ',', Flags));
                            ch := true;
                        except
                            ch := false;
                        end;
                        if ch then
                            begin
                                writeln(F,stringgrid1.Cells[0, i]);
                                writeln(F,StringReplace(stringgrid1.Cells[1, i], '.', ',', Flags));
                            end;
                    end;
            end;
        CloseFile(F);
    end;

procedure TForm1.SettingsClick(Sender: TObject);
    begin
        LayoutSet.Visible := True;
        TabControl1.Visible := False;
        StringColumn1.Width := round(ClientWidth / 2)-1;
        StringColumn2.Width := round(ClientWidth / 2)-1;
        stringGrid1.Height := round(ClientHeight *2 / 3);
        StringColumn1.Header := 'Материал';
        StringColumn2.Header := 'Плотность';
        Add.Width := round(ClientWidth / 2)-10;
        Del.Width := round(ClientWidth / 2)-10;
        Button6.Width := round(ClientWidth / 2)-10;
        Save.Width := round(ClientWidth / 2)-10;

    end;

procedure TForm1.UpdateKBBounds;
    begin
        FNeedOffset := False;
        if Assigned(Focused) then
            begin
                FNeedOffset := True;
                MainLayout.Align := TAlignLayout.Horizontal;
                VertScrollBox1.RealignContent;
                Application.ProcessMessages;
            end;
        if not FNeedOffset then
            RestorePosition;
    end;
end.
