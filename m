Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48EE3538F
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 19:54:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9B59C433EF
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 19:54:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676231645;
	bh=58CQ/5r1xEbuA/IVt9anlxB3o2Snn5fjF4tICwsVEqE=;
	h=To:Subject:From:Date:From;
	b=S6zewy5PjHsUWcWwqIcVAatIVJbvM4/43eJq3kh2NERxVhHDnEFVIvzn/aHcV2pr3
	 k7U+pvup6DZagHFGf8qvHSn1pNTolsAm515s0f2r5YyFUPM4ruCdkoziJzb/mnyeCR
	 03OKxNtJA80zx67By1IjxCBlNnntiNRXtcvGYOP7S5OYwA6AEQZRFkSvIJu1bAbr7t
	 nPEiAtU3zjEDVHWdtfNp2f0008eH9Bh5c1fR3Z0Sx1ZJzMcDY3Ld6RS1jXX1h1pUix
	 WqBQd2OZ58zFPm3bsdTMGDw5z0tEM92I8QjoMfShhrjyQHGVWpZPFiQHg/vHoMzZxd
	 I2XpcLZbCR96g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B68F8C05027
	for <ddprobe@lists.linux.dev>; Sun, 12 Feb 2023 19:54:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167623164574.32635.3543053910448934007.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4621b31afd12bcb35c4bac5195081dc9bed32b64b80a372437799b332f92b4a6
Date: Sun, 12 Feb 2023 19:54:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676231645
