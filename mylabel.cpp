#include "mylabel.h"
#include <QPainter>
#include <QMouseEvent>
#include <QMenu>
#include <QAction>
#include <QStandardPaths>
#include <QFileDialog>
#include <QDebug>

MyLabel::MyLabel(QWidget *parent)
    : QLabel(parent)
{
    m_backImage = QImage(640,480, QImage::Format_Grayscale8);
    m_backImage.fill(QColor(255, 255, 255));
    this->initViewer();
}

MyLabel::~MyLabel()
{
}

void MyLabel::initViewer()
{
    m_bPainterPressed = false;
    m_bMovedPressed = false;
    m_bScalePressed = false;
    m_roiRect = QRect(0, 100, 640-1, 200);
    m_emCurDir = EmDirection::DIR_NONE;

    this->setMouseTracking(true);
    this->setFocusPolicy(Qt::StrongFocus);

    m_pOptMenu = new QMenu(this);
    m_pDelAction = new QAction(QStringLiteral("删除"), this);
    connect(m_pDelAction, &QAction::triggered, this, [&]() { m_roiRect = QRect(0, 0, 0, 0); });
    m_pOptMenu->addAction(m_pDelAction);
}

/**
 * @brief				获取绘制的矩形
 * @return				绘制的矩形
 */
QRect MyLabel::getRoiRect() const
{
    return m_roiRect;
}

/**
 * @brief				绘制矩形
 * @param event         绘图事件
 * @return				void
 */
void MyLabel::paintEvent(QPaintEvent * event)
{
    QLabel::paintEvent(event);

    QPen pen;
    pen.setColor(Qt::blue);
    pen.setWidth(EDGE_WIDTH);

    QPainter painter;
    painter.begin(this);
    painter.setPen(pen);
    painter.drawRect(m_roiRect);

    qDebug() << m_roiRect;
}

/**
 * @brief				鼠标按下事件 用于拖动绘制缩放起始
 * @param ev	        鼠标事件
 * @return				void
 */
void MyLabel::mousePressEvent(QMouseEvent * ev)
{
    if (ev->buttons() & Qt::LeftButton)
    {
        EmDirection dir = region(ev->pos());     //获取鼠标当前的位置

        if (dir == DIR_MIDDLE)
        {
            //鼠标在矩形中心位置
            this->setCursor(Qt::ClosedHandCursor);
            m_moveStartPoint.setX(ev->pos().x());
            m_moveStartPoint.setY(ev->pos().y());
            m_bMovedPressed = true;
        }
        else if (dir == DIR_NONE)
        {
            //鼠标在矩形外部
            this->setCursor(Qt::ArrowCursor);
            m_bPainterPressed = true;
            m_paintStartPoint.setX(ev->pos().x());
            m_paintStartPoint.setY(ev->pos().y());
        }
        else
        {
            //矩形在矩形边缘
            m_moveStartPoint.setX(ev->pos().x());
            m_moveStartPoint.setY(ev->pos().y());
            m_bScalePressed = true;
            m_emCurDir = dir;
        }
    }
}

/**
 * @brief				鼠标移动事件
 * @param ev         	鼠标事件
 * @return				void
 */
void MyLabel::mouseMoveEvent(QMouseEvent * ev)
{
    if (ev->buttons() & Qt::LeftButton)
    {
        if (m_bMovedPressed) //正在移动状态
            moveRect(ev->pos());
        else if (m_bScalePressed) //正在缩放大小状态
            scaleRect(ev->pos());

        update(); //更新界面
        return;
    }

    //根据鼠标的位置设置当前的鼠标形状
    EmDirection dir = region(ev->pos());

    if (dir == DIR_NONE)
        setCursor(Qt::ArrowCursor);
    else if (dir == DIR_MIDDLE)
        setCursor(Qt::OpenHandCursor);
}

/**
 * @brief				鼠标松开事件
 * @param ev	        鼠标事件
 * @return				void
 */
