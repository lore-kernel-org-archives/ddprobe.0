Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F11C12F2F
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8D8FEC433D2
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674086487;
	bh=JbqWtMeYSKQ5RIkLybo8APUqoWOGS+2eU40B/85jWGc=;
	h=To:Subject:From:Date:From;
	b=K5fZGD2dFdp2Em6RWloe9DSooA7K1R0DxboDpk9rnnU3+mCxCy/gyeYLp0f/KN696
	 OaKakRSAyQ7sdaN7ywoKr4A6nG4uZkbL8TgiHM1h3CwsE+6QztnWVCsSiaQ3wWfOMK
	 c3pw4UDzZENS4WKxDYMPeajPHQk6l+OusjpICKqfXH1i284PSQsLxKL+MSi7Ggg5LB
	 sCMioaJ88y1fIOCewMD3qmXhQbHUlkhN7v6v/+K1sRgdQD/KjoUyVOvVnCmQge5fAs
	 zhl3FguezAx+rCBmpSRBDa0oUTnkaoeznZ9hiYKcIJW41yGTFUg04ilDZN5GwMw0CV
	 0437gwu3Eco/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6AE98C38159
	for <ddprobe@lists.linux.dev>; Thu, 19 Jan 2023 00:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167408648742.26748.14532126770086258333.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9320f97cceca86222ef732c8105c9dd1d46cc346c20d90141e3405046d881db0
Date: Thu, 19 Jan 2023 00:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674086487
