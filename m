Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 627D41FD0
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:01:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4CBFC433C7
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:01:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689570068;
	bh=2l95jkshk49OMXXjohiiwBL/CtAgYqD7O8op/qmfbRg=;
	h=To:Subject:From:Date:From;
	b=VnEFNbAMUIHxA9w3hVTWAH3oCEytYrMTN3bZWwDBfMB8WNgsnD+8s8QewpMN21WN0
	 T7yTTTTe3TcgmpPH2mnCtoPBzH3C9wSBEYiR334Ir0bOgPN+4LLjiln14fkta6HZw8
	 nKO7GQfO8U2on2e6eV61jXno8tXmWuc6U67f2T9UNTeksA4eyKFBjqf8a6z+MFRseV
	 KKSMKb074tQEiUSHaQH2DgqcilsR45Kna8rXREcHvF1VS1sw8zFrXN7YcDnh1G69zT
	 AR5znl2QvIttXVKDikaER8mu9WMkzReIwVJEIJu6GwA7PV+y9RdstvJNL9NE6JU+JW
	 GQNBNwemYA19Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF3C9EB64DC
	for <ddprobe@lists.linux.dev>; Mon, 17 Jul 2023 05:01:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168957006873.13643.17028235276281247457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cf5d1214e108db21613116f449f8ca5b14d8bb5935d873e1e185ae87d9c1a2d
Date: Mon, 17 Jul 2023 05:01:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689570068
