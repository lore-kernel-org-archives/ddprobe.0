Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BBCAD1863
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:01:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80863C433EF
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:01:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672239687;
	bh=M3Se1JOE2XxT5WT8gLfC/yo6UQq3uM1rC0fngdBYEx4=;
	h=To:Subject:From:Date:From;
	b=IKEBiWX0s9dvXmyFBtxOpza4nryjuJ2Yc6f9dSLVOFAUQ2BGSWxrR/wRrQLEXDZgE
	 /wiILybq0f9Zvcqkno2JcQsHUWcaKkL/z0Fbj/PlXSfQXwyrwT/HsFV12hsFHwuuI/
	 yUEW0M97vdv2HEnp/Mc/dCQkf0mnYca+Kyyjtp1n6Udv87dbyoIhdTs2aI96P4w3xK
	 Sf11XYIo7cAFHBPbqQIpMrTrUj/9Uk8B38d4n/BzAsqIviZ6TF6aA2nrXhufaQZ3Uq
	 XFoflsh2dG2ZGpxSp9Dg5csGLQ7S0rnhg4s+wHH5eT8KpFuQ+aUOyNJrE9HcxwgMt0
	 lSHK1ebgZtOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6791BC4167B
	for <ddprobe@lists.linux.dev>; Wed, 28 Dec 2022 15:01:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167223968741.6187.13802145108325318549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5932b60baee748c6aa8efc5fbadfa0a1813e1455784bf5d375ae7d15666672bd
Date: Wed, 28 Dec 2022 15:01:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672239687
