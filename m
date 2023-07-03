Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F98D100DD
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:16:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E054AC433CA
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:16:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688408168;
	bh=Z0cEL/aY/pj7G6xYXRggYDHKxMAmGxyiV7ImG7atBko=;
	h=To:Subject:From:Date:From;
	b=k9ZInRJn4iuhGv1fBmARmOpMtm0RHjXLJs9SKpEfq8WIS33axCEN9LMTKHLQARDUY
	 TrERNLHv1JRAFBDuRwU3bNlmbfnTcWEvOToI2t10ixbGy5Ls2fSFAC8lRh0KUOSOnK
	 C6iBdC86mA+EYqxRq31o/2qT4yRh0vxLkR8In7qTufIO7Ez4cOWNpdMCAIIa3ib0CU
	 AWfgtfSNVVUWfFBjRAusGnD0TkoOw9HDTF/152Luo4nhaiWxbgV/17yMXjh26Doies
	 kOnLygS2JtaKFDjSM993oOuyFJx8+Ia1kNB7e+3IR5zNaQfvQaxkWWaRkxRciin8Sn
	 r2QK6hbBTFvbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FA0C30657
	for <ddprobe@lists.linux.dev>; Mon,  3 Jul 2023 18:16:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168840816868.624.12856120012958717932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5829b84cd35bca551d8567ed328064d9c8b5f4bb44afd4e3f7a94fa9feef62b
Date: Mon, 03 Jul 2023 18:16:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688408168
