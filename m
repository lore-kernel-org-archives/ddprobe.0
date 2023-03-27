Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D4836C
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 00:32:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC2BEC433EF
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 00:32:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679877125;
	bh=GAbKcStnA3ELAugp2Uyp1N+LRjCJV37IcQVVsWNQC0Q=;
	h=To:Subject:From:Date:From;
	b=aSqwiWxJ+vB+FnnUzBKDSsNH4eOEKgavd42Lb3lLcmHwq2c/WmqKbiMJYNFjugKDR
	 f9ALQl3W8xnTE08RRkeTwVCk45OkhXYbu7lgLi75gx2JqrBt03dpqPk5p5FWqu4uos
	 x79SJALcG9KflXiicJ5RcO/xUpKE4BoodFPu4FHbqGKzx/g9ND99UBaxr+Ko5D/iQU
	 lQ+kajxPmuZQfyMy2IqIQsNIDUUnYTQz7eD24cEVM6hiMOiNCsMzNlNtfGr9yaATwR
	 bDe3jMWZYpiKnx9XyOpx+R/n3heKIBEqeEauN3JZFztEDTzsPSC2yJ3MWVwquw80Xd
	 pVsQViR2D8StA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCC80C74A5B
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 00:32:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167987712574.8523.9050315519641164610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8637ff96a23305a569666ca6100a82d16515470f1ceb057e1f7294df63ed2b40
Date: Mon, 27 Mar 2023 00:32:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679877125
