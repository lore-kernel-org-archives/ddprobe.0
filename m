Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB029A5F
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 73E16C433C1
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662845453;
	bh=gR0tDRW+FxLOFFdvISpxDfYh8+yGKi9JPvrkY+E4Xc8=;
	h=To:Subject:From:Date:From;
	b=fQzr12mBM8aaNxnkaT+K6aWkvyw/dP/VFW0TtLZXoTBctID4JH3jJ6/jPR9FAi/pt
	 z2lqFTDNYAXAIHZPsm97z3/9uK/CO0d0rThxmdO9U/DSqlxXv3DMMJqszkNswu1y8S
	 diyuSw39eb3UaPPlXortbCI+SOKDeyDsub3ndYFd5RGdMTzAbsJ77lHIOEyz8/iWL0
	 sc3VwbXNJPKPEQGHKd6HtXVJoiXbgxRbmV6h3DG96S+XmvToCML3EJnni2QN/BZ9uV
	 gdiZAFDhmBSAUenh5edkbvH92DeSHkNZ0Cs1UJu+AP6Otbzb4THYINkV5odfkD6ito
	 Hl1h3Ts6Yv61A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 57F43ECAAD3
	for <ddprobe@lists.linux.dev>; Sat, 10 Sep 2022 21:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166284545334.29786.5113912368718377702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be6c11bd063f932000af0d32c0352b8e58fbd415d159459ea846c4a06f970a26
Date: Sat, 10 Sep 2022 21:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662845453
