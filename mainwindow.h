#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QMouseEvent>
#include <QPoint>
#include <QPainter>
#include <opencv2/opencv.hpp>


namespace Ui {
class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_pushButton_open_camera_clicked(); //打开相机

    void on_pushButton_close_camera_clicked(); //关闭相机

private:
    Ui::MainWindow *ui;
    cv::VideoCapture cap; //摄像头
    cv::Mat frame;        //图像帧
};

#endif // MAINWINDOW_H
