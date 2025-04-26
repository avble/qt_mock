#ifndef _AV_CONTROLLER_H_
#define _AV_CONTROLLER_H_

#include <QObject>
#include <QQuickItem>
#include <QQuickView>
#include <QGuiApplication>
#include <QAbstractListModel>
#include <QJSEngine>

#include <iostream>

// prototype  
class DeviceModel: public QAbstractListModel {

    Q_OBJECT

    struct Light {
        Light(QString _name, int _node_id, int _end_device) {
            name = _name;
            node_id = _node_id;
            end_device = _end_device;
        }
        QString name;
        int node_id;
        int end_device;
    };

    enum deviceRole{
        name = 1,
        node_id,
        end_device
    };


public:
    DeviceModel(){
        // Simulate the devices
        devices.emplace_back(Light("Light 01", 03, 03));
        devices.emplace_back(Light("Light 02", 03, 04));
    }

    QHash<int, QByteArray> roleNames() const{
        return {
            {static_cast<int>(deviceRole::name), "name"},
            {static_cast<int>(deviceRole::node_id), "node_id"},
            {static_cast<int>(deviceRole::end_device), "end_device"},
            };
    }

    QVariant data(const QModelIndex &index, int role) const{
        int row = index.row();
        if (row >= devices.size())
            return QVariant();
        switch(static_cast<deviceRole>(role)){
        case deviceRole::name:
            return devices[row].name;
            break;
        case deviceRole::node_id:
            return devices[row].node_id;
            break;
        case deviceRole::end_device:
            return devices[row].end_device;
            break;
        }

        return QVariant();
    }

    int rowCount(const QModelIndex &) const
    {
        qDebug() << "hello world " << "devices: " << devices.size() << Qt::endl;
        return devices.size();
    }

    Q_INVOKABLE void toggle(int node_id, int end_device) {

        qDebug() << "toggle is called. " << node_id << ":" << end_device << Qt::endl;
        //cluster_onoff_cmd_toggle(node_id, end_device);

    }

    Q_INVOKABLE void turn_on(int node_id, int end_device) {
        qDebug() << "turn_on is called. " << node_id << ":" << end_device << Qt::endl;

       // cluster_onoff_cmd_on(node_id, end_device);
    }

    Q_INVOKABLE void turn_off(int node_id, int end_device) {
        qDebug() << "turn_off is called. " << node_id << ":" << end_device << Qt::endl;
      //  cluster_onoff_cmd_off(node_id, end_device);
    }


private:
    QList<Light> devices;
};

#endif
