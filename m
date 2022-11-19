Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7128258D
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DD73C433C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1668898854;
	bh=bMENo3kvAcpUTs1oj+EtMDhFUf+KRK7+xkDfYte6nGs=;
	h=To:Subject:From:Date:From;
	b=ePaV2+jf24WxaqWrwaeWZpevrfYP6LmCxU0sghbi/Q1KX+x6Wm2tcGy/AlpahDRqm
	 uF7MFG8ab9XE8JPejNBUD4LkBkkc8e8sUktTI8LkuLDEO1fOghHCbURaNOjiraB0Tt
	 V6SqqhO3E1nVt5eKZK0Lxt1UYv7200bvARFBF+Yy9GwXEcOA/4tnwwPpxa+yFKeeSC
	 TnIcMjIgj+bmVhb1zvhG1HTmBErrkL+m/Kk+bM+rn9dfKqYc84HUBPmU6eLsNd4ide
	 uLh92f+2aRWawQEJj019nbhY/2+WWdx4yFy8YU5FZppNWWvlWqY9D6wWsCUJ+WFn5X
	 Nvh/PdtjL9FSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5364AC4332F
	for <ddprobe@lists.linux.dev>; Sat, 19 Nov 2022 23:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166889885433.6462.15532275280628446953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f2aa32b0e16ea751e68555d715f6a63cbcec70de038b69bd61c2aefe015188
Date: Sat, 19 Nov 2022 23:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1668898854
