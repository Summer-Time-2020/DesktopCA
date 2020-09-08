#ifndef HELP_H
#define HELP_H

// Qt lib import
#include <QObject>
#include <QPointer>

#define HELP_INITIALIZA                                               \
{                                                                       \
    qmlRegisterType<Help::Manage>("Help", 1, 0, "HelpManage"); \
}

namespace Help
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

#endif//HELP_H
