Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CA7E2657
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 783C9C433C1
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670485854;
	bh=28N/5jHregqC3ZOplz9+X+d5ICcleW1Y6Q9D4D33JgA=;
	h=To:Subject:From:Date:From;
	b=IbNXw1OxZbSAdbsRdLIX/3hMcYjAwOn1hcn68Rl02rRG9kSZv8E7ZqolO/+5Kuqwm
	 hFBQ6NwGdFC4knaIL2PLaEyzuQRYr0PnSE4AQedLCZSc2C4G09DaQBwhzN4meKM+Jz
	 OK82X/RRpnw1hQFf4bqBPKwch9hKegjRgy18/8JMqhEG8tptdl4nC3cnAu5shf4zF5
	 5Vfx2S1/DP6vmF4R1HRtDh0d60M6v9KFLEME382dk8MzgtaXVbvXB3k6L84e+PZ6Ws
	 BOYdcsgv8kn7e1tMoQGYhGCjKy4GMCXl9syoBvAqoLe0xMpX+vr92SnG1kZG6ufx4j
	 wq9yOBi8Kw3Yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56C2BC4332F
	for <ddprobe@lists.linux.dev>; Thu,  8 Dec 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167048585434.6067.1846372432787112012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34a97aa11e2db69daedb310859291e92686826f44a92dad07fd5890dd9548c22
Date: Thu, 08 Dec 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670485854
