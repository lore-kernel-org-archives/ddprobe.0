Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB720EA5
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 11:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7DDBAC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 11:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671364287;
	bh=bzsIAUBXC1Pt2Wt4jGuP26Euc9A420kSsaQW2iLSurQ=;
	h=To:Subject:From:Date:From;
	b=a90frbasXMPQSLCQjuvprU9+TgWXfKjRpnhPwp4peAoqlW909G/6NKb83Xdaf5qxK
	 2MPnXM0D9Kf7P/ySmGLyHVp/Rp6EjuVhS6oe1JiQWnS8a59+qTdTgpN6QDFrA3uvzm
	 mzsXJyHK1b8ZiC7u5idW4CEh1RQs/3F3CZDNeC70BhFuWog+13UgA53oUZDnL2aTzS
	 DqKqilsJcyLnaIV5qREaj3owLvqXfaGjs9fIoZEC0VE6M1v5SfKkx7jmMGXyHe+CYy
	 aVIjxrd4HE+i8x/bjdd3NScFCnqFOtQIYOIGuAS0Z4DwVe+x0XVdVjDOtl7NFS1ZQ5
	 UwEVFBvkZZNEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6075EC4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 11:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167136428737.25540.3860609299536156035.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd0e936083c728b3fa6f1c38483b286f0abe82a63e883f56ccf439f6189837f
Date: Sun, 18 Dec 2022 11:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671364287
