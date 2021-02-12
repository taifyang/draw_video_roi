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
    void on_pushButton_open_camera_clicked(); //�����

    void on_pushButton_close_camera_clicked(); //�ر����

private:
    Ui::MainWindow *ui;
    cv::VideoCapture cap; //����ͷ
    cv::Mat frame;        //ͼ��֡
};

#endif // MAINWINDOW_H
