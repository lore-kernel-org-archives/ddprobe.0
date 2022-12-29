Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2ED51FB4
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 11:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 91224C433D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 11:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672313487;
	bh=5pW71CEsUzLKdQCcd89plmJNSjRQodfvxwdpg62wBbk=;
	h=To:Subject:From:Date:From;
	b=OXRCcczUS83kw6aFAp2KGiWC7BxgXqQ2+ZE/tWbb1TtgbLoZg5Cz6erXBATojwtcF
	 VKf07r+YvbgXZBIqNhEJ0WMC/1KmTK3gu2YMX+AiiQNDlu5mNfwD9hHLQHCjhID42u
	 XZLGmwn2nClb/ilJ3IuWWpsjJ96l4Xd8CxbHxMFlrSrUk5+VTtdTm6bHHj+iJJGxGH
	 e4gggj+LG5eeHSm0G2sZuiSzgYamyqRShybCUCTD/OfwFBgMzB8LlpNK+r66Uw5fyj
	 ligIyHOKw6/k2/yzusnXb+Wl2rTeAlCWq1Dn5mcO/uGTmZRHbCHCuaBWREkRcTjlGf
	 0Icj1wMCFhx1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 72806C4332F
	for <ddprobe@lists.linux.dev>; Thu, 29 Dec 2022 11:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167231348744.29286.17529990593367864765.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7be756394aad23cfafcbe5a26456295798c78667901c16ff420912381676a4f
Date: Thu, 29 Dec 2022 11:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672313487
