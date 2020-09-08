#include "certrequest.h"

// Qt lib import
#include <QDesktopServices>
#include <QUrl>

using namespace namespace CertRequest;

void Manage::openGitHubLink()
{
    QDesktopServices::openUrl( QUrl( "https://github.com/Summer-Time-2020" ) );
}

void Manage::openLatestVersionDownloadLink()
{
    QDesktopServices::openUrl( QUrl( "https://github.com/Summer-Time-2020/DesktopCA" ) );
}
