Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BA808BE5
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+7ZmTcQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86D90C433C7
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1699790296;
	bh=9wTDf0xAMaG8ZB2pqmB3hU4KUOhemvudLVU8HzyyoqQ=;
	h=To:Subject:From:Date:From;
	b=m+7ZmTcQFf1jGOU4bYqYod4Aaj2GfbZMaPqqtufXEIzKIxSnwPEVb6ZncQbcCp5j1
	 i8UsmyDTxKY0goRZt1PP6W8OKSAih7ZjkuqtSZtg4r61J7y4+Fy4VO2cgjOx004On/
	 lJp3DmGzhXEAhiXc/EkqE5QYWrPgmHhNAd8k0AF17viCqfnGgJQfwAZV6Tou3YsG4n
	 lFEXQi63V8Zbg3BNKY0EUE4vnpDk4plaxhVf0gBH15qevnBFS0J1D4kIFUiK7F4VPy
	 MizfRhz6CvFi3CHsqhK/76YYo3WqOZGQNusR+ZKZuPyZ3amTfcNWfM45qfH0H1uXCZ
	 ZEQ7oKKbYSstQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C816C4332F
	for <ddprobe@lists.linux.dev>; Sun, 12 Nov 2023 11:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169979029641.23414.8717232138265172619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6925553071b077d8b75de40e45a54129ce0b4e796dd591b215034d0a721a7c55
Date: Sun, 12 Nov 2023 11:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1699790296
