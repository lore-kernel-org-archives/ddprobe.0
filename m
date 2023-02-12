Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A9EE2FAE
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 16:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C4AC433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 16:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676220845;
	bh=B5ftKJFk3ZC+Iw1Q+AW2TQTTKn/phZ40Hig5m6eJfe4=;
	h=To:Subject:From:Date:From;
	b=ejeLMQ0nHXYlvBhsdJH1MdFUur/YsE59trqt/W6kAvI1X7jhbB8Pjks83uBTeNy1W
	 XZpBgstT33/bcHjvv64H0NuoTIa8pT4jqmoRHRl6XFTsmRFswnkfVIDz1541WIZktm
	 E+15IjPoENDIYyPvWNlERZXj+O0xgavgSF0mAcMd0ZYSuMsLX2iSRpRsFpnxi2UJfl
	 tCjQi84AYzWQv3jndSeesZxdm9+MXvoBAxvOhLelwnhgPhuRZQIJph9mUvoo43pQvt
	 Ya2C95w2QonHUgpNmWe0d+7BAsdd3sbY6dEd8EHhbHJwUj67GiIAAh3kXHTgaNB56T
	 f0oP7Y+ktu/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3F00C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 16:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167622084572.14643.14218417289294199284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d061bd40e51b2d516a23738156ab5f75630933c1d9195be92178b27a78e0afa7
Date: Sun, 12 Feb 2023 16:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676220845
