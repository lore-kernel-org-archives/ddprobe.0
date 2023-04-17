Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36AFA1847
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:18:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48EDC433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:18:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681705085;
	bh=HPHk8ai6tB5pGRggxikkBMLioqciCoLADws2lTPw3es=;
	h=To:Subject:From:Date:From;
	b=I6W7uIRgaF4nNOHpHpUat6tiIs+zVh+wG1/0Cr1OavRfQ3tClW0FmEhwE7Lm/HKgy
	 E2cw92ghe2VkZ/cFzChClExCs2d+0WpnftlvgPtR4Il09hQcY7q5n/zizF4s3oSApG
	 Rf9zE4yAOaFAsTSahogC+j8OiOq0/DZeoYDxQO2klJ+BUW60M3y9yWJW0I1lXLzmyx
	 o3Cw7MmXotXDM0vZp0hWq7QkefKbLGUAnIIx/rlQ5P4WR/vUeA+CE/ep9dD9n/Bvfz
	 c62uZlCgA5iDnf3Qny3llBZp4M3PzxP0zzHdgPHpDppkWhMZDf23s0mxmedt+uj0I5
	 ZPw/vSUSliksQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA9AFC77B70
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 04:18:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170508572.5816.8105413631045214138.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71f9c282fd16e9bbeaa1de7c0b7a8c9e2d17ec600b85b737a1608371541c8a7e
Date: Mon, 17 Apr 2023 04:18:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681705085
