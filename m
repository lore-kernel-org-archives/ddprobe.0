Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 363EE3C10
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 12:28:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E69D7C433EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 12:28:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1678796885;
	bh=andKDI+0GCXFm1uKHF2R/Qhh/34xoGEyTaAlbUlfrdk=;
	h=To:Subject:From:Date:From;
	b=mQvb4vZf7JxbT/0/MlV51hOur2llZ88Ogyv88i/Lr9BLub+ZXEyw4qU1Mz4JwoEow
	 PIAB3s1111i1iEQE6UDD54vjqexs/VyV5nXImiUJzUzrtzLW25a7njObqeynEq1NDT
	 slU6+QxXj2Hcgvq5nvZqLn54Po1UR17MJTpnxsG6Eo0/NQEMPjKBptyal28kL795IV
	 71vfCV4wIHH3rCHW3CaA1kREgODGGcxyw7I1duw3l3aKTglOhKkngkjiV1lRalMULY
	 7Jf0hXYhI8qjendrbzK/KdKDyAEzxvOhuT3cA1kFtzU1Dq9f6AGGyyWVEfBOZqNZEG
	 TY7FOQVYr0tJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA372C6FD1D
	for <ddprobe@lists.linux.dev>; Tue, 14 Mar 2023 12:28:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167879688580.27227.3163949975873671160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a714440ccf8889621f8f116e549bed39e5b924ab7e837de0b7d5e37954d9234
Date: Tue, 14 Mar 2023 12:28:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1678796885
