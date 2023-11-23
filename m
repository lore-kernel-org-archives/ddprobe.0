Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DDE1249E0
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 12:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ao1TKIz0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79E8CC433C8
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 12:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1700741896;
	bh=/eGIG0n9rguqgFpjs/5UHpk3zAo2IGk4IyyQzZHdASQ=;
	h=To:Subject:From:Date:From;
	b=Ao1TKIz0X0r6cMA7kDp+CODgAIzIO+QXpr+u2ZKVzsOB5BsHEx9obx9/SF4QIreoI
	 1nhq5MHXaDo9BVKmvj8cfsPMtwtgAU3lI1aof3tKb6UGGBxkBt/2jFOi/tL35tNlCr
	 MCIK4VQAy+EuSApFaFNlAjfT9o7aLo0aCa8ens+/fFoJ9zzg3FwjpPDTiOIo1a0L6T
	 8oFspLTR7DPRJ+336RKrT6cOgNo3ys2OMeM5X4CTJaIZ/R9p9CQ+Xl1d3sy+m8BJOh
	 0AkCb7PfcMqTSj9SfwxQM2iUck9kAMI1VDlt62sKoT1AHyKZOxIs4Jv9ewvfflcew6
	 GzS5mVtRpw3jA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5DF76C5AD4C
	for <ddprobe@lists.linux.dev>; Thu, 23 Nov 2023 12:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170074189637.15515.12333820568653680387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8871e1a8c420595d6045a07fbc00fb3ff54296466ba310641c4579a5206b9ee2
Date: Thu, 23 Nov 2023 12:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1700741896
