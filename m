Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB22033D1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 18:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AB34C433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 18:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663005653;
	bh=K5Kjq0oMVXGeD7/Az9/9K7hsfB/o1EmI3lmBVS0PYrE=;
	h=To:Subject:From:Date:From;
	b=Ei1pbHNVxWB5Px8W17sgzgbKJugzkusmR0LkZAS1iHejlewCt6lRHkjjLrmoPlj5Q
	 peD508cPHSfXHMKwiWaWXyrA9jdZ29FRyQpXz2uZkqxoLLEuQDdWLqvxevkfrUFw6O
	 sBn/UGoqL/w4L6NDNpwAMHacm8ninDtjuzDP9d1b741vE6JK5+CsDfJF3cS51XTrhp
	 Xt43cZSQTHVxuEZ3gXyeApm4GWIXTCZlhH0KY9FLOqJfiPPva+JBKVu0OyGUEWfCqu
	 P6X/oA3ofpR/ysnbdyzQV5yziPOMRuRm14X+4+jgGH1HCmSFyn0GJjG810xDtJVwPB
	 mn7kSyUKHXjEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64BD8C6FA82
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 18:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166300565339.31914.6982046344074386805.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9454e6bc9b481e6e1e2da027812fc0aa858e5380b6e0e94c4e305d4765a4e0b7
Date: Mon, 12 Sep 2022 18:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663005653
