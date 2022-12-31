Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E44152564
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81479C433EF
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672476687;
	bh=A+luTV3NXQVd5J95VKg1uhpQ37OdtQoWbcUx2B5CT0w=;
	h=To:Subject:From:Date:From;
	b=ExaXsOD6SJiieVTGM0/0hhqfe+bKsCoWxubl//aBJX8eG3m1/bN+uSb5HKN1Ggt0D
	 j1QL4LWhawwSYUUiKY4Yv6IyhPY/r79K9kdveGwgvRtDoW0DRbza/elQQxrOs6yJ5q
	 w0YmIzF3a5ekcMBcgw+qCt+5xsS21XteZ7SMYYdnuwQ6A9JdQjzQnf4dg7sOHtz1rM
	 zaYFvJKn4CC89DweT8MOF+0XWOksIVycY33iV97sERPPj60HAgoF4+DVS/pvSicC8U
	 6UU1gHuF1ryMmAhmZ8W3pSkUF/wEQ2LZrT1caScXreGfUfalCyrJMhio2RYuEZID8n
	 Gg1MjmnGHld3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63CD6C3DA7A
	for <ddprobe@lists.linux.dev>; Sat, 31 Dec 2022 08:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167247668740.5703.15351466284546557163.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd3eb0215fcb00624bcf7cb00da69eac16e0ad86d4b4364f9f3067b6f6c81510
Date: Sat, 31 Dec 2022 08:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672476687
