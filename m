Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1E856129
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B40DC433C1
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665613253;
	bh=mL1RmSPEReCblGmzEK4hQnSLKIK2BKpOGfoyPI/CxA4=;
	h=To:Subject:From:Date:From;
	b=ecNaG9VZWlO78pBnImNd6FApWCZt8zzVMXSidrl90BtnKY7MhQaAtHSKf5A6+Qm/J
	 MYmITv+DVrEt6dZry4g3YpTlKrwGvmkxhtU8MIrlu9eUO95TsU3ecsudJ+TPv5zMK/
	 lANpGxf7zgc47I/Gm3WuiUhgUGGS86cF7+QBZZtXhYvyv/M7jEslujePwXNRWH98NC
	 WcnbHkGpxeDVE+y4IVSIJqj/Mu9Au1P0ikdnpsG948RpHBs28EwdxRc1zspEQrqPbS
	 BR81eyQZwPLdc3M6q1wrSN2ZwUdJd8QzdFbWLmR+lsiesAa12Hm+CgKwnx2Ix9dtH2
	 FeYG9QBOtNOmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DEE3C433FE
	for <ddprobe@lists.linux.dev>; Wed, 12 Oct 2022 22:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166561325336.9430.9294232666984899395.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 343e76c2f2875d35dc7334802d799e81bdee118862f88c06943707728d6ceb94
Date: Wed, 12 Oct 2022 22:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665613253
