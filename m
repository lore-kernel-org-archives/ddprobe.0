Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4DA027F3B
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 03:52:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7D33C433CA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 03:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1689997928;
	bh=2Zbf7wg4vPuidL18D6obrKdF9P1IajV/40ybqClrsyw=;
	h=To:Subject:From:Date:From;
	b=SF0lv2aCoqY2oPaNxZCNPYP32dCObxWImS6cFO+aypYtaNF8fCwuN73mSxT2Q54z/
	 3diYdnf50Ki+9gG2ZYux8dIWmO7mOepWDR3v4KZBNDKD0VNPiOCMVoBkaRF35I3OYW
	 cNQf5mMUkC7j1s/h5ejTVEpQDdAvfKFzBK1C6c7e5eIhWkLMUHda0The2XObL4v8sv
	 L9P/XdH3Bho5Jk6XFy1fwR0AE3nyUkyWBA0iE+mOOlwxN5X2s07wlzYaNEKBfPYWtN
	 0IvbO5TSh8uQHjqD7K+VtD6flUckLQeYKeswp0Y6f7fC8Oxb2nRj81i742wjDB3F4g
	 o/LjK2rdKCkfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B31ECEB64DA
	for <ddprobe@lists.linux.dev>; Sat, 22 Jul 2023 03:52:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168999792871.6353.7227496682257616926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0380f24f0bc811190225c60034266b01160c46862877f7dadca72c3c110b7786
Date: Sat, 22 Jul 2023 03:52:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1689997928
