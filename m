Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6206C6FC9
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 12:02:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0B2CC433C7
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 12:02:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690977728;
	bh=pElfi7oMzrA5utrVB+uxiCIi1Pir8hl4hwlUG2shioA=;
	h=To:Subject:From:Date:From;
	b=nw2Cw61tW0B0/uPk6iAF15or66JPk7WYyakPisUlKtqie2LifsetS4cALx7Xe31vd
	 KkTbL4EjIfS6dIGfGTkywV6K3VckLS2IK9oqCMHDqo2SiQXu13hDb7gVZa0Enm5Gjl
	 A5In35dERJsYf2rn9tQ/98qjgtLkvcHZCOEBeVoCI1Zyrm3Y1yt7OeOgu0di+r3TBh
	 LOF+7MGWCOd9ivP/QxYzsoKlKYYJTTurpGqQozR8C9twFC6Z+RKZqy00qFU9mTacTv
	 0s0jfB04GWjYm8VZvnjDonhNwjz5nukCBGejTCn/m6gNfphodOTjbt6MK5WCj56DhQ
	 qYvqtK2RKdDxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AD9C00528
	for <ddprobe@lists.linux.dev>; Wed,  2 Aug 2023 12:02:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169097772867.8720.17234660852570062442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 952f248114fdd1801040ae8f0e16d45667aedd569140cea7c15c89d7a07167d1
Date: Wed, 02 Aug 2023 12:02:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690977728
