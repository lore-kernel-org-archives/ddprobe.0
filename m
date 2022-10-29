Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4A062574
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:00:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 70AA9C433C1
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:00:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1667055654;
	bh=2Ukk9WfKwaTroaxV3Oy7p4N5V+16iJLPwS2XmIFwhic=;
	h=To:Subject:From:Date:From;
	b=e4PFuege8B6MZhgQqBje5s5FhiBrkJ7/owpnfsdc94QkmzNyDdL4r/g3NlLDEdezo
	 XEexohHrIl7rY9pKdGoy5CvVCrEwZXXorw53sjoNw32lmMdhd4wmcwayF0XhmQSPYL
	 c9s6j0NWgapvOCRWj57jEpO4NBC7SvyODFvr+5pGVkowcPDA+bjIQyoI1YRw8XXlqM
	 bwuKWxprE3D52dkgT10xjQylg4aA5Jhv+JVdZsShhzk7xeTfFL1ojifkorv+XQ2MC3
	 1jJwmiuogtOTF2A2TSPMzwHd+D4TUNrvi0UOmUdEDUPrN/xS3ZyeXXlLtNLcvHJ5/k
	 twnydeFdKLHDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 560F9C38A02
	for <ddprobe@lists.linux.dev>; Sat, 29 Oct 2022 15:00:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166705565433.12274.11045743173689535267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cffff744eb40a40955c6b50c57e59dd11b2cb7085a7055e867343b19c427ba54
Date: Sat, 29 Oct 2022 15:00:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1667055654
