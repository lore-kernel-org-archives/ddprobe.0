Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 014592C854
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 22:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oSqv/62l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 898C6C433C7
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 22:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1704406096;
	bh=JzWzogV6JudIK09VK2YPFhU7Xdlkwc8sWR7Vha2BXAs=;
	h=To:Subject:From:Date:From;
	b=oSqv/62lD/964Rp2oR9OUuDyGdP0+tJEJDw31jOK2bPfKwl/nMtG6ASTMJt7Gi+UJ
	 WXDCTiFLB3WSSrNP6TywKjwHAnIvjQ8kRdWcpCNU3hcnX2+hanAxv3x++h5LX42kkF
	 mM0gLYcd37t3Lh5ckyucUn4g6sWa8afdFHObfXA6lK+YvV5cR3xzJOC5ADO7sIcTtq
	 /YcE5VTwpbrFw+ykPMTjkfhgc6F0fkEV2s16MpkOvhcklZAdkOLRbYeOxOgaGhScGp
	 uQLgrcnbI2LkcpaxWdW8AXj0QXZQwywY1Bt3ouRtFonL6r0z9v9iD09wp4MKpesWy9
	 pdGPdG3imcL7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C830C47074
	for <ddprobe@lists.linux.dev>; Thu,  4 Jan 2024 22:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170440609643.28195.11870534457112536747.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87928395416f7286179ddb17529eb1fbfb64b2d4696f92909ce23b21125e8bf1
Date: Thu, 04 Jan 2024 22:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1704406096
