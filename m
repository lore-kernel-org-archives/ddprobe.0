Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED3E18AFF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 17:15:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85ABC433EF
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 17:15:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684948505;
	bh=Luo+LbN083fjbtkrDtH5bne4F0OD6dtnbaSu4kDvU5w=;
	h=To:Subject:From:Date:From;
	b=OjZlYu3V5G681R9Zl67d1AXE/sOvtfcDWf8HT+InW4ss4uQnUbht89wGeRqYRyAWu
	 R1K3AbskgeF7HR91+U8twnK43iLm88RsWw9KPd+A4/45IshkTE5BtQ3fwAp5Sq+Q6V
	 4xk8Ah5e78LcsHf9kaOsPRAyVxvjxVOHz2A8zWdIYWzEqwMeiL2gMFm5vKDCdXFpB/
	 sWtJ2LEBEpVFR+a2N9HSeh5Y/vttyIdOnhnTTSmLMa0ZCFmTRAryaOz4NqGjzscq7C
	 37fcfsyjN4apHnzh2bZWhEvBgtZSGh8dD7ETLJrehWeYVtoinip4H9KXvcNxXVpCXd
	 eq6BSMsbX1Kng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB9F2C77B73
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 17:15:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168494850581.11365.13896471999299558080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab086948ec7cf027d2881578a8c33e6e8d3f489acdfb97c7bed88a26c74e2c78
Date: Wed, 24 May 2023 17:15:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684948505
