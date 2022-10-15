Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4891373
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6EF03C433C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665810053;
	bh=k+DV2u6h/KYsZkDAdbR4G0i3vhGXyvXX9AxBfbdnXcU=;
	h=To:Subject:From:Date:From;
	b=rJPhWexapzwLzAjZcdWAWsf3k6IIC6cHT8ll84IQaiagYLnC+WgA1YIlJeOc1VAAu
	 jVYmHIHxJWxXm3pMF516XB8OtyaGYmIxh8EV5IqbpjdteuXENCZI2TeF+3aYphmhYZ
	 UrzWLQkFynOCz07eO+6Z8kCQS4Pi8+4FScSuYh0BYLq93xzqc8yt2Wfy0js0vdAPlu
	 YeNJ00XyNY2U9gD4KSIi9Jk2kTKKm9jjQp3chN4ydpDUwPNFnz2LEMt5sYtBhdCToR
	 aEnyR/D8Z3MhK3R0qY47D/nPiiMrqs5CFTVOGIHatBugVBpA/hrNyRc1aYRksBLXGD
	 rJccrmB4hsj0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51CBEC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 05:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166581005332.15920.13337540879317067379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72f4ffe33459e4587b963d726271136ebbd435a8dc2f833cde121b63aca16728
Date: Sat, 15 Oct 2022 05:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665810053
