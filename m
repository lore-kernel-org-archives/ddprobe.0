Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288541B423A
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 15:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733758554; cv=none; b=X6mrc5QZtNjTRgGkNWJYve+3nwQuuHRS4x1/up+Kdgw415grfHuK7P7SUxhNd8qVQJJxGArEEQSqG6ew/Z4A9VbVZ2uAQcCjJSz7vAIYg94vH0GT5XTdITfvg5pgutVYoXpbP/QH9mWLdpige82cpK6mjESQZQD0SiSrdPjOEqU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733758554; c=relaxed/simple;
	bh=uyYDYKaa8kRQEFrUUNfz9EUczTh81asx+r75VfAGt6c=;
	h=To:Subject:From:Message-Id:Date; b=o3Yzq4kSsxbd5fedbVpyT3FvUuhaWi+ZYGBkzx1iPpNpBsx96i9dnzHGsEA0r2R1E1kMK31CixhYqkgj1OodzBJsWcQVUeoLPxkcEsA8RFqKq6GaGpXQFixy683JU3TJ1uc+kcLQXepJRFQIyMCqnUKyINMKzZgG7Qgy6NCyRmg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHWXg1h7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHWXg1h7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD63FC4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 15:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733758553;
	bh=uyYDYKaa8kRQEFrUUNfz9EUczTh81asx+r75VfAGt6c=;
	h=To:Subject:From:Date:From;
	b=mHWXg1h71V1UWb8ItyPVWsR6WMnn46LaSboKneGLEUWg+XYi6R2eOQAI+cp4kcMmR
	 h3WwvOiAn6+fWyUE/et6FMBSmexlL6TT0hip6O+3iMVa8xLMGUqgWnAPL0PIG4mdVo
	 hBKS2Z+ciE0aF8VxPZCrMKtDRDni4/n/LaVyZDr4igX+crb1TB4d2mCVgTS2Xm10Pd
	 rUWfEgofhL3jWlhbR3WFK2Tu9TAaVMDY5TOAWjYWDLMs2W2GHUQZ1Sd1tCo+wNxxDQ
	 ciUJXvqAeP52Pm4379cx6BGU88sZamsrtuN2v9W8ZM6Bc27vvS5ROoknIGo3iUAQMo
	 /KzGOEtF45Aog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9901FE77180
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 15:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173375855361.24850.15721173414250849066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0b376cc80c84214c931450d7138779a8855840d429e6a03948972baaa9cea9c
Date: Mon, 09 Dec 2024 15:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733758553
