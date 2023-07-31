Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488F518B18
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:32:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C10B5C433C8
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:32:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1690824728;
	bh=9fTkmky8MqRoT7jy2m69yl7+zmb68olJLtZNyZbWP2U=;
	h=To:Subject:From:Date:From;
	b=NeF09rQmUA6jur3PjlaF/HRgISoZL+GE8vpcL91yUm4TqixIVaxQJ9+Fde1rlREpT
	 Ss86InxsRjWLA2gHvpi5mJebTh+h/BAALLjQxHrmJm8RkG2tg14wRMdDgOSqcQSs99
	 aRIseC3xyb3c1vavkGr8ljsTsqGZYTGJoiTWLERxVupcxKfWt9M8nr0m7BUdNpMynj
	 EzIG6KamRNFsTsBdkbb8oBNZ35P+89v2dcfJ9KkuxHMzC8fa2zt4fbKpsAclNEqT01
	 cs4wtmDytljrb3ZGqq54Mfu1mW5PcfpnYeWTFwRslJtOS+NCwTuPQb6je8/sZRiOHx
	 N8riwnGNOoyHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A33CBC001DE
	for <ddprobe@lists.linux.dev>; Mon, 31 Jul 2023 17:32:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169082472866.18845.4837790385735946918.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ecde241c70e7e8451199a01a8e679cce8e4e37e41c449f35735c2fab72416cc
Date: Mon, 31 Jul 2023 17:32:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1690824728
