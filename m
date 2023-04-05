Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B6FD7470
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 18:27:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBB9C433EF
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 18:27:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680719225;
	bh=zL1lTws+u+jcZnYs4RcgBh1jALe7xYH5NLW/OOMWEec=;
	h=To:Subject:From:Date:From;
	b=UC2dwZzAJ1ZhvZAeObWw1k26967HFn37H+QCHoj5MICtIJ98bGTJWPofb5YJXykKK
	 kJamJ4RnmnGN2JXtHbqlCMcp492u9DFIeo4NJtKoI0SLzjK4lYIPTgyO5wbtV2endt
	 fHi2I4yUyIRhw0Zh4jgRMD+SKhUOBQluCt6yVRUiHCuS/E8Xhq79TZfGJf3mcW2gwm
	 TI2J4NNTvpicsqI8V4B8cuVFo3Qr8/Q0ruIJlH2DDpXmqSptlF2mCONgdJHelxir4P
	 ut17qy845oqpLnaDEhIjuQety9KfXNuLpMeoGajjvTEg1Tc7ixPaZIp8Nf05Lcpq7m
	 KImPcXtxwISrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF34DC76188
	for <ddprobe@lists.linux.dev>; Wed,  5 Apr 2023 18:27:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168071922577.30653.9681258648075525806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27dee9124966ece350dbc6208a20ff4d1f3060dfec43a4b9b36e37683b3a71d3
Date: Wed, 05 Apr 2023 18:27:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680719225
