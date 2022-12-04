Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC80F2CA5
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 12:20:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69921C433D7
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 12:20:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1670156454;
	bh=/VO8DXBkouQggK82NfmaBHCyqN9hJMYzpiKURGeDMUo=;
	h=To:Subject:From:Date:From;
	b=U2Tz88zQoFS40CjSfd43p3zh5pZ+r7HaQdjsAU8eX2AlAxK8EBx5agxhF0vMzIS/t
	 MkIG7kH9fuogkUVsWZYs2Z3N3Q2jckbsV2FVx5D1dHhMN2VwHWUvgom1R1oJG7UUPM
	 3Wdox0nAsHpUmuLr7K51Px9PwZ3xzRdFbRqp/wes22wKflvlUw+A8yCqVAVSF5kV2u
	 0dzB/hKlhoo3djAcRyaR+mgWWlt9pts/4LR3UM89QyalIAC05moxj7QiJ/PYkrs7Eh
	 pmmtEeD/uHFHpIjCso90DVhgB1P8IUtV0CngQ30oU0BNKmHU2DD1iLl8j6CLDwhrea
	 vnPxaXh5mKNBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51E1FC3A5A7
	for <ddprobe@lists.linux.dev>; Sun,  4 Dec 2022 12:20:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167015645432.30893.7247939604902995608.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4fd64cd8d5624bbc0d1a3a62e7e4c3b486fe263cf14b927db7003e6492f7eab
Date: Sun, 04 Dec 2022 12:20:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1670156454
