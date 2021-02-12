#include "mainwindow.h"
#include "ui_mainwindow.h"


MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow)
{
    ui->setupUi(this);
}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_pushButton_open_camera_clicked()
{
    cap.open(0);
    while(1)
    {
        if(!cap.isOpened()) return;
        cap >> frame;
        ui->label->clear();
        QImage img = QImage((const uchar*)frame.data, frame.cols, frame.rows, QImage::Format_RGB888).rgbSwapped();
        ui->label->setPixmap(QPixmap::fromImage(img));
        ui->label->show();
        cv::waitKey(50);
    }

}

void MainWindow::on_pushButton_close_camera_clicked()
{
    cap.release();
    ui->label->clear();
}
