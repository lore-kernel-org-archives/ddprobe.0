Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E62E200D4
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 21:39:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3C1FC433C8
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 21:39:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689284348;
	bh=BKxyA+2FWh9UXtXPPVfTNBsxK9IpozjP0AUDHcSrAi0=;
	h=To:Subject:From:Date:From;
	b=SvSOj0VVS9Pxq+gcCk2AlkSbtPAlQqV2Ey3YicWqXYZS8uQoFJlVc1XbHHLptNsTc
	 uIvDnGrZeH/N9qz2uyBLDPietJJ0cS0D+d2BlDpXFMKNtKWytBMSwE4osXiHqfobW1
	 obdsx6/yjU1axqhpRIxfRHgidXKyTUBpsc6wfsCKw1rY0vPKbg9jN60Qu4abDGZKwz
	 geCXcGw4GVrb8uoymJYIAOpyivBKmle5vl64h3SnihUqQ0WHyGAepQrZhv5M8tzZ7z
	 QKKY2+xX6K22obL3YJQm21XN3UXNiKPPiG0hHZd7vzPTIgUUiMIw4mf9txvoCmGpxz
	 sgIlxtuYcsvTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1281C0015E
	for <ddprobe@lists.linux.dev>; Thu, 13 Jul 2023 21:39:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168928434876.13854.7427398643915000472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6470e5221f11db63b218285b09c7d7038209d9c3fe27cfc572eac6b775baba66
Date: Thu, 13 Jul 2023 21:39:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689284348
