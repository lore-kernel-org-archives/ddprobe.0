Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C91379F6
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 06:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ITO/OQQB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 81BD2C433C7
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 06:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1701239296;
	bh=MzCbkZFilsmdrRNujYik663I0Ao5ljWD7JCFNRxk/mY=;
	h=To:Subject:From:Date:From;
	b=ITO/OQQB4Q1Kk+/l5Zq/0aky+u7ALfnosjlxUsBcauVXjlsiMcBvivPauB34l1LaJ
	 N9RSqbIfibwjudaxxRLbMg+H2qLNvVvfMHUOB//3AnJJzwSsO/I4v+tzVrCgag65aS
	 Boq19Y6RGcQKSbIXduRc6Pn1EEhmA1jwkDEGUkIwdbpzyFUBrmoj6X/AzlSzphzrjA
	 nHR3kBYLF765NizEOPkk3DMrt4izvJwzkNk34aa7fyp4TOyAABk6iEp89YVx3vsUuY
	 U0iXO9a6InI6Rc6n49hnx8UfKS/fGm81CN/58hxxjERNoDzBBHGPldW6MF47nnt/4L
	 jwQ0ANchdQxRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6611DC4167B
	for <ddprobe@lists.linux.dev>; Wed, 29 Nov 2023 06:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170123929639.21853.4161559437104480942.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63965d63bfc72ef1adf1965a11b660b6933211e96a1bb6edc1b2dde31e48ab48
Date: Wed, 29 Nov 2023 06:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1701239296