void MyLabel::mouseReleaseEvent(QMouseEvent * ev)
{
    //判断鼠标是否在矩形中
    if (m_roiRect.contains(ev->pos()))
    {
        //松开鼠标前是否正在拖放
        if (m_bMovedPressed)
            this->setCursor(Qt::OpenHandCursor);
        else
            this->setCursor(Qt::ArrowCursor);
    }

    m_paintStartPoint = QPoint();
    m_bMovedPressed = false;
    m_bPainterPressed = false;
    m_bScalePressed = false;
}

/**
 * @brief				键盘按下事件
 * @param ev	        键盘事件
 * @return				void
 */
void MyLabel::keyPressEvent(QKeyEvent * ev)
{
    if (ev->key() == Qt::Key_Delete)
    {
        m_roiRect = QRect(0,0,0,0);
        update();
    }
}

/**
 * @brief				右键菜单
 * @param ev	        菜单事件
 * @return				void
 */
void MyLabel::contextMenuEvent(QContextMenuEvent * ev)
{
    QPoint mousePos = ev->pos();

    if (m_roiRect.contains(mousePos))
        m_pOptMenu->exec(QCursor::pos());

    ev->accept();
}

/**
 * @brief				判断鼠标的位置
 * @param point         鼠标的位置
 * @return				EmDirection 方向
 */
EmDirection MyLabel::region(const QPoint & point)
{
    int mouseX = point.x();
    int mouseY = point.y();

    QPoint roiTopLeft = m_roiRect.topLeft();
    QPoint roiBottomRight = m_roiRect.bottomRight();

    EmDirection dir = DIR_NONE;
    if (mouseY <= roiTopLeft.y() + EDGPADDING && mouseY >= roiTopLeft.y() && mouseX >= roiTopLeft.x() && mouseX <= roiBottomRight.x())
    {
        //上边
        this->setCursor(Qt::SizeVerCursor);
        dir = DIR_TOP;
    }
    else if (mouseY >= roiBottomRight.y() - EDGPADDING && mouseY <= roiBottomRight.y() && mouseX >= roiTopLeft.x() && mouseX <= roiBottomRight.x())
    {
        //下边
        this->setCursor(Qt::SizeVerCursor);
        dir = DIR_BOTTOM;
    }
    else if(m_roiRect.contains(point))
    {
        //中间
        dir = DIR_MIDDLE;
    }
    else
    {
        dir = DIR_NONE;
    }

    return dir;
}

/**
 * @brief				绘制矩形
 * @param mousePoint    鼠标的位置
 * @return				void
 */
void MyLabel::moveRect(const QPoint & mousePoint)
{
    this->setCursor(Qt::ClosedHandCursor);

    int width = mousePoint.x() - m_moveStartPoint.x();
    int height = mousePoint.y() - m_moveStartPoint.y();

    QRect rt;
    rt.setRect(0,0,this->width(),this->height());
    QRect ret;
    ret.setX(m_roiRect.x());
    ret.setY(m_roiRect.y() + height);
    ret.setSize(m_roiRect.size());
    if(rt.contains(QPoint(m_roiRect.x(),m_roiRect.y() + height))
     &&rt.contains(QPoint(m_roiRect.x() + m_roiRect.width(),m_roiRect.y() + height +m_roiRect.height())))
    {
        m_roiRect = ret;
        m_moveStartPoint = mousePoint;
    }
}

/**
 * @brief				缩放矩形
 * @param mousePoint    鼠标的位置
 * @return				void
 */
void MyLabel::scaleRect(const QPoint & mousePoint)
{
    QRect newRect(m_roiRect.topLeft(), m_roiRect.bottomRight());
    QRect rt;
    rt.setRect(0,0,this->width(),this->height());

    //根据当前的缩放状态来改变矩形的位置大小信息
    switch (m_emCurDir)
    {
    case DIR_TOP:
        newRect.setTop(mousePoint.y());
        if(rt.contains(QPoint(newRect.x() + newRect.width(),newRect.y() - newRect.height() + m_roiRect.height())))
        {
            m_roiRect = newRect;
            m_moveStartPoint = mousePoint;
        }
        break;
    case DIR_BOTTOM:
        newRect.setBottom(mousePoint.y());
        if(rt.contains(QPoint(newRect.x() + newRect.width(),newRect.y() + newRect.height())))
        {
            m_roiRect = newRect;
            m_moveStartPoint = mousePoint;
        }
        break;
    }
}
