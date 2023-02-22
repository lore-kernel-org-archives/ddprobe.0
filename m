Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692B910E6
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 22:34:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0AE40C433EF
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 22:34:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1677105246;
	bh=6Sfxr7f9HCY1R9muZq7iQ77ErgCfGoxKT4NMzdAWmmQ=;
	h=To:Subject:From:Date:From;
	b=dqPsLQYTXu5PohLuQ/YQh+k6uNeuEksxebFdwhCEw9A9JEXE0Rl5kF2qRmFl4iHVf
	 QPxxAGk5cclNFxhWkKFaYdoSQlkqPoP0u7rDVP976L5Z/I75TipvXj+Go6Ml6LBKD5
	 H88M4WoS7gX477OmT94a6/govstv9P3kfDcRdo7wcOlnbJj4HqCaC3D9HdBXA8vDvd
	 t3t1qxvRN+1Cfc0GjjPWg1idN4QdCq1ECyBu80oGz2jvtUbOSsOFCPUtLoz4VArroL
	 yWuAR02S85BSlzsIN5jwywTWJExOR6RwEz3WrhQnTjsBb8oDUoc7G12nzP3WXG6Fn9
	 9zH6HWooJU4sA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D9810C61DA4
	for <ddprobe@lists.linux.dev>; Wed, 22 Feb 2023 22:34:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167710524587.22392.4830015851936955612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce9e9ea46c55cf2e8e2a2e25d5ee17e75740adbfb15ebaaa29cd19617e665dd2
Date: Wed, 22 Feb 2023 22:34:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1677105245
