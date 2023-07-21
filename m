Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 507301D2E7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:02:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9162C433C8
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689951728;
	bh=jEpRNK60+T+h+Arnvi9asKXKzd5XYtOuLP3+/acnPnQ=;
	h=To:Subject:From:Date:From;
	b=h69Rrp/W+zXQtWq5K7FBrq1v0wTjMi02ANysvcUbex2K/nLgVP0MWkCG2MYG66uhe
	 Yy9mg/LHzbBowmHvmjPiwllU2PXMmXV+5aG4dQ6YY5gt/U7loa/1hJRugcWgeWyasC
	 dwh2r4lvMLyDmSnlFta3cd/cTZSsfOCFtx5yTliibUtfV9Vjtgkeu7f3tTNH2tTmA+
	 aGD/yT/8iSCyVuzIBJgTgoVq9QERB60tzsp7VkCoUy1+UoWKxssSagpgdZEmkC21iA
	 dR12f9cbgty2COj5gZ1tQRU99JUdn6v2KDTtvdXvxjSZ+xNsVQ2irddEdX2gE4kBbu
	 gxCma1sOx1IVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABF15EB64DD
	for <ddprobe@lists.linux.dev>; Fri, 21 Jul 2023 15:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168995172869.25973.7412385490128294363.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c67275b43fc0cf182e10651e806d00ce3438e5d356b4cfc1be54c0c8fa87f9
Date: Fri, 21 Jul 2023 15:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689951728
