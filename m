Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DD2208489
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7EB55C433EF
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671031287;
	bh=Zyll1hN/H6TCYr6ooxvOb3C9rZA9DabHiyimbpmMWaw=;
	h=To:Subject:From:Date:From;
	b=nQ3wBaZNBAHuNHa8Nk8b3ljztAjjAm/4tT27rwi5Kkwj547fFwftOdfuX3k+M2SuC
	 gRjOzK6HBEF2JrRVxom77K7mrpKwvMoMfptboVxjgmm9mSYip2STi1gQHIntS2U/qs
	 YqY9ARPQ/XhQ33hTi2ok9d//SP7K1cEcsFpUtUE+TxDLclCOUsGWqC1JKKHhdcO0Wv
	 YVohEpJbyF4TYFp2CKuFTlNgLYpEHu45xo+fPa4qs4CYEXNbLCcKJqGTHAZKW/Nv55
	 ATiyRpwBIl83hztfeSXFq3yVRKJSh7Qy/BBKk/uWnqvi4xsdeQ/ujAjp2gNKN1ugXq
	 UzlJfcW5zOn9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63853C4332F
	for <ddprobe@lists.linux.dev>; Wed, 14 Dec 2022 15:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167103128739.31409.4740029461481522114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 334f096a5b0cdac34053e2522c98234c408f2df9d5cc130eb215347f8cbe2e13
Date: Wed, 14 Dec 2022 15:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671031287
