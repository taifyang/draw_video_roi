#include <QLabel>
#include <QMenu>

/* ���ŷ��� */
enum EmDirection
{
    DIR_TOP = 0,
    DIR_BOTTOM,
    DIR_MIDDLE,
    DIR_NONE
};


#define EDGPADDING       5        //���ܱ�Ե��������
#define CORPADDING       5        //�Ľǿ�������
#define EDGE_WIDTH       1        //�߿���


class MyLabel : public QLabel
{
    Q_OBJECT

public:
    MyLabel(QWidget *parent = nullptr);
    ~MyLabel();
    QRect getRoiRect() const;               //��ȡ�Ѿ�Ȧѡ�Ŀ� �ⲿ����

protected:
    void paintEvent(QPaintEvent *event);
    void mousePressEvent(QMouseEvent *ev);
    void mouseMoveEvent(QMouseEvent *ev);
    void mouseReleaseEvent(QMouseEvent *ev);
    void keyPressEvent(QKeyEvent *ev);
    void contextMenuEvent(QContextMenuEvent *ev);

private:
    void initViewer();                         //��ʼ��
    EmDirection region(const QPoint &point);   //���������״
    void moveRect(const QPoint &mousePoint);   //�ƶ�����
    void scaleRect(const QPoint &mousePoint);  //���ž���

private:
    bool m_bPainterPressed;        //�Ƿ����ڻ���
    bool m_bMovedPressed;          //�Ƿ������϶�
    bool m_bScalePressed;          //�Ƿ��������Ŵ�С
    QPoint m_paintStartPoint;      //���Ƶĳ�ʼλ��
    QPoint m_moveStartPoint;       //�϶��ĳ�ʼλ��
    QRect m_roiRect;               //���Ƶ�ROI
    EmDirection m_emCurDir;        //�϶��ķ���
    QImage m_backImage;            //����ͼ
    QMenu *m_pOptMenu;             //�˵�
    QAction *m_pDelAction;         //ɾ������
};
