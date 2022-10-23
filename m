Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B64AD626
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E226C433C1
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666510253;
	bh=LHeYMSVqP9dYIZVjf2sMmgWFiExnQlbrA6WVPrWy3cY=;
	h=To:Subject:From:Date:From;
	b=AzP43Y/K/QytWlAryZxz1+SDvlxsUXUBFGu46s/NL7HM58MKWYm+5n5RsirTX6b0g
	 MPthHd44bC7zwTWZjlyR0o9Scc2nh+axs7kjmDhq0cmekGn/zIUffO8TsDI1Qn/zEV
	 6bU5NqLBEZyiuZGHjKJKXTiYvMIi4jFwXoy24ogrlC09KhJ4AHUEppciyeWr5E+dVE
	 N2S50Tol1YwuIH7/ePU1YfepqS9IfTc1q2H0aR/fBJ2aO+Yt95DW76gw/ATki/FShD
	 GkgYAMiZWqf8JoTjVvMy41MrMJP2R/YXSsQiXzYQO8R2CCA2tgF5kGDas/A/6EDnEr
	 Winc00cTZCCGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 566B0C433FE
	for <ddprobe@lists.linux.dev>; Sun, 23 Oct 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166651025334.2278.18412329621466087714.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b34dd525940bea38e79b7ca29cdea7250ea08643a48a544ca5016b0e30e8ceb
Date: Sun, 23 Oct 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666510253
