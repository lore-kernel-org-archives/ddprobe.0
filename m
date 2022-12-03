Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C79D123B9
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7150CC433D6
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670061654;
	bh=BDm7cuSmhyh+SrOCe9GEsQqqaFO7ofXa+I6w+5YgXFk=;
	h=To:Subject:From:Date:From;
	b=L7tsJ1NZexrmw0EnX0BYqThV8UBpnCBGMPrJ7rpbmm/rY3DrDIYkRPm+eaYngjLy0
	 dHT2E7xTcacqrDtVETOk/HvmGvzCd0OQaZx5Du2aH8F8Vuj8oT1Zg1/EIAqFemmNkm
	 tgMTOKpNWN1EBIuPCp/r4pkmy0B8OwAHZLKsCodTWf3SVynR/4cCDmZqqL2PVvjYHL
	 lWi7OHnsT/v7fQq8X5RAhesKT2sgBsDqZCKvUBSq4Zg2il0l5zjLld10sd0ygguP6j
	 yh7lIR+0nIvagdzVruy+28bjdDyQZp1hSJ/1LGVVHrwvy/C7qxUkzH3PA0h6riJ208
	 J9LPDScadBq4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5603AC4332F
	for <ddprobe@lists.linux.dev>; Sat,  3 Dec 2022 10:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167006165432.6548.18097818314708350347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b647c244e0fb541b7e3ddba6a8f57e1c39836aee89f5954f3f0286d38cf55681
Date: Sat, 03 Dec 2022 10:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670061654
