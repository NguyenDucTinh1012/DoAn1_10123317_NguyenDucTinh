namespace DoAn1
{
    partial class frmHoaDonTaiQuan
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.components = new System.ComponentModel.Container();
<<<<<<< HEAD
<<<<<<<< HEAD:DoAn1/frmHoaDonTaiQuan.Designer.cs
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource1 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.dataTable1BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dataSet1 = new DoAn1.DataSet1();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.dataTable1TableAdapter = new DoAn1.DataSet1TableAdapters.DataTable1TableAdapter();
            this.panel1 = new System.Windows.Forms.Panel();
            this.btnIn = new System.Windows.Forms.Button();
            this.panel2 = new System.Windows.Forms.Panel();
            ((System.ComponentModel.ISupportInitialize)(this.dataTable1BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataSet1)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
<<<<<<< HEAD
========
            Microsoft.Reporting.WinForms.ReportDataSource reportDataSource3 = new Microsoft.Reporting.WinForms.ReportDataSource();
            this.dataTable1BindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.hoaDon = new DoAn1.HoaDon();
            this.reportViewer1 = new Microsoft.Reporting.WinForms.ReportViewer();
            this.btnIN = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.hoaDonBindingSource = new System.Windows.Forms.BindingSource(this.components);
            this.dataTable1TableAdapter = new DoAn1.HoaDonTableAdapters.DataTable1TableAdapter();
            ((System.ComponentModel.ISupportInitialize)(this.dataTable1BindingSource)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDon)).BeginInit();
            this.panel1.SuspendLayout();
            this.panel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDonBindingSource)).BeginInit();
>>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa:DoAn1/frmHoaDon.Designer.cs
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            this.SuspendLayout();
            // 
            // dataTable1BindingSource
            // 
            this.dataTable1BindingSource.DataMember = "DataTable1";
<<<<<<< HEAD
<<<<<<<< HEAD:DoAn1/frmHoaDonTaiQuan.Designer.cs
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            this.dataTable1BindingSource.DataSource = this.dataSet1;
            // 
            // dataSet1
            // 
            this.dataSet1.DataSetName = "DataSet1";
            this.dataSet1.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
<<<<<<< HEAD
========
            this.dataTable1BindingSource.DataSource = this.hoaDon;
            // 
            // hoaDon
            // 
            this.hoaDon.DataSetName = "HoaDon";
            this.hoaDon.SchemaSerializationMode = System.Data.SchemaSerializationMode.IncludeSchema;
>>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa:DoAn1/frmHoaDon.Designer.cs
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            // 
            // reportViewer1
            // 
            this.reportViewer1.Dock = System.Windows.Forms.DockStyle.Fill;
<<<<<<< HEAD
<<<<<<<< HEAD:DoAn1/frmHoaDonTaiQuan.Designer.cs
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            reportDataSource1.Name = "DataSet1";
            reportDataSource1.Value = this.dataTable1BindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource1);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "DoAn1.Report1.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(807, 595);
            this.reportViewer1.TabIndex = 0;
            this.reportViewer1.Load += new System.EventHandler(this.reportViewer1_Load);
            // 
<<<<<<< HEAD
========
            reportDataSource3.Name = "DataSet1";
            reportDataSource3.Value = this.dataTable1BindingSource;
            this.reportViewer1.LocalReport.DataSources.Add(reportDataSource3);
            this.reportViewer1.LocalReport.ReportEmbeddedResource = "DoAn1.rptHoaDon.rdlc";
            this.reportViewer1.Location = new System.Drawing.Point(0, 0);
            this.reportViewer1.Name = "reportViewer1";
            this.reportViewer1.ServerReport.BearerToken = null;
            this.reportViewer1.Size = new System.Drawing.Size(805, 634);
            this.reportViewer1.TabIndex = 0;
            this.reportViewer1.Load += new System.EventHandler(this.reportViewer1_Load);
            // 
            // btnIN
            // 
            this.btnIN.BackColor = System.Drawing.SystemColors.ActiveCaption;
            this.btnIN.Location = new System.Drawing.Point(304, 3);
            this.btnIN.Name = "btnIN";
            this.btnIN.Size = new System.Drawing.Size(191, 47);
            this.btnIN.TabIndex = 1;
            this.btnIN.Text = "In Hóa Đơn";
            this.btnIN.UseVisualStyleBackColor = false;
            this.btnIN.Click += new System.EventHandler(this.btnIN_Click);
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.reportViewer1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(805, 634);
            this.panel1.TabIndex = 2;
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.btnIN);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel2.Location = new System.Drawing.Point(0, 524);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(805, 59);
            this.panel2.TabIndex = 3;
            // 
            // hoaDonBindingSource
            // 
            this.hoaDonBindingSource.DataSource = this.hoaDon;
            this.hoaDonBindingSource.Position = 0;
            // 
>>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa:DoAn1/frmHoaDon.Designer.cs
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            // dataTable1TableAdapter
            // 
            this.dataTable1TableAdapter.ClearBeforeFill = true;
            // 
            // panel1
            // 
            this.panel1.Controls.Add(this.btnIn);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panel1.Location = new System.Drawing.Point(0, 601);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(807, 100);
            this.panel1.TabIndex = 1;
            // 
            // btnIn
            // 
            this.btnIn.BackColor = System.Drawing.Color.RosyBrown;
            this.btnIn.Font = new System.Drawing.Font("Arial", 13.2F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(163)));
            this.btnIn.Location = new System.Drawing.Point(301, 33);
            this.btnIn.Name = "btnIn";
            this.btnIn.Size = new System.Drawing.Size(190, 45);
            this.btnIn.TabIndex = 0;
            this.btnIn.Text = "In Hóa đơn";
            this.btnIn.UseVisualStyleBackColor = false;
<<<<<<< HEAD
            this.btnIn.Click += new System.EventHandler(this.btnIn_Click);
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            // 
            // panel2
            // 
            this.panel2.Controls.Add(this.reportViewer1);
            this.panel2.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(807, 595);
            this.panel2.TabIndex = 2;
            // 
            // frmHoaDonTaiQuan
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
<<<<<<< HEAD
<<<<<<<< HEAD:DoAn1/frmHoaDonTaiQuan.Designer.cs
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            this.ClientSize = new System.Drawing.Size(807, 701);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panel2);
            this.Name = "frmHoaDonTaiQuan";
            this.Text = "frmHoaDonTaiQuan";
            this.Load += new System.EventHandler(this.frmHoaDonTaiQuan_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataTable1BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dataSet1)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
<<<<<<< HEAD
========
            this.ClientSize = new System.Drawing.Size(805, 583);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.panel1);
            this.Name = "frmHoaDon";
            this.Text = "frmHoaDon";
            this.Load += new System.EventHandler(this.frmHoaDon_Load);
            ((System.ComponentModel.ISupportInitialize)(this.dataTable1BindingSource)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.hoaDon)).EndInit();
            this.panel1.ResumeLayout(false);
            this.panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.hoaDonBindingSource)).EndInit();
>>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa:DoAn1/frmHoaDon.Designer.cs
=======
>>>>>>> efb8b0a82fc517c204be103e490b873dc16e44aa
            this.ResumeLayout(false);

        }

        #endregion

        private Microsoft.Reporting.WinForms.ReportViewer reportViewer1;
        private System.Windows.Forms.BindingSource dataTable1BindingSource;
        private DataSet1 dataSet1;
        private DataSet1TableAdapters.DataTable1TableAdapter dataTable1TableAdapter;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Button btnIn;
        private System.Windows.Forms.Panel panel2;
    }
}