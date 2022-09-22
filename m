Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A54E61854
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64CA4C433C1
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663849853;
	bh=+aFm8VQ4OWollH5uRPKqfx/Aj/gc/Bez5mE3Z+T4ZAg=;
	h=To:Subject:From:Date:From;
	b=UbppcAMdSq60jS+4FcV6juxk8ZQFO6QEos6BgDNvuDe1m7+s+on9qH7/XOmm5i3dW
	 Q3zUqSug1ge0idoJnM/HqNwUoRzT/tZG7PVnkou8xYmvj2KFmjAKVGbTz69ZaOkC6o
	 5vSaswpw9p9Gzh6tjf03zWMem/YZ1o3mH06aFwN5mXbhAiDO3PIqLnojYuuE6FTBqz
	 D7UKsGYT3kOFu8PsUlRxSv6TuTWfdH52heVPJFN4lW03kbteYFYeYmEexODgw10JCQ
	 rXI4OlSULJoarwbt0hL+x1BhyT6L2/XL4cd+PsmLOgiq7eTv7GeWj8a5c2GFkzNIvZ
	 hw+6I0tpr2u5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50C7DC6FA82
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 12:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166384985332.5848.9763061851035125597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c42b7a757355d734ed05f17bdada8d7e6516e68f36481e6e5a265b3b7339e041
Date: Thu, 22 Sep 2022 12:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663849853
