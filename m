Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED68B7E4
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8793BC433D2
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671329487;
	bh=LPCB9KsRaeCkBOwQEaDVEAxzlAi5Opf6n3e2Yqo5Kuo=;
	h=To:Subject:From:Date:From;
	b=KREslpgEmL/6cwbjrp4UKTQVriK54V9C/ssWMKd+kktrOh8Jd8v0xp/ajbekFTfBE
	 rTwmjesMh3WA+0QH1bS5NaG6vZxlbuEkoyGRWyjRJDfi/VO7QDdvAhI/8GeRzTkU/U
	 jgLekpOXXId0RgUyFlsA8aSFthVy0GpwIj60EflZwTbPDHSyXwufN/hItbXjfI0wnS
	 G+Fi57NjpK3G+XRpfZeXPXPXZUmdIElcTUZj6xD0UNVahy/tjyVLvggZTV9YQmUGw1
	 4wkwILlxqlz0/8rQsCU/PjVTx2xYNqc5jWPWd1kw+dkqBpuTzsc/aS1PnG/rBqC6ah
	 ZYHpq18MCXlZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6BDA5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 18 Dec 2022 02:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167132948740.10441.6881549586854895123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 64236430498319e7dc41f0e6843f0d2a781698915edef4f1fb37f3e0e5d8c24b
Date: Sun, 18 Dec 2022 02:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671329487
