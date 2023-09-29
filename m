Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5534111705
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 08:56:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D47BBC433C7
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 08:56:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695977768;
	bh=0Ame6lmvwCt06CI7X/GvT8SVFg7qiXN5RzUnji3p40A=;
	h=To:Subject:From:Date:From;
	b=l3LJ0zWaN8PKIN7xKAk0PaVVF3PoeQkogLT6vYt26H7XyH5C1UsQ18ILokJ/wXJq3
	 kevg0EEcprF9kLQ1SiuaqHYvlJeX29U+MnaThTaZimanKQuvXFdX0j35XEJrSSBzCE
	 u4DyDTtVjQVWGAt4y6/5gXP08e9J5gCxpVwKiFFyYCRQ2RvfYzEx1f5PTPPReRAK8w
	 Qr+U+a8hEHvulzW2Fkfbi1vmxxvAQAMBiXtzyQ1TciMk6NudOdn6Q8hg8gGLa+Uble
	 eem5WaxKyqEF2gAx3Xcd/FGhx1DNADFzAJkoTqTSkXSmG6JjUR4ycZonIJ+ZxBxLLp
	 Oq0IyTvs1XShA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B125FE743D5
	for <ddprobe@lists.linux.dev>; Fri, 29 Sep 2023 08:56:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169597776870.2758.15464720917654148147.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b34ddb7528cbf0f094a3e21f734d499c1a564a13c2d6ded0b2ed0aca2bfa073
Date: Fri, 29 Sep 2023 08:56:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695977768
