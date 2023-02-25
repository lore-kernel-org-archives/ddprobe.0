Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44DD333E9
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:05:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4858C433D2
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:05:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677341105;
	bh=HiCB6D9Tzlky+WDAXezCmv6e0upqyAlVdod+uitA5Jg=;
	h=To:Subject:From:Date:From;
	b=pJ2UrQ+lDeAkF5TouMry66KiMBgJcOFguTEvGu8oiyFDQ8htGvNQnU+RTUa0BjyfL
	 duudB+2KRr6XCx9ncgMV+KaV2KgsKaOSvfja2kEbhRVk09lJ8DEb6juNJdXdH2ozpT
	 Chj3c253fZ4G7GaWv5gphhcLF8LF86eBL30gFmboXwbNq+gScPEifOloIz33tnhlTg
	 sCLGLleLWS3D8XdMiJxbBIVroEf3z/Iwc5V2OHyccJ0a8Cm+hVhFB692mPi3nigweS
	 yN4ZhwS+XmcU/EC1jVCajLJie+m/MsWqcYIEBda5+FZLK9AgPI1J+bViPFXHE04Czq
	 dYtCcuJZfmyTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8467C64EC7
	for <ddprobe@lists.linux.dev>; Sat, 25 Feb 2023 16:05:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167734110574.6786.2286777874831984835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5ace8676d09e106f95d4b8c6a52043d7135ade08d136263850323bc93eee81c
Date: Sat, 25 Feb 2023 16:05:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677341105
