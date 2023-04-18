Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F23185A
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:09:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0A09C433EF
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:09:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681801746;
	bh=8+kUlIn+CdkReTrUiu9FIXqhf3WmryLYZF2GQtJTwrc=;
	h=To:Subject:From:Date:From;
	b=G2sFBHQfmBHixpmJucukFTT+U70xPIcwyhWSMk0RP7rNMzYuBV5ANT33nUHWu4Opv
	 NV3FLAt6/GYoF7QFHRVOFMExmR7PvAKDvk0GZaQfaFa1XDtjCpHmMbwxFf1HqUG7le
	 aliQDYbevjj+hw+qb3bXT1y+ACUE20yAs3TxUCcBBdbFu+RfnDvmhpnu8jflYeROGf
	 ruu80mcSHSMdxTS5OAg6hMDCB5H92gVQuOdbJhudjmqoAMu1YlBAPnHFC+O2Z2gUrE
	 H8flyn4lJAXfr68KffLP8/QyrD3ByfKaiMLsAYvEFwW3iyzc1bspXnyumdzGFjUhrE
	 pnlGV8yE9+Uhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9A8EC77B75
	for <ddprobe@lists.linux.dev>; Tue, 18 Apr 2023 07:09:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168180174579.27098.18185973793449120303.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84dbd4e98ef37dd1b85d1ade85d0ab0a9fc24e12b016d81ddbaec615f757be9d
Date: Tue, 18 Apr 2023 07:09:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681801745
