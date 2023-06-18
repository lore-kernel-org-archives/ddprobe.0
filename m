Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69571A23
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 04:50:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0076C433C8
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 04:50:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687063808;
	bh=iglF/MDLfKiTMI6QxPXiEckoq4bgWmFIcF15+Izk808=;
	h=To:Subject:From:Date:From;
	b=hDbIuE7OVMEHQ2Qi/JcRWVu3F1zP/dbjrij96OHslPPqdxfTu3TL1akmRMUmATzvt
	 AVzm4nCybOFUuCtyzskt8qw5C6R+JqfnOX1Ih97yv/WhZUk1L2bSIzuHd9j14LzijC
	 HyEe88ckrKCxdgZkqFm4ReeeiOmeAR79neFeZqFonv8zxXQY6OCFE2h3JsJFPek7nY
	 RSDygVO6atEEgm4GxCk8l2h0uw619H1wDOwUJTfUAh9CvBz7O9qQMndYOD7rVKLoXv
	 YyiZdSWoYFb1HEPOczT43a68KajzeuTtFKVOhofWYmYOnxg9i/kADUahvyvGJFUszU
	 B6UO6r+pqpUpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3537EB64D7
	for <ddprobe@lists.linux.dev>; Sun, 18 Jun 2023 04:50:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168706380866.32549.16059269068366066719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365e94f57eafaf5dfa5ea411488f28ab47672fc42d6204ef200b8e797e5c2d21
Date: Sun, 18 Jun 2023 04:50:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687063808
