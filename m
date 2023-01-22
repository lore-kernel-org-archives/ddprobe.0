Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DFDB1367
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:52:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E116BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:52:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674388325;
	bh=fyCGQp+aXqeQk/x+qjdpALz2xsCgK+Pm0to0uzxFJdI=;
	h=To:Subject:From:Date:From;
	b=NkpNVrcYYmBBgvp6opdAfnfgo9TXsJWXe/JzemIpZrdkYiqg5wqNZc5ns5wHCkbIw
	 tAeY648OwJ/G9k6x5QhYtQ0ry0WQdj857KW1LCUaAN9tkP3p60v0qgUaQDXtw4Ojbh
	 NMfgiwrQz8n6win6N+Ao2letxO6mRpmwCI+Qu1xcktVgshlvVjXkmT7sALhJwuEgYt
	 nO5GG7Jsg0aREbz2ygXGqIrhQQBp31uN3g+GHbQh58vcgg9o0afSP/hNffp+Ew82vt
	 EyotMXsQtqle9HCdHJxoBex/1eIXjEWjJlczcaUI4yywHMrP051gxP2qyVgv1Ksrts
	 YCWzwg+BbEg/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0794C27C76
	for <ddprobe@lists.linux.dev>; Sun, 22 Jan 2023 11:52:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167438832577.1498.474031685208479365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b5cf73b64220633f3479a3ec295f4d1c1cc0db8a3c00d0d388491419acba8bc
Date: Sun, 22 Jan 2023 11:52:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674388325
