Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D50C3D67
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:58:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D46E6C433D2
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:58:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1683471485;
	bh=nWoWNITsGFKrgy8eHSU1DbynWW1X/UjyezOURbL5W/o=;
	h=To:Subject:From:Date:From;
	b=X3Er+a2gOkLGDndREjTWW8Rp6jr+UvcjRmf5Cq0M7WWjbuXkf5Lm7aiTNLlItY3ol
	 jQ18XA+OdTPgr4R8n9UjpeSihB0IYdJ3Be2zxanuBWrEHmZZhU1GGT1dluuMC9kF4g
	 uZsQdmK0WW+9mWruf71IgdDEySRZKGhrf6pIIOFIDl51VofqmTNWGrYEVs713f/Zjr
	 OeL9rVaVT9P8DMrorxEUtYm8aGKVLRSXhZ9OYs8ncwa8kxRg1A5seFxfksS3hzTwV9
	 kJhoXmigcWK5areHCNgIwNLinazOxNCOYkkdDFIEcczSpynCdJGfS3NXVIKvHbIF0p
	 8G6Y4EOwnoucw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCB1EC77B7D
	for <ddprobe@lists.linux.dev>; Sun,  7 May 2023 14:58:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168347148576.18933.4524650178998874294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2854dc9cb56d9ec8057549178e91e838cc72ffde8757976d9763a013d3759f
Date: Sun, 07 May 2023 14:58:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1683471485
