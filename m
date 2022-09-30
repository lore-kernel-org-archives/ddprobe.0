Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0F945A7C
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74B0FC433D6
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664557853;
	bh=UwJ2lEr2vbJomqjTOjYdJtT5oBW966OLZDBzesw5a4Q=;
	h=To:Subject:From:Date:From;
	b=szFdc75QsUYX4a95/JeMZwkD/cFOM0hkBcuOh+wNsvCVxGzIKNrCbGe/3Hq/NLMrv
	 Gecos1KEXW9ySq0TRMbJRdt6lf+zlJ/rvbMAyPkdtxfkl1n70SBWpbTigc0BB0aGuL
	 RX5PN9d8Fuv6Puj+2vlynEbn2nGHRHeevAl4Ww5G153Z7IraJH7oD+Y3jG4m1TKhEH
	 LbDhBTbBoiZIFggPYMyMHKWU0dlgZZBkSzFOmg96U28OJHmLyO2LygDKDIXom3756r
	 160rsv0cRjYnjK5bPBregTmKsuNcbkEO8uKioowUEBFdzIPaODKnFf8vXE03K4KfuK
	 UrEewuaqhz/yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57931C433F5
	for <ddprobe@lists.linux.dev>; Fri, 30 Sep 2022 17:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166455785334.9247.16842835669034376009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bd9c4b2e52c0bbc8d82e8bd11b297bff6971644e40a3bed463b438ad9cb4f613
Date: Fri, 30 Sep 2022 17:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664557853
