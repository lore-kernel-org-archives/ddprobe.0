Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7070BC2CF
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:37:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E213EC433C7
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:37:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1688762228;
	bh=zqLOs/gtq4r2dsq4rowgqlVPCewzpeuzrr6N5GCTHVo=;
	h=To:Subject:From:Date:From;
	b=TsN/5o8qeDV1VHYm+9MzaSnGyhdMrPf3LDb235h+2IELXS4ugulDHtiTwIGDgmidE
	 Ww5/OhlLVa9MehuUzXrC55Dlfgn6urBIyJKrYpaMXdNrqROakmo8GCIQM/fue+y2ta
	 gMDd1ys+w4GUHPJNXVIHwDQ9BCJAMh/q9uVNbau0f22Gw+EqnIHm0oNd0Ab97DCtog
	 djJ8lRna4Jm4CRkXjuNGo0X47snlbxmwwOgQ9GyJPqjg61fvePQkmF8+Kd8MA8tsGH
	 vYpF+mYsMMb3c/U57KeaRL25A9yrqE8KhB1F+7bLFZ2OEa8XkAzEVly21DMHHAZMM7
	 ftr9QDsXFQOBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D6BEB64D9
	for <ddprobe@lists.linux.dev>; Fri,  7 Jul 2023 20:37:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168876222878.28294.16166364151926482674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b834d5cefa025679d067531373b1c27926eb57cc48c1b378e8eb4d52702bf831
Date: Fri, 07 Jul 2023 20:37:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1688762228
