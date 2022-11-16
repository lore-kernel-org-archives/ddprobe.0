Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BCF967F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69B87C433D6
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668583854;
	bh=mbaydOin1DAoV7d+JD/k/GlkGCekmcE7w1uJ3nelfMs=;
	h=To:Subject:From:Date:From;
	b=iHrwZnHKL5Z88MCooWuKivuW6dVwqFKf93rk50EYvtBCayLxp5fvmYoeLFIeQdQOW
	 E0jZp2d0c1xi12eAmf01lYFmzS5cHoSqB3Mb8EFBDYf9rnaW6nwoHwmUDdV28haMcn
	 w+COpoo1ULJxyegpUVl6xZlZhMb0DCO+VvF3vVciIOlMe3Ibw4iDalrd/O6rp0c0G3
	 6PXwSGZwdEy3Kb/aH1HgznVYQHrGCfz7bRXBRqKc4KT3HI1j3H2vGlO96dLc87x+ix
	 hu5Io+QCL9yK6T9mShNnbKtMOR0nznzBO5UpMPapZgVA1QUrdkn9+BYUt2mOh7NYHU
	 /sn2pt8siax/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51EE7C4332F
	for <ddprobe@lists.linux.dev>; Wed, 16 Nov 2022 07:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166858385432.21219.10611971080481312349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a6073828b675577654553c3175a23b042deeaca9e7b6b4ea32228d9ff5d8952
Date: Wed, 16 Nov 2022 07:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668583854
