Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D51F42F43
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8E6BEC433EF
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671402687;
	bh=rFey/IPlCwsckZet15nkilfkyoEC0+QLawD3rMDo1cY=;
	h=To:Subject:From:Date:From;
	b=JyGDPWynsVOI1tNjBXoRrMcixixi7r/y5Y136JqspEAK9IrBrH8EH3LEP7bpV2X9C
	 TS2rWFSm5qJWasjhr+G/jCEJBzQOJT2yuHXdUM+MjbAjnr9J98HndeFGQCOTYnn6kj
	 JEZxnz1ILtTIZ49tGXhPrlGAjUv0WUEZm/pwgIlIEgTM5Y5tcftXOfgWGbFj5Mf0Gm
	 1/LEeKslaYvNYa+Pq0e8FLBI1k9XtkkyFTwLdaNmvj3eqYFN3EpUKpNNRJxgM/Ksbf
	 jLMx655YLHpQRhniqaueEiN0mQWYgt8/xRpEoLvYFYCCs9F5pDzQbLx1G/JKQ7QgbT
	 YpKxGOvj3ZZiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BFB0C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 22:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167140268742.16137.10688951444066407743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4e523e24df8155caef73ee256f55d29a495a77fc96be77c275738ebe4f7b73
Date: Sun, 18 Dec 2022 22:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671402687
