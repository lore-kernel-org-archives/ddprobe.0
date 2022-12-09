Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1E54816
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:51:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 74578C433F0
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670568687;
	bh=pxcl205NnT+JRAI1uLDyWV/goeUCmyTt6fb3A8GPJX0=;
	h=To:Subject:From:Date:From;
	b=daRMsfkBbNmFcppj5NmrJRleg7FdkusI5pP1VfEGXkYx/REQBzjiNhPIt6kmDEpPU
	 pNqDDeISN1G7wUb1E6XGjxpzkBRo/HSJSO2x/sUNMbVYjhOkf+DkKWUTGOkbsKR33I
	 HxRot9NwiOWc18v5hNQQU10Y+XjPI7/y/SzKm1Vlk4JI7xp76MIz0rW8TSlJve+0/b
	 Myrqvi7mRbbCi/AVXn60wlaOVj4aqmZumf3/nR2dM8MUsQDNKgr7mcWcu7wBKTFcgg
	 8u1nYmIA7w4gzSNX5Ak1lKH8g0bPtv2s7A7GHdPo24ixHbJ7iptO6FGF8XhWQ2AC5K
	 pxbXZp0ZCkLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D2C3C4332F
	for <ddprobe@lists.linux.dev>; Fri,  9 Dec 2022 06:51:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167056868737.10631.1649226780798604242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d0af2b93f7e14345eef1d2ddb8750557493df46292ce77ae650e708b032b98e
Date: Fri, 09 Dec 2022 06:51:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670568687
