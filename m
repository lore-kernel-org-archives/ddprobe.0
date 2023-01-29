Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45613323D
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:13:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC705C433EF
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:13:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1675023185;
	bh=7wxcKWcWS3INv+ZwAJK5nvoFHEeYvcNPTF/pG54DTEE=;
	h=To:Subject:From:Date:From;
	b=Uo5YYi0Pk06jCLLJh1HU2KOHy4WmqHMEH6e3FSRYNUo1ag2roE3xLu7XHtvkmR/6V
	 bKCTg6rpx5xiQPoveOCahPFK7ClHN9azPeWOKwvSD8/nMtmUSA3y6X93wxnohVOI7s
	 4KeKe6LC7C9rsXy3grFFpaaBX1uZc16HpQwiKa+MmfbDzQabqcyz8+yKf8JzZPj909
	 SSejHRY+JVpux1ffnQ5tpgglZ1GLVQFpudCPy+BwzGaF7gVpoB2ScYau/Kk8LJEK9p
	 IynZrds7uzyqu9ovW2Brh8m+djxXvoLFxAdGPOHB8B4QaIja5u0jM5YHe2GXWy+hEJ
	 /zZWyPxBiKtjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0289C05027
	for <ddprobe@lists.linux.dev>; Sun, 29 Jan 2023 20:13:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167502318574.19823.15900423622152698678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40c05a7ee5cbe481e1addd107bacfbc01c857eca9762ea309196b35dc9185dc3
Date: Sun, 29 Jan 2023 20:13:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1675023185
