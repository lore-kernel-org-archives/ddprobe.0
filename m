Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C83E933E3
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 718F2C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667084454;
	bh=E0FWCDdO+HCRsm9ggT9my8kyaw8Xz5HZoB8pUjXIxrE=;
	h=To:Subject:From:Date:From;
	b=HWpSWsRGJktOjc5SDRtrYUI1WBMfjL/z+AyIfrKkx1lMl6JFDY9f+5x2kjcJLkz17
	 jufZvOHbDMdP6OllhFkj3AorKAi9k6wGTg+NFFn3DagnWoMEwRxuunrYsdC6MeHR3k
	 Y1WJ6sjgVEl8iLnoXKksiXsjiX6yoGOn0Fl74GhmVEyGNH9/hydNzcz4VhQ+8sF8hQ
	 hoPZHW5t9ZUEvWcIDhSyWuukzRfpjo6BtmwVoVKiVJYkDiDFJ3hgtpMcvqmBLZI5Ew
	 QhQjbcODgeI9MJ9DgV74qeS+G774LwZ3mTaaTkO+swBCz4YgwjPQXL1IzzUeGQIbtf
	 Lwr6a58LhaCgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 58013C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166708445435.2556.12312038201207927083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a70765f9ad43309bc930cd4f04df94eb3fe592f827c221ed1ba8a13db0c40f5
Date: Sat, 29 Oct 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667084454
