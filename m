Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A8F3A20
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 04:24:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDA85C433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 04:24:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1694579048;
	bh=SOAgzEEqCnwyTifvEYDsaGR1FtgG6vhMX/8LocugP/U=;
	h=To:Subject:From:Date:From;
	b=UP5ljFYWrhmDHyCiL8MrLtZNsh5J9vumpvMAzNgJWMTPqgQns8vTPcAEBQ9awi3+0
	 fCHVvMoV1xiaEYXXIXdJQb1QhEgExetjkjnl2TH6bp4dlTSWvwcC7bPH+DkutIMf3D
	 Q6IR1uq9eb0AARhzJ3UAtm6i4LhgRsvWK+/eqP2776AKpwiiK72K3aiK+/Bis2JdUF
	 lkyYX1p8h2beSex/ysAoaJtZs4XzlKfHgWU2CfxGpi6DSkLsRvsAO4OrSseJN0T6bT
	 FPGdkoCWMvaTcDXVGbiZUfmSw1nfQ+HyceN9AkPX5oBlCDyNm2zptRu26ZY+e9y3Oc
	 VTz0B57leNPQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B92B5CA0ED1
	for <ddprobe@lists.linux.dev>; Wed, 13 Sep 2023 04:24:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169457904871.32556.12558539471950258679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a51e9f5699b3447e83d2ac13d9e95b47bdc9b07dddd19755e368a9a72497d613
Date: Wed, 13 Sep 2023 04:24:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1694579048
