Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B0AF204C18
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744836594; cv=none; b=Hh1204nu6jYggpjrFPRgT1SjEcxA83hyYtmiRmkvr80uYgNQBhKrjG3v07k8+QzG79HhkoqPZilYvM0d6KtXU/rhXp/4KM21bf5PUF4fHgkZPlxcUBVLAp6icP41znRXgGKU4MGjxtL/0MtFraG7SuBAv0TaZ34sVt1VNirtHpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744836594; c=relaxed/simple;
	bh=5Qx3+KgdYmHKZ63nwf9otk75tqvjpUkh9mK7JI6iaQA=;
	h=To:Subject:From:Message-Id:Date; b=IUp/AU0RKLINyClg9uznf5uQFoD0kkGrkktcMPrn00gu+LF1aTm3htQrtskOcwdBJ9EMMNJ2z/YidQuMTRGw9JpQpNJ2WTopZTHC8dwEpvcEvEJcdS0rz7UFqLJqjSAKLbwCCGZUnew1gLF5af2dgtgv3DJ0XocuPVc0hQ4t8Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZpbLnbPQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZpbLnbPQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF00C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744836593;
	bh=5Qx3+KgdYmHKZ63nwf9otk75tqvjpUkh9mK7JI6iaQA=;
	h=To:Subject:From:Date:From;
	b=ZpbLnbPQn9ooAyPFSEssjzPdb07UvDEFLp2RhAxkqV+ZkDATXqzXFp7twmEv0benA
	 S4X1VrTbiNTk6RpvzlMcyZYFf4PPLnQlAkFtfQGBXAiiCmidV8b5k5dLC26G7qa7/5
	 0VnYFC+gJVBtiWxUg2kMZn0qhAGu9WcwBRJjeVOXECHg+4Bu6V1zYhkn9mBjJAgK2e
	 xO2dRTzxVV8wQFhgoEEkOLFpnT8API4SXA8Iw6/VslvUqUjLODEaXUEm2zcISNOJFE
	 8+pESTF1svQhGk5TW2MtSj23iaXg/v3R93UJzHqcbnOm0LmfBB0/Zg5ij6lG5Vk0cf
	 4L6cyQfAIfTgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C05C369C7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174483659360.3472.18390932160601795691.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff1ee5695e83cf935994037f5999f3c34a8a97ab9de0c19b81da8ecdbff3a949
Date: Wed, 16 Apr 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744836593
