Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20A6737BE6F
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774374894; cv=none; b=GXpi319D+3py6EZ/OCPuvAsIXckKKgUC/Hv+3m6B3qHRcBk86F+LW6cSOOHVyIVJqt5Li4BeVeS/9TsnmGZEN3lxoqSa/Ys8MvVL/RuHUO73tw3bUgT+Q0fFP8vmOtRazSIvj0CC+ZGi5IMsV+LyLA4E7tLHilIy5MbBwaG4l/Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774374894; c=relaxed/simple;
	bh=ECuvANVjlLU0BYzonRpPg4cnxEkwV8hCKj7e/d3KOec=;
	h=To:Subject:From:Message-Id:Date; b=WVgOCoG69K6m9x/7ffD0laF1QRUPL3N0vx7HyVwDR9izWR47rguOghNmD7pycMMmgoVgfOrUvg+/AtT9p8yLLw+tu/zJvbhLLIbf1KYkAkJtm8iHz0Fofbuumsoef/6/AZNBwXa9IKI50MhpY8XsB02SnA3kstHKMLLZu61jl/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Folmtqta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Folmtqta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE85EC19424
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774374893;
	bh=ECuvANVjlLU0BYzonRpPg4cnxEkwV8hCKj7e/d3KOec=;
	h=To:Subject:From:Date:From;
	b=Folmtqta3IXCXbG1s/qAipr7jerkR3E/uVeuj3GtsjG+pTxAhAswBCUs8oN0SflhA
	 ZBdhn6qv+KlZw1fwyMSWmws0JWOIZ3oetmhDvQKIozMnZIuGr1RG5Qw/TYEzwJtuRE
	 UsCMkUfwd4MPm5wr4EMzhC5ztkW6n2Y9QnSFarAbAQWSwTcISi96jiViGoypXYFJrg
	 VD6ljGCrXB6WtZbD4jS2JKY53hyot9A0cCU7Oi9jyMTvHrVYEv30DuhXtLPhBHy+Jk
	 7BIHBbJRSYZm1Xpj8SVjRo4YhR+itnIaBJqRKVk/+X8C9QFV1lrUWA28QYG0aXkxmp
	 CQDGDpWXgNVkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97734FEC0E6
	for <ddprobe@lists.linux.dev>; Tue, 24 Mar 2026 17:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177437489360.14404.7298234780730406966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f7015dca2c6c74789e668a326eaf78f9774fb9f9549ef3a70324aebafa72c1
Date: Tue, 24 Mar 2026 17:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774374893
