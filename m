Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2EC19B
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D186AC433EF
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675812545;
	bh=hHVg0lK+gI37I9K1xMm8p+LhInLCedIehfkafHFqiVY=;
	h=To:Subject:From:Date:From;
	b=PPXePS3Zt7ltcbkVRRWi0EDXaHu1K0B/xf9wapWnQFcV4BCU/B54z04i0gUKsJUZg
	 8tG0YDhzLPZOLV1tCDeQxE6syLiagZwFNab3lntBbqcZRO5KsS/HNxWm8ckAE9Dpds
	 u1SUVh5ZPVuNy/AQctKLCqjvLSr19mphvMiITMOVxReL4TrlvDfOenXYiVs6zA8Dd2
	 Yfq3WqrdatF9hhr648tLElnLy4pc9+tgEbaP59KLBQdMEY6+NHzji2YE+0RXhJ0aQL
	 lILRF56rWVOHLXSIo7mSIA5w46K9KquqJ+KnhZqxjqtujV2c8oOFnntDExE35M1aDm
	 J0XSYkjlLWknA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B86C7C636CC
	for <ddprobe@lists.linux.dev>; Tue,  7 Feb 2023 23:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167581254574.2046.13681167392120935986.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 651e6d66fd364d97f6f31f5deb0636c7186a28d81c80f20336ff451e0a6a84ed
Date: Tue, 07 Feb 2023 23:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675812545
