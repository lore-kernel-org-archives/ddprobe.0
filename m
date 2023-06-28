Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 519AF10795
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 19:33:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE999C433C8
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 19:33:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687980788;
	bh=+sKrrTNoMUXVdKKY8FidiBnxDUISBMFIp1DnHFKNuKg=;
	h=To:Subject:From:Date:From;
	b=YG9yAq7bMshFZVEvua6ZaEtUbXiAy+ffeSeYOHk75CpOTOaSKuRykrLno9jvCEW5V
	 RrlinLwIpSEj+KGaZGCsWptWm6UkbyZR2j2+rFvHNRcGLgYYn74MgJryq0Tr60JWZY
	 lHCaPOpSlHC/MZyluvSeXxdPZDkiwTwamQwDFg3nHyetzKM+A9KGlsneHOLwnpHGMj
	 oV89UUEPi5rOLbP5Gjivfv+8+TBfsMe2fBY5kMGAlq4vWnOgRM1FaASO7YCAgcJe3n
	 LJtauU+iEyAIg+JfSr44VX7d8V8Z54+gIQpEtp9Hm6Kr7fUAI7WOrksBHd6gZu4FbU
	 woUFPBHlvugBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A66D3EB64DC
	for <ddprobe@lists.linux.dev>; Wed, 28 Jun 2023 19:33:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168798078867.2822.9672709480295743733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6effbf28780f10099fcb7298154af6fc9bee73d87e28acf49e0ea2198b8ec5f4
Date: Wed, 28 Jun 2023 19:33:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687980788
