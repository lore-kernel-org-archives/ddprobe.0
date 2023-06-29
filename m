Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71F6E1FC8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 05:03:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CA0C433C8
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 05:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688014988;
	bh=yZY9q5zdGjXFuaM/L65u4JQnVAvy+VHE96Ubti0EoPY=;
	h=To:Subject:From:Date:From;
	b=at1PoWvoNzkfb/xLlcHgaBiG8ofaQMjoIFvjCN0uMoDu3NXFWuUc5gjGLlJzIfQZB
	 UqcRfLgBxfuXTtEcMx53D5LPgup0Lpt7O7q4UE19xpgTSoOgCMr6PjRer4ZUmnKjvj
	 vvnRyGJJa78maPjESTcSQeu5qvUKl551SXIzS373g2BfkUp8B/NAxj82rlrjq6f0mU
	 iMuzsJ/FyMDhD4ZWyI2g/ryWyweTo8Fy9k+3LSCujkfYae++QBsu/83Wh1gqDaIMtp
	 5LXkpXvDsIAf27TfBKr32ZCKj45nvkg0NsPkskPPQi9qc3dDEKhlFjt9sc20hCBS16
	 XUkVIjMvYPv1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A79C6EB64D9
	for <ddprobe@lists.linux.dev>; Thu, 29 Jun 2023 05:03:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168801498867.15527.3584086476425190802.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69e0193ff365c36af38905314baddeebff18cb2076a578a105fba0a14749818
Date: Thu, 29 Jun 2023 05:03:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688014988
