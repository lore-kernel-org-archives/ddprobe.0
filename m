Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DA3C67C
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7B25EC433D6
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663425653;
	bh=BeNxvEThUTv7+bMM8ElHsewqXTnHJP2j3FhNZ2daEU4=;
	h=To:Subject:From:Date:From;
	b=rqALTb/bocBV74RUJVjPlvkYQx0iiITiA8mVUu869jM8fBnHqoVTIcepIXfA77fTb
	 txJVgjXXIFeT/uGV8s+yt9Qpc9q29I6Afnmpv1HlvNWsTR1hCH8OZGD7Cq2HZimSP1
	 ne2hys9f42DVbp2YRogrYgow+EwJ+Ky6/pKGTKztnSO0t1eyUGKQlsdFVUTnl4tjCj
	 bjfuQO0nD/HL+g2S2MQhzG8d6QgAF0KTCb1GXQFGU6dDKvvnz2xbrrthVhI7GHTjF6
	 f/B6Iv3vT29d1vfUMDQyOV1v4H3zmv6vz9QidDpZNhenKatl9Ggxk76BEEyN3ztZXW
	 XCLhq5400MReQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DB7C54EE9
	for <ddprobe@lists.linux.dev>; Sat, 17 Sep 2022 14:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166342565333.15521.15470380554585277634.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b10005defac0f2a67d874712bbd0a4150a153e7aab03d9a0aae3c45ac4f5f8a
Date: Sat, 17 Sep 2022 14:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663425653
