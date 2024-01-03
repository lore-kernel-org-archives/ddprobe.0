Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0176B182AB
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 07:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+f8CxIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FF31C433C8
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 07:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704267496;
	bh=K8O4ffKmvhDg9y83FnWaxcgbsHh5sFLqe4L7Xex1vnE=;
	h=To:Subject:From:Date:From;
	b=q+f8CxIG7LisrrJAnLVBZ8b9O7HlZWSf/U5gIQ5dJPRb1cloS3IauGmy/incOsaAB
	 2q5zE6hee27Tyxjy/ZxoejlQt8OVI5ak3pQRFePQME3l5HuUDDMzpxRVrgVkrL3hCP
	 CHvcGmGU9NmIPPdEj57AEs+pkaywnWm0GmcBB8PgDx6G2zChmfw9TZ2W9LRI10AspQ
	 HTwyY17rjWojnJ0Ky6yhqxOpk9qctRIDGLWKrTN3w35ueUetUS8CINhX9lfw2n/MwJ
	 vcnR4Fyt2K7sAUw2WCpElHI7V/PnAqvS2PmJal+4NBrkt7iOhvPRkiESxEUVNVg/S5
	 xCpyUJB++fhQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62155C3DA6E
	for <ddprobe@lists.linux.dev>; Wed,  3 Jan 2024 07:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170426749639.12595.17476654643890945943.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7df153ab6b60b60ef795815af2a42c62b764c2935b851df1ddc95ef080028628
Date: Wed, 03 Jan 2024 07:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704267496
