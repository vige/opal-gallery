# 
# Do NOT Edit the Auto-generated Part!
# Generated by: spectacle version 0.32
# 

Name:       harbour-opal-gallery

# >> macros
# << macros
%define __provides_exclude_from ^%{_datadir}/.*$

Summary:    A collection of pretty QML components for SailfishOS
Version:    1.7.0
Release:    1
Group:      System/Libraries
License:    GPL-3.0-or-later
URL:        https://github.com/Pretty-SFOS/opal-gallery
Source0:    %{name}-%{version}.tar.bz2
Source100:  harbour-opal-gallery.yaml
Requires:   sailfishsilica-qt5 >= 0.10.9
BuildRequires:  pkgconfig(sailfishapp) >= 1.0.2
BuildRequires:  pkgconfig(Qt5Core)
BuildRequires:  pkgconfig(Qt5Qml)
BuildRequires:  pkgconfig(Qt5Quick)
BuildRequires:  desktop-file-utils

%description
Opal is a collection of pretty QML components for SailfishOS, building on top
of Sailfish's Silica components.


%prep
%setup -q -n %{name}-%{version}

# >> setup
# << setup

%build
# >> build pre
# << build pre

%qmake5  \
    VERSION=%{version} \
    RELEASE=%{release}

make %{?_smp_mflags}

# >> build post
# << build post

%install
rm -rf %{buildroot}
# >> install pre
# << install pre
%qmake5_install

# >> install post
# << install post

desktop-file-install --delete-original       \
  --dir %{buildroot}%{_datadir}/applications             \
   %{buildroot}%{_datadir}/applications/*.desktop

%files
%defattr(-,root,root,-)
%{_bindir}
%{_datadir}/%{name}
%{_datadir}/applications/%{name}.desktop
%{_datadir}/icons/hicolor/*/apps/%{name}.png
# >> files
# << files
