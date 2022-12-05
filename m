Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B19E47C
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:30:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6AD0AC433D6
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:30:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670243454;
	bh=R6GrFOgU0JefW6uylHvh/AvJZAY6/R7cq8BAHsf3ogY=;
	h=To:Subject:From:Date:From;
	b=nhcSBsXhqlu/b0J+ULR/tWj3C2NPGLwBqBrAEgs9EeUATqqKJPgyx14QApBxF1Mxy
	 vdnMy9lfyVrIY+Z7ysbfAa1g+2ScFaNs0ZNKMx1GnGXCKsWgWQH4KInAgOrCneIxFU
	 L6CRlwBJVEYN4wXmp1fQvbWyrtT05XQhslIHfra5z87k3CiLiIRpOx2pTON5DrMAqW
	 /WdSe/WV+hhmAs4FCMGkwUHfr0R0S54EPX40aj2J341R+vbWp/TibUnyZIRww0vT0M
	 b+mcx3+sTKiMwmgpoLgBofRchedrIj3u5LCXqYR9+Il+/vtOzwe2eGqWrqTfjJRvdp
	 SelNWiO7qUoOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 528ECC4321E
	for <ddprobe@lists.linux.dev>; Mon,  5 Dec 2022 12:30:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167024345433.27296.13760075134012646455.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e110b4b0694d45ed4ae2c648cb0fe09e29a503a8cc96fbe0ccb96a05ff66b6e
Date: Mon, 05 Dec 2022 12:30:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670243454
