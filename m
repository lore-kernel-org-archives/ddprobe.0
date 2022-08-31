Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFF117E5
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80379C433C1
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1661985653;
	bh=pTXZUTagYy0NbDpuLzi+/E6exQEVbYCxXaobD4eTGUE=;
	h=To:Subject:From:Date:From;
	b=gIY6DMVSnr/OL+wsmMZkOikexgGbXt9m+5FvI/yr7X1Oueybg+Q7f1x68YCw2Asb+
	 c1Iq7vIv7kk/kogdumQGZYQWjfxiwjEg5AwYQ3887zztR48uNrrvjW0UgY4MlTWx4A
	 YdCm3eXRk4rwnflJWLRSrwm0xC4UWm2ZxxQsSQqGxuUDgn2IglfwTgYytPosBryxIu
	 R7fs/ahyzR3T99f70MNrxmJ4AiRRTSo9TwS2YUTvAC+LqFQ7HU6Y5DEo9+mr3cbcpH
	 e2pszZ/JlK64m8XbquttlUPMC74oDhed5+nIqMgRxgJ7vfppabM3HRAOMQ0klFt9O+
	 jCk7bHJ/wii4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 65421ECAAD4
	for <ddprobe@lists.linux.dev>; Wed, 31 Aug 2022 22:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166198565339.1086.6539441626126113028.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 426b4abc9c3bcf3e414b93296cb84fff75eb60ad1e9ac8dac47568d9dabe3b77
Date: Wed, 31 Aug 2022 22:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1661985653
