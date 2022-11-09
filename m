Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB642257B
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:50:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6F10EC433C1
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:50:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667980254;
	bh=nixLBr6xXsmrcWZfjlVdr3UOVE2ipcnEI2lEdzwdm1o=;
	h=To:Subject:From:Date:From;
	b=lGjtXoGwMi+s2sh6Lw1em7WF1LMlOPI0R3FhCNGIV7zX+Ta5kaXMHEoKiAz85ju/m
	 AqXrCpN5I2YWAsRXKB0q8t3T33/rd7E+/TLNfHZrv6UO/kMU00OBznTWaFprCWu0Dy
	 o74UnMlpyQ2gKFTWXigaceAAZzXYxjE/uh6ygDQ1HVngkrWVzAMJv0cKiJ8E+Vgr2k
	 wHdErPygNXQIIn2zklINrDyylrlernUShuVUB/MW9hDPQ0tUQH4FGR3U1Hsee5S/cb
	 CA1aJlcVVPboyd0tynvkPgw/GuuPKsIY/3Rfg4RuPVzJp+Fv5xiah3fxy4dpuZuUmm
	 ZEAaago/NT6CA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54F26C433FE
	for <ddprobe@lists.linux.dev>; Wed,  9 Nov 2022 07:50:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166798025434.5323.6032339612469656685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20881b4afa11e51a156321855c465c4988084470575cd941556ada0ef79ef00d
Date: Wed, 09 Nov 2022 07:50:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667980254
