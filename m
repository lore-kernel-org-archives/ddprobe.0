Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A52151117
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 13:09:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 39D6CC433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 13:09:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687007349;
	bh=fLHEENHYdprbNQHo8C4NiwlpCLXkVc5YE7PDuRDBMtg=;
	h=To:Subject:From:Date:From;
	b=HDrrStJlclM3CdA+o/g3HKgT0tVldhVr1lqSCrW/k/hI+dRidk74cqzgdke1HHMf6
	 gHa+TeVMvLQyzKS7oH2a0iMfJQ3wwR+a5Vuep7Pgxug+psJ/UQ2w3mcnYI+N2x8lGK
	 NUQ2/TN2Kw2lTvtYwBra4nTR4Zp9cbwchq+vSPkDL75oAduVGInSdC/vAIdxBXtxuQ
	 mFAl25scraWDertR+sayqlBuyTwf59iWhDJLpxzZDNpM8aAALBOZb+LESV9LlRqQEO
	 KhfAMWF8CO4gr2ho5dY9DHteTV0iw3tZNqM9My6iom/63nCqtbdJdnou+1WGQE0Ucf
	 3F4eXiWKS+9mQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 144D6EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 13:09:09 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168700734905.23282.8149244483383077770.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9903d3ee823c733f092ca6e76b266be9eb986252782560b433365e4356b1484a
Date: Sat, 17 Jun 2023 13:09:09 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687007349
