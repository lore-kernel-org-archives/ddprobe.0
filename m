Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BDBD19E
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id B59E1C433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674088287;
	bh=V4M/PDtnqxFNTXkj7lVvvvs66hWQDVFJE7nHT3JIRaw=;
	h=To:Subject:From:Date:From;
	b=ap8uvUZ+bQ+QPuQ0CrPTNQe4O1/bxsymnmsh6Kh/wl0sTnVPVRdRINDQdw6DOleSu
	 j8VLfu1t6C8u4XbDlrr561V5mIy+Qg49nvcyJ9XIHb/yj/usSEWOlbCBCXDo8KFJH3
	 51sbSTW83SgBEjruygd2a6TBMXRnkdr64glmzuagpd3Hq9pKDvHxuGT+l4EqVl7ewR
	 l387d9335sGv8EkkVwl98nPZVLiF90uWEolB1Y6sTBE8VAK7urTY2vBXTvrOtgQbgk
	 bh8x5DJvYFcQspP8wt3oX2neNGGwIYxMO5KQpOrjZvGCbXkvLO6R+gTpoyq23hlbgL
	 Cxn9HMkzLSLYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DE0FC38159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408828756.23303.1625104613305201769.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b4a94d482e9113174e3161018c5c2572b098de3303a47c174f3f36cac687fde
Date: Thu, 19 Jan 2023 00:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674088287
