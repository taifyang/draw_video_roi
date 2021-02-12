#include <QLabel>
#include <QMenu>

/* 缩放方向 */
enum EmDirection
{
    DIR_TOP = 0,
    DIR_BOTTOM,
    DIR_MIDDLE,
    DIR_NONE
};


#define EDGPADDING       5        //四周边缘可拉伸宽度
#define CORPADDING       5        //四角可拉伸宽度
#define EDGE_WIDTH       1        //边框宽度


class MyLabel : public QLabel
{
    Q_OBJECT

public:
    MyLabel(QWidget *parent = nullptr);
    ~MyLabel();
    QRect getRoiRect() const;               //获取已经圈选的框 外部调用

protected:
    void paintEvent(QPaintEvent *event);
    void mousePressEvent(QMouseEvent *ev);
    void mouseMoveEvent(QMouseEvent *ev);
    void mouseReleaseEvent(QMouseEvent *ev);
    void keyPressEvent(QKeyEvent *ev);
    void contextMenuEvent(QContextMenuEvent *ev);

private:
    void initViewer();                         //初始化
    EmDirection region(const QPoint &point);   //设置鼠标形状
    void moveRect(const QPoint &mousePoint);   //移动矩形
    void scaleRect(const QPoint &mousePoint);  //缩放矩形

private:
    bool m_bPainterPressed;        //是否正在绘制
    bool m_bMovedPressed;          //是否正在拖动
    bool m_bScalePressed;          //是否正在缩放大小
    QPoint m_paintStartPoint;      //绘制的初始位置
    QPoint m_moveStartPoint;       //拖动的初始位置
    QRect m_roiRect;               //绘制的ROI
    EmDirection m_emCurDir;        //拖动的方向
    QImage m_backImage;            //背景图
    QMenu *m_pOptMenu;             //菜单
    QAction *m_pDelAction;         //删除动作
};
