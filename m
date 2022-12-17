Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D9D62B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E75DC433D2
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671245487;
	bh=OzrVALrCBmV+1HHp1LNJEANLhU5Mjv9LzQT+ImE1E+4=;
	h=To:Subject:From:Date:From;
	b=HDPGOatmRWgND8rplU8T1MKE1tKRHcuTIvyeAJK2qDJ5s9yWd739ymRgPBX+BzZqH
	 C9KSiOAgiZ+j5XxFt+rzn1x78mNGuqHKPduWnD7utLCdsPxmrnhHhamMmLu1W4NAzH
	 QouFKMyT+GgTOmS/pqVVxAQEMgtiQT10Gj/H+b4uXPtc6vDzuQ8qlaledUDslm1Evh
	 JPGrmaDLr2rijSZMavKof2622tCRatqim6PYSrAfZYOTktDlzO3+LyDszDe/QbLvt8
	 5fILS+WjzIiuU1ZPQn4VLJI8grDVMuFh7k7pkPPyKmCPAkRc/mDlzDhH3dPFFd1FF3
	 EDnhz34ha1RBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 645D4C4167B
	for <ddprobe@lists.linux.dev>; Sat, 17 Dec 2022 02:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167124548740.20437.12615261154226696027.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3707957852c9df18305daf0def05a1bea38e6514454d71022205eef8f6fee6f0
Date: Sat, 17 Dec 2022 02:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671245487
