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
    m_pDelAction = new QAction(QStringLiteral("ɾ��"), this);
    connect(m_pDelAction, &QAction::triggered, this, [&]() { m_roiRect = QRect(0, 0, 0, 0); });
    m_pOptMenu->addAction(m_pDelAction);
}

/**
 * @brief				��ȡ���Ƶľ���
 * @return				���Ƶľ���
 */
QRect MyLabel::getRoiRect() const
{
    return m_roiRect;
}

/**
 * @brief				���ƾ���
 * @param event         ��ͼ�¼�
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
 * @brief				��갴���¼� �����϶�����������ʼ
 * @param ev	        ����¼�
 * @return				void
 */
void MyLabel::mousePressEvent(QMouseEvent * ev)
{
    if (ev->buttons() & Qt::LeftButton)
    {
        EmDirection dir = region(ev->pos());     //��ȡ��굱ǰ��λ��

        if (dir == DIR_MIDDLE)
        {
            //����ھ�������λ��
            this->setCursor(Qt::ClosedHandCursor);
            m_moveStartPoint.setX(ev->pos().x());
            m_moveStartPoint.setY(ev->pos().y());
            m_bMovedPressed = true;
        }
        else if (dir == DIR_NONE)
        {
            //����ھ����ⲿ
            this->setCursor(Qt::ArrowCursor);
            m_bPainterPressed = true;
            m_paintStartPoint.setX(ev->pos().x());
            m_paintStartPoint.setY(ev->pos().y());
        }
        else
        {
            //�����ھ��α�Ե
            m_moveStartPoint.setX(ev->pos().x());
            m_moveStartPoint.setY(ev->pos().y());
            m_bScalePressed = true;
            m_emCurDir = dir;
        }
    }
}

/**
 * @brief				����ƶ��¼�
 * @param ev         	����¼�
 * @return				void
 */
void MyLabel::mouseMoveEvent(QMouseEvent * ev)
{
    if (ev->buttons() & Qt::LeftButton)
    {
        if (m_bMovedPressed) //�����ƶ�״̬
            moveRect(ev->pos());
        else if (m_bScalePressed) //�������Ŵ�С״̬
            scaleRect(ev->pos());

        update(); //���½���
        return;
    }

    //��������λ�����õ�ǰ�������״
    EmDirection dir = region(ev->pos());

    if (dir == DIR_NONE)
        setCursor(Qt::ArrowCursor);
    else if (dir == DIR_MIDDLE)
        setCursor(Qt::OpenHandCursor);
}

/**
 * @brief				����ɿ��¼�
 * @param ev	        ����¼�
 * @return				void
 */
void MyLabel::mouseReleaseEvent(QMouseEvent * ev)
{
    //�ж�����Ƿ��ھ�����
    if (m_roiRect.contains(ev->pos()))
    {
        //�ɿ����ǰ�Ƿ������Ϸ�
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
 * @brief				���̰����¼�
 * @param ev	        �����¼�
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
 * @brief				�Ҽ��˵�
 * @param ev	        �˵��¼�
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
 * @brief				�ж�����λ��
 * @param point         ����λ��
 * @return				EmDirection ����
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
        //�ϱ�
        this->setCursor(Qt::SizeVerCursor);
        dir = DIR_TOP;
    }
    else if (mouseY >= roiBottomRight.y() - EDGPADDING && mouseY <= roiBottomRight.y() && mouseX >= roiTopLeft.x() && mouseX <= roiBottomRight.x())
    {
        //�±�
        this->setCursor(Qt::SizeVerCursor);
        dir = DIR_BOTTOM;
    }
    else if(m_roiRect.contains(point))
    {
        //�м�
        dir = DIR_MIDDLE;
    }
    else
    {
        dir = DIR_NONE;
    }

    return dir;
}

/**
 * @brief				���ƾ���
 * @param mousePoint    ����λ��
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
 * @brief				���ž���
 * @param mousePoint    ����λ��
 * @return				void
 */
void MyLabel::scaleRect(const QPoint & mousePoint)
{
    QRect newRect(m_roiRect.topLeft(), m_roiRect.bottomRight());
    QRect rt;
    rt.setRect(0,0,this->width(),this->height());

    //���ݵ�ǰ������״̬���ı���ε�λ�ô�С��Ϣ
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
