Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D4A1362
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 06:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F3E8EC4339C
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 06:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1682748906;
	bh=nRTH+WrFM30fIN0YS4t0hdDGIsuQXmtR1GwDrCBNSH4=;
	h=To:Subject:From:Date:From;
	b=Ngx6mpb+iS32Wf4zs4Ll9VGyMa0ug6/azampZGnM//lO2CZYBH/eSNUvZ+nAOPYBr
	 qnIJkmFm1ry9RlCJRbCff4L0d/lh1wi9QJqTwCs0g9mtI3JUo0NbM2qz460oDtT1Aa
	 IrMhHhMigK1tTZUFJaBqvanZNXJYv7OzeNRtQ6NE83VvPNbj6IkrMheZ1lK5M/RlI3
	 WNTgt4A4aQb0JfTZDThEDiswnuxqrwsF6Bc7j3JtbGBhjzayP/gjFnpDyA1OLxNhtU
	 3PC5JaM14mbVjTsfm6/ZJBG0Nsut13drXmLyTDFgps3wdu2t+Ve7zaLdFZzZyxRXbN
	 xhHvCYkOuFrSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE810C7618E
	for <ddprobe@lists.linux.dev>; Sat, 29 Apr 2023 06:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168274890582.9568.8448291026324407967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac9ac0e4c91684d41e840622089353eef2ba27ad1b3b8596a871e95082e99c7c
Date: Sat, 29 Apr 2023 06:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1682748905
