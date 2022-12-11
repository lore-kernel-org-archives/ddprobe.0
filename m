Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB1753236
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 78B06C433EF
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670793087;
	bh=Fv3kqt69I1Sm7JUwCFMv9w/OKD8QafwQ+18L9q8deF0=;
	h=To:Subject:From:Date:From;
	b=uPEHSAN/zvw8xaHKaY9MlVZkSRuz/xMDwJW/aoggU4K/JvOGQCqV8l0M7ehLUIovV
	 Cz+Cci8EkMnx/r7/7E0ykf9qBpmw4+2CrmTi5uro+FYzJAMUWPla6nLOke4VX3M0s0
	 p+Rjh07Nl5UYWkTHRJFuF3uCIqXLXpbUaTGTQuQz/M6gGrQDydfIH56qXodFIIwo4E
	 ZMdXuQVPnrZZfftyl9mny/zZ68+juSaYO8ox7mn4rP/PHW9jNfYYo5ThrXxwSgSPaY
	 PJqssXiWrqdkNwetMosK2MbqvVAz87gEesihobJwsDBIHsSdWhZBq9LT19hkcI2Vmn
	 ZUt/dXIoMBhpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 611F8C4332F
	for <ddprobe@lists.linux.dev>; Sun, 11 Dec 2022 21:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167079308739.17195.8070564524385739079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb5ee1271047adc0a2007922cfd842ad9625651a7af737da134fea822bc07d8e
Date: Sun, 11 Dec 2022 21:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670793087
