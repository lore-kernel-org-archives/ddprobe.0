Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACBBA7F
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:20:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67FCAC433D6
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:20:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662949253;
	bh=nzcZ/lVjMW+CKbs338vimkXBlAG4jl6QnEUds1zWdG0=;
	h=To:Subject:From:Date:From;
	b=E4nigfCJkflgFJRnFaWBfHX3ku/0p+na97hlMP5wsbanjCZJDjb+8oey6A2YBu/c7
	 8jxVWo/48tTiWRAcQCjyPyrOP8WdeMUqyoO/EMWRlYXXZ7BZygOHqlutgBktgipgNG
	 CPSLQpDBFIRoTj3Ha4ycsMvAAsbnmxgrlDQ58ic5TmvGfVXTefF3VbsFSiOW8mSdhf
	 AO668fejca0wpS2V6Yx6HW9NMVVPWlujyS3xzLaQaJ+B0w+Bg8z4bQ6T065PQsEi0v
	 TWGYYYBWM+h93ZgHUnRJm8fS2sAz1TOT4+vW9LclUnu7vhlnBEJqtSJ0AVWyzZr2vc
	 Vam3XmfxzwdpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4E44FECAAA1
	for <ddprobe@lists.linux.dev>; Mon, 12 Sep 2022 02:20:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166294925331.32018.8206957303760278543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ec48712ac38dc011f011f2e1d4157e95c126fa0b0832cbf7c5e5a6a88bfe2de
Date: Mon, 12 Sep 2022 02:20:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662949253
