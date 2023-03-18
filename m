Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 571C133FF
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 23:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E83F4C433D2
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 23:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679182385;
	bh=sng9OHvTY9WRHBFHp6WNVWliBlpEG3MUur17FHQdQX8=;
	h=To:Subject:From:Date:From;
	b=tJZ4LG8aP86Ll1+bnAUNXemfpDyBsJVMuM4DnxS3Vb0nXdpBatc+6GNh8DjhOfhdt
	 264MHog6M3WNbxbvTf2XYoo8j3aIUMK4F3OpZE0C9GuV4556P7fbI2DNOQb3KQg1h1
	 ykeMYfBzP/dt5HfqpS5O66ytWdKEC5NreyexOzkn1+RIftpeCSwusZehwiUcEy4HnQ
	 XGq5fjf+eCl75sBe9LVH8aKHS51ivpO3dGURhrekcQN1d14tdHHGLKYbqCy30KC54m
	 Em91g+ksb1ExewPLXAgOWCnaqQc/kRBxXRzNXx0OAR7MvrnqIc4X8G7WdgJ2jI5LFB
	 ZLctlPyr9KCnA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C196CC7618A
	for <ddprobe@lists.linux.dev>; Sat, 18 Mar 2023 23:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167918238576.14143.8144722137406693171.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e86fc613f4b893e6aec1859573baabae3a122ee39f75128c49e943a0a4b58ddd
Date: Sat, 18 Mar 2023 23:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679182385
