Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E9A1854
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 696A0C433D6
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663852853;
	bh=GS5yrnLzhhVp5BxIkpV0yUlskTe8atv/qd0ujRIL9eA=;
	h=To:Subject:From:Date:From;
	b=q89t5+PcR+FPrp9r1wux5UvM7wkyJr/J+mzpcYsiu0VX/MFHI8Vp+r27lhFJuoPg2
	 RkFcplDgP5TfC8cnKxY1K5EQIjF1mJOIBVkXUT8ZtdiZOGqfCkkHgh6Sh4G+Nci+kk
	 jJrbm4Y8LG6HlOtUZ8whubyQLNYXL+V+SD+/XjspSemlC6UwBMJw5PmhwRat3Akk6h
	 Gu4t7//wkD97GJGrekxS1+KfFzUNP4SxoZ4nU5ehnpPB3kSRElxuDisJwZebzX4V2V
	 92OVH4tX5+IF3cSHnHlTaLozUJJfpjjw55cKxJhyVLFuovaBh0UqZkSMsK324FVx3K
	 gxcaTgk8kqXAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53057C54EE9
	for <ddprobe@lists.linux.dev>; Thu, 22 Sep 2022 13:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166385285333.10376.13189529854520694509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3763224dadeababcb696512c725680b9456d098a2dcee2233fef28c1ee5dc11f
Date: Thu, 22 Sep 2022 13:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663852853
