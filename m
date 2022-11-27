Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4A908491
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F0F8C433C1
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669585854;
	bh=GfDPcwszVvFpEXtM59WUGKaT29PeKspnDslaUfGOWic=;
	h=To:Subject:From:Date:From;
	b=UlgRbG0mWvMvSyycEBetU/ERwuQCV3Npp9lhk/qjHwaCnuhOikEfBP2FLV7rM3Zjk
	 Tdcu/MFOY2FmaLqNy1k4DvLaeWaS2Xtrtb8CowgHuGLhurJ2YA4fn8LO82SbZPZwS2
	 oCKl0MeRaTGbRNXYT7bwm+OQYJicdNaGTV7CC8110pm29mLiQPHEqGbEuXtleJhTz5
	 XJ38J0pfY5hmPOc3BJNlRgp8pufjF2HFAunap8xjp39DExfJ6GC5Ed432Q496UTA8j
	 GevqFQHJE2YUfNFgZV/osQ/L0XR0qh0T8C915IVDT4lJYDE6ZPZSilMR/H+ioNUAQe
	 6YP/ISJecom1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56DC5C4332F
	for <ddprobe@lists.linux.dev>; Sun, 27 Nov 2022 21:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166958585434.10541.9323516138399165787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f220f039822fdc3425264aad52e6cad28ea546cc99f11f970fe80dfe56502686
Date: Sun, 27 Nov 2022 21:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669585854
