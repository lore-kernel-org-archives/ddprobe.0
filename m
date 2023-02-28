Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E207636
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 02:16:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1278C433EF
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 02:16:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677550565;
	bh=SKepufN5lwQXEJzQUkD+3jbOGoleA9qEjhCowwOsh4A=;
	h=To:Subject:From:Date:From;
	b=BlM4acy7NSgZgRxwpRb+R03VyY9YT9HHsj3S6k3fHPPoBzLSH3bjw3CZuQsJfgsoy
	 WId9auYzXTZmC0swC1uyQXaL7Y1naabWvS6Jh+9HIpKflNgmycrWLsI9eCoLmHHBKh
	 B7lGCS0fRe+lG1CVxWe19Us3Zkkx75jwCa3dyfdhBwasYMK6WU9/gYN1IvFdjO9rZd
	 u0YBwKZ0ws2IUSjf8xgBe5ZSRelhgZgFMDeNebJMyLyc7K5nV9ShSqMvZO8ORnDWMh
	 8fDx7ebSn5fJnEDnCpV7CceX5r8HDUD/F1Ccby5DVPTFMF43GBilMeUoFcgxeaotzB
	 hmYR/mJHcYFMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC523C64ED6
	for <ddprobe@lists.linux.dev>; Tue, 28 Feb 2023 02:16:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167755056576.29397.5741238304840363612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2da91c6c514de18903405ffc384cb5e4b4498a2c1659945c821b77068687d598
Date: Tue, 28 Feb 2023 02:16:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677550565
