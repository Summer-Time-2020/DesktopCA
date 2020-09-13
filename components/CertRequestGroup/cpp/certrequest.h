#ifndef CERTREQUEST_H
#define CERTREQUEST_H

// Qt lib import
#include <QObject>
#include <QPointer>

#define CERTREQUEST_INITIALIZA                                               \
{                                                                       \
    qmlRegisterType<CertRequest::Manage>("CertRequest", 1, 0, "CertRequestManage"); \
}

namespace CertRequest
{

class Manage : public QObject
{
    Q_OBJECT
    Q_DISABLE_COPY(Manage)

public:
    Manage() = default;

    ~Manage() = default;

public slots:
    void openGitHubLink();

    void openLatestVersionDownloadLink();
};

}

#endif//CERTREQUEST_H
