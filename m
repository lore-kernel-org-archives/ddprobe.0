Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35B717CB
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80528C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670997687;
	bh=sQPIIvQ9OI12iYlE1Fv3ni0n4sAqAOMkutdJ6ILtFzg=;
	h=To:Subject:From:Date:From;
	b=FuDAN03+jiatbXVwQbfaxEOyEJvEc8YHw/48hB71zBTZP+SYm0IvQJS3eBXePYyhn
	 /J6GBIDIWoDviXUgBdaEUeQglWEQw1K5xqkoa6+J+C7rGPqEYf8updvfgofFHFUDcz
	 S9tFRqV2S0BQj00pVzes5AywmMxOIxwjPu2KYMEhwLVaQdtkSS6y+zv+RcfOXgDnmW
	 9CLrrDH+j2tTL+CXfW9oF46GratmlcfPWxSm5VSrcORGI1hZ6HhgJSGWuAXwdB/lDK
	 0yU8PJOPlsCUgxF261X7qOgdh3J9aNYiCsWwCSU2URpHJ4IYTgtfbsRmjpwkepeeqj
	 V5gpch02C3Xrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 61018C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 06:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167099768738.9913.9264661114687306263.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6a8e3e023342ded84df8d1dbfb0351af4ed71ba5396df40e0d9e900f4ac914c
Date: Wed, 14 Dec 2022 06:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670997687
