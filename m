Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B92FF63CB
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E46FC433C1
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669042854;
	bh=gSEgHG6a4Byf72vBLmKZZbA3p4YV9vMSFqLrRhNi6Jw=;
	h=To:Subject:From:Date:From;
	b=lQEbqIS9nP0/bLX7CS5KvVOMSAHsGw6MbJIf94XvFGs+vtnAZjAmp9bn9MpNwVR+4
	 U9weOIlW2ztcGgJx2SlnbFL4GDXJV+PvuR6IA7FZEieJ7V6BNaU5plFI5B1i9abQyb
	 bygirMZKjUI+FeKagsEN29iKos8TqBcJmri1hJmf6WO8lGCrBW1Xa8yAYDmWlBZI9t
	 MUWW9/7gb9kC2G1pUqEN3xjFuTEQRAOF+kF42KNrV437K9OaBkcOgNQ2dVXwUkN+Cf
	 KNz2uP3QDA+a2CfeQcrxsxHgWK9IaNT124MNCuhysKxit47dkWtALTZEnU3etvrKUl
	 vIpCTYzII/Rhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5494AC433FE
	for <ddprobe@lists.linux.dev>; Mon, 21 Nov 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166904285433.26567.17689659605246350033.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e32956450d4036bc2dc8f14094838f3198df5648e51e31de7665ba2ec4021e00
Date: Mon, 21 Nov 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669042854
