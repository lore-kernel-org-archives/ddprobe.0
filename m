Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B7EB20F4
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 07:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2C0C433C8
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 07:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693293848;
	bh=MclkC4We+WtuD3SRE3sjZjqIpyvn7u0YxYJ3mfq9ZVs=;
	h=To:Subject:From:Date:From;
	b=DeFDxv7PLqVazCV9CQ3Hcwi9ceIQ4sSlZaSUeG7iY0qrYpEg3rcM8nWRZsDZ7BhVR
	 qde4/35gCx5KBDWipIeaGXHg0hM6RnC4GyEbd0wxAKSkzP5N/4Sg8L8XkYm4Bge8ft
	 89FqyxpMU+RWZOHSd/J9YC1YMIk3SVE6XtQnNH07BCs8aLQR9ZgEH0A5Ls0gClgHEO
	 yiqgX5tgz1SOn619LNIBJuo4wEdX4sTi3Gro99t08FJQGOSHKKrkoEp/SC0r8C/zEC
	 sAWCQzmB4n011L5fWEKqEnxj3Afelj8ED4WKo+ANKrF86nMxPHcXSP0p4gMm2k55/4
	 jPq5nmPt5rSxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B602BC83F19
	for <ddprobe@lists.linux.dev>; Tue, 29 Aug 2023 07:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169329384873.10188.5926222686283314904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57eacce4634b049f779b905684c685621ede0a2d8fafdcc1f71b983947972455
Date: Tue, 29 Aug 2023 07:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693293848
