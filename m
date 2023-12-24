Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E42A3F
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 04:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nwn32FNL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADB8AC433C8
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 04:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703391496;
	bh=K+GwHDaMZdALI3jBS5JPM3IzoOBMOgCXte3nCQN8sW0=;
	h=To:Subject:From:Date:From;
	b=nwn32FNLgUI/tJgDvg/WaKL/8x5KUzofomVrOB9KoHPEn64mF2PTyTkcFv04Le05P
	 l3unAMexVtn4S/Txe/ExtCdck+RJUpfBTIZEVXkhvSf1QtgCwKEJBmsegsa7B4I8fZ
	 f+OUuRYvQt+bT1BuFIXcCuGJsZfqY9MyGaSBkF6sbswGNrXkBaGGBPIOiumih2W47H
	 0y9LoalyxqYkQIHGGWRSj5TdyzaQ3GEwvVXoGH2d0HQU7gpdwbk3hTiaU1kNtrEA2Q
	 myCIJS3e8aJ/Nqq5XQJ7YS8O1Sa0sNDCXvdBAp4GZSm/H22J2UUFCys2VhM9usbcCp
	 1X6naW76DsZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 899ABC46CD2
	for <ddprobe@lists.linux.dev>; Sun, 24 Dec 2023 04:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170339149649.24145.13023033347307317733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0c10ec85786bc5c98b88951fbf021c57e76b8ed4298733759ceb128b11e7a43
Date: Sun, 24 Dec 2023 04:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703391496
