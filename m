Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F1EDD80C
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8A65BC433D2
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672057887;
	bh=ra5cFqzJwIegH3uSLR6lGFL3Pl15jKGV/Ra0WeDQybI=;
	h=To:Subject:From:Date:From;
	b=ofK/g8jkI0d5H/qq/EFck+TVHfVkmUguXm7En6UfPT3mczTy6gBgxGcQWgOExjn7/
	 nrCn/vkc7C9rw8PeMjXyPnz+yIreS8V3JVWo2yN8f3+gFeVaLgMFeyEUguAEP+2/JG
	 GR/SM8Ook1lZoJxpGEc89wJbIP+zcVGLwmW1uHOmNXiNinI2ZUEO8sNRXYf+fiL6Ns
	 Ivx9vjs0pP4c3sh/hpNehxcO3Y/gmrUDUdoOU9hTRNEoDT6q/KyfaUpvrMOU0jyVOn
	 39nCWGWU5biInZ3PerCOFRXPQ+ipcuMwT0jhnPk8cEEqPimI3Yi/UhVVH3tJqQmGYQ
	 fIHbBAXJ7RVkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E0C3C3DA79
	for <ddprobe@lists.linux.dev>; Mon, 26 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167205788738.18420.2907520660670693041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6107e723312d85862ce1cf673d91502de966a9c670b0a9ed9f5f54fe343bc43a
Date: Mon, 26 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672057887
