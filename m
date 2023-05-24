Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3576E1FA2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 07:25:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC813C433D2
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 07:25:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684913105;
	bh=qAWqOlewnLlL9jUEuC39enauBe2RaIt5XcrpyjK0MeU=;
	h=To:Subject:From:Date:From;
	b=gWhG0cTCtUuh1mTFAWwlhxACkmTKD+RLucFTbRIGu0o2+wxUfpjfLPSpOyaKk926B
	 xA2bwEC71WPBXbS7H4kTnx089FKkMCkHM4yrycoaK4Cbq3g2jyit/vcvbdBFpHiUy4
	 LbgixxQ+jNAK3FdYddZCBTAOqcVMuDst+bo8AlP72xEzPLBchImb1DmMO99B7OLsJ8
	 T3jbWPT0PusbjgAB93/aVbfaaFLnCjRmjZLcAP/zfdwAH+PTIhHebmlyp+66xmIjHB
	 dYEOURZOMhJQlkOcnvhzU540NBDcJZBlRAQ0nhbFUs7vP3paPp1kKMl7fINfx08j0+
	 yq6ORD0wji0dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1A1DC77B73
	for <ddprobe@lists.linux.dev>; Wed, 24 May 2023 07:25:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168491310578.19676.12854601385953795616.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60df0e0c84c16214abe183babae006fb9aeda3a2962e924590a71dbc1dc8973e
Date: Wed, 24 May 2023 07:25:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684913105
