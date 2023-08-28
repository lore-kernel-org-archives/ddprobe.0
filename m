Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64D3212B62
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:34:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3B3BC433C7
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:34:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1693233248;
	bh=Ohf4IqDjIQrFCcsgA5PDuZXphgD4muUajpCH4zp8xVM=;
	h=To:Subject:From:Date:From;
	b=hzyDpUF6kT5/MHiGwIaeMD5F3eqS5AOedzf79T/jGLT8TjfyOZm4ijtxUDkGzKfPH
	 VZrH9MBZaGcfFY2VrZN4qc7F2HmQgdxPu+VZQZ/4ww78pqx209F2Ugu8xAUf2UqFZp
	 J/GyXp0T3+el+Q3P4WKKXsnYakrH5hfWIuUZJXygCCbMbRRZ0fkW5dq+ZovGzok4r8
	 8m132vwZpphM1LK1VOl/IyzTL8TpHBB7GvsEnS+2O0qkMpEnezQ/qVJirLXj41t1Hh
	 kgDvY+4j25DyIzN2ntK7u7u7k0lpy494OT30dQKjfrvgmtbivm/JMzF3nrnuM/s1na
	 gQ2Kp9sDqF7wA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7A4C71153
	for <ddprobe@lists.linux.dev>; Mon, 28 Aug 2023 14:34:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169323324868.10218.5939197565529737871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d1a06f14c5a2fa6cafe2af964d3db848afd640086f003f3b451a27677e78f1
Date: Mon, 28 Aug 2023 14:34:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1693233248
