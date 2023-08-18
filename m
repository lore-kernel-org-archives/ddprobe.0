Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAB2398
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 02:44:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C99AFC433C8
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 02:44:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1692326648;
	bh=LYQ91HH0wpMNXjU6IJVqIpt6RDRQP3r1v1jLH11tED8=;
	h=To:Subject:From:Date:From;
	b=iRokAUfd8Lc7JmvnaRcv2FGca99+7BhLkwxMRPsmgYPMgpk2SddmKiNwSdhogUFvP
	 DmWKy1YfODKn3And8SCHUrgQg+yq7ZDG3msIMIYgqrYR/m+ojIJTH0kyR22EgmMoFA
	 7cg85rKAWLe6NJgLXFWpCn2GxCw5EiVVcD6pT97r+RuEFaN3gXZW5O2mtmWxGLs2Hy
	 siyoBhLKWHpB2mTBpCf8mkYnJ23XzLOMCN2JB1+Wh9lexuA2/c+2P4BT1Wiz6H4rVr
	 mFygkrU/SflXOW1RK/CgRO7VEfwNrGSV0FRedt7NfzevmhLtoHskcUvMpXXImrO95O
	 U/lPd2/BnAE8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF72FC3DA66
	for <ddprobe@lists.linux.dev>; Fri, 18 Aug 2023 02:44:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169232664871.409.5274392123200408704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eaa3ba8eecda842af943df49760af532a3fe9cef47f8af06906bb4a8bfc85fa
Date: Fri, 18 Aug 2023 02:44:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1692326648
