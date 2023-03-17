Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53C5A7494
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 18:22:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 041CBC433D2
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 18:22:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679077326;
	bh=uXJgd58iwFejS58Rhn9O2bSxHMetVwOqkyweZpocMgc=;
	h=To:Subject:From:Date:From;
	b=GjYpN9K5ZPdgdI9Zn0cLGRYxEPmviBNFF+3Q5qzBuzSh7HVRvBqNVJ2WKtN73K4hl
	 Lgy8k4WtC911pK8S+ug690Xbf4H5AbpBMSuwz5hV2GYi7MOnJ09Ri/fPhwhbQftcxL
	 h92F6wrkRZT0xzZJ/7B+cAiXhpTokTerTzSau5qK1tEcIDi+cBtMYzMG6MlTduaHlu
	 rDrPIRBAmepISniESHpoCZWu0x9I/hOTpth+FNd38isv5Sv/meEFZ7E0eYQFkMDpQp
	 VFoKB8ZayFk6Ld9RSV1Obcj/if6cRHbTAeE2NNODVdadlPfBYly+UUQl45tr2rihrO
	 vsAXaSZFQXvEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DC338C6FD1D
	for <ddprobe@lists.linux.dev>; Fri, 17 Mar 2023 18:22:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167907732589.20667.9784300742585408569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7eaec3ef36a8a045f7e0573113c8981943fe25d9464128b59b70adea8f9f372b
Date: Fri, 17 Mar 2023 18:22:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679077325
