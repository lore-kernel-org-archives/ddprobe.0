Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BEBD35394
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 77AC8C433D7
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665258053;
	bh=D2KWzTGLKkwIqGeuEpQxVBI+KrpFpievYYxWXKIAJ+4=;
	h=To:Subject:From:Date:From;
	b=Dnr9G0NhzZxS1IWXVU5udnt/kp4B93FeEWnCO8IuaOu/DkpuOt3pykusSA9THTIVL
	 oOWM4Znz9Iqt7KmnU8vT4k0ZpacxQk3kbKtCFiypA5j41/b0TL55Erjqhfi/M2rh1K
	 sDJYFLw+iN/C0VtLXb8ppH1P2R71drcKq8NwV6PWSP8oJb/7FomNKYTpLVTP8rYLDj
	 6jplEGlITFJU1j2Gz6rPm+TLd3YoC6hByhMuh9vsQYAWYSAqnpq/93faznziTQYQwe
	 br9N+U/AdOsjvL+q2IhA3bNgdiuEb/Kb2qsdphE33BXdcfW7SWLw3L9mWOwxXdTZpA
	 +8vaGLPo6V7VA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59FF1C433FE
	for <ddprobe@lists.linux.dev>; Sat,  8 Oct 2022 19:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166525805335.28250.4213485030984845471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4470ce29517daa9d55f6d5fddbcd1213e204a825aa09e3fd9e0951dddf8ba512
Date: Sat, 08 Oct 2022 19:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665258053
