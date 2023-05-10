Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D7F0388
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 00:31:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC27AC433D2
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 00:31:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683678665;
	bh=H4HdIHC6wm9UL42a25Utqc7fNGyuGA7YttjglaJ92N4=;
	h=To:Subject:From:Date:From;
	b=WTYszPlCurqopjYvBqL/bDWvtRVQRE7tHU3e51cKTAqf6tRiem2e1d/XiXCdiIGt1
	 FFjgB0REsyiGCUqoC8TvAXQx8OKIp3sPrj+Hg4EMtTDheLa8vCbJDWEGjk1A7ZvxBU
	 AjaG0+eo7Ksj6TChrQuavlxNj4To1+3k9/oFX+BN1deGlbIif5n0gXijjZTp+asjk2
	 eKhowczvKcxfBaCc5Jrog5wRD8l6Cb6HrZFmP1ttkj2tDDQcN19xEDIfY/kJIqb6mZ
	 HrTSWB0b+49Ry9ygW352LAleYMsPwTAYWTwXdyW6KI7+YXV8kVX5zN+GXjHss7R+8V
	 NW47xCQi0fiAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF651C77B7C
	for <ddprobe@lists.linux.dev>; Wed, 10 May 2023 00:31:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168367866577.12129.3313191340774060768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f264beeeb02162e0bbd7f0bb2381ac139fc3bdf95259ca89d6fdfcf4f83f526d
Date: Wed, 10 May 2023 00:31:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683678665
