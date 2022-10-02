Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B302215CD
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6DF58C433C1
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664728253;
	bh=lf2cL110AJJ+1Ok8EHtfjDlEK1GXFb5Gq6TvIlNEu8s=;
	h=To:Subject:From:Date:From;
	b=GguScEdISiv1el44nWz9uqMZe7YTLAkz4GpfyHq/TDhcys1yz+74aJgfV/fu/vGMx
	 +9NZWOj1gc/B1+yFAj9tb5tl5tyyIp1tSM5Ay8LyavMrdThyrLk55fJiJH+dHlrV0t
	 mhwyQlpxkSSAXfMFI83UoEsFXl3NX1+rx2SimWBFME1M/n3XDHfuJp5o28UG+wZVUa
	 MZckByg+fTr/TXniBFaQSJVwp2E0bmziDKbvPA3dVPXBAu1yN+/w93eCm2VN76TlPo
	 hEfwGe184nvBeiIsZgCGXa2QZMxTobtXbuFQoAbLLikQaiBBDORBlIaEGgn9IK8Vf0
	 HFQX08OvI8dNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5297EC433FE
	for <ddprobe@lists.linux.dev>; Sun,  2 Oct 2022 16:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166472825332.6513.6158461071752092652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e69635ed8bebf5be52339c22d9c93877531a782e9d9cdd1bde6c08cd915c6f
Date: Sun, 02 Oct 2022 16:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664728253
