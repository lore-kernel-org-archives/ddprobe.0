Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0FC4408
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 16:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA5DEC433EF
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 16:34:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1676133245;
	bh=BublRUofe4dic2GWH3bASKBy0kKF8CcGppO1wefghgU=;
	h=To:Subject:From:Date:From;
	b=I65Rd1QTRGV/edBA9dKjg3U06qVL4gRPz1iy5mEDYD6s46xDIoyp7Qe3XgiPlpchz
	 KCQQXW/RKcSjJ1aiAIh3BS0R47xExWmuz2lfU9C2OhgS+epbpd3o9KEMmrVFhDyv5o
	 +MpsR1w7Ic4kJYBxOgJcU0pvN9Kp3CUilI7IQbDch4j+VOptIBH10u6LDnAPMPOk3/
	 A80TO/e9+8fzpwnyCn76ayQkyHp7ZiqUgKNI1dWc8kR3x4rNAZ1tTsnW611RmcwkTT
	 Dq9K9GqjYqSsVsCbxwRCMdX9BP5xXpJvLPyGXxuESQTyR6a/YOhHHxO0fSv3HL9NZI
	 Nle9chYQrWV1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC08BC636CC
	for <ddprobe@lists.linux.dev>; Sat, 11 Feb 2023 16:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167613324575.27348.17320814388213383620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0925d77a592544a9343ead6737105b1d18d28da7eb8bd0549d9e379a1771b566
Date: Sat, 11 Feb 2023 16:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1676133245
