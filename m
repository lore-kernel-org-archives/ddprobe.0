Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CD980C
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7BAA4C433D6
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1665834053;
	bh=tLcTpQ2xxWH1ZsUkHzgUbeUThgnlvftvy6v9I4UCSdY=;
	h=To:Subject:From:Date:From;
	b=heApBxI3fj+ZO1T54/nIW0MeGkjQ67IU58gIfOs3qudiYpItl7y/3mVhtn5dFYvwx
	 weKP9dVPbAVbKKdBXvyUdm3GvlMdcIC5gbIPy4b1ZI0t9y0s9zjZHJYS9OmrneZjxU
	 3N2l17RkVG5W2goNHWL95P25cIr4Z2I9+aTgRSr3U3ulYd6ySXI+xFdyf3NCgRHy9F
	 SF46EKX9dKPA/eQEVA36Na4kVgIltf/irAReigBI82IKXqjwCRbfB1DpFOMmfwiIII
	 Zk8Fx6L7LvsCB8yWa/A8k3OwuwPglKvwaHLCNrBzhJYp/7OdJZDaOfMQSrp36kjsL/
	 ZlTCUQCPx4WQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62B6EC433FE
	for <ddprobe@lists.linux.dev>; Sat, 15 Oct 2022 11:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166583405336.13154.15423948318902879702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdd60ad10ff8bf5a17de5a1c235f96fe387d62bd85e42bcd998da98ae0612af4
Date: Sat, 15 Oct 2022 11:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1665834053
