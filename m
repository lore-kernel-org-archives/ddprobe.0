Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D40E715A6
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:20:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 707BDC433D7
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661566852;
	bh=I95yRtlF7Kp7CX2CEdox3ItynO4QP/hXIYeCcGsoX+U=;
	h=To:Subject:From:Date:From;
	b=BIwQ8VPq4cZ1vhBgkYgKdFMFF+lzFWDqt4n4DkT7stjcyGHqdnlR9Ey4cY5lM7eR1
	 +R+y1k89MpFVCqh8fTYpVkkyes84nIf+7923D9mb0LAdlFXfs4zD8bcloHwb1I3ZCr
	 glWjAhRQCymJLSsTfTkYOMTvAw0PXIwS71as2h8822GJ7lu1WH8jzozOKcdFlMEUwI
	 f3cJdP8xHkknRJU3h9kFABPIga72+bIwhICrX0AoJ6QO3V42hfyqS78HsBxSyS7GVw
	 Z5ucBO9PxqZsljOPZigO2b6mqITNwmIcjzzEfcRrudTc2cSkCwkFBMsJzcPy6t3KQN
	 ltoRHCCe3MN3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 514B9ECAAD4
	for <ddprobe@lists.linux.dev>; Sat, 27 Aug 2022 02:20:52 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166156685232.22753.14938218288071088987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ea23e4c0b7fa3ed7cd59f68de3b105ed544de2a7473a0e1975b1290c8758dd
Date: Sat, 27 Aug 2022 02:20:52 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661566852
