Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016933FF1B9
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:28:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784017718; cv=none; b=jALxMlicax7lpZCbUopKFNa36bVxSHtHtdOGj0lWs8MnSc95UvT2Z2KAJIeYLGnWoEXfxS1b17FaIoSzR7LiXMbtX7sG/cGBDb7LRwz74S8e4hkyQyQCPIYhPHAKMOHYCD70qlfqI4Qi3M87KfKLFBTy3/C7vxx40CUtVtr63OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784017718; c=relaxed/simple;
	bh=Bvo4Iq9z3wj0GsXhf0mWfE+sCKcjIK819maerL9L8HY=;
	h=To:Subject:From:Message-Id:Date; b=ReC9IUY5O+fYsnXwP7kZ2RYwgTAwIz8ocqgQ7asCuTbl2hIb3JMsybxbLD0JdMiuENI3DGMJnWYhTAxiQoSSGWYbhTlK8lv8L/k2yyHB+aMhSI+ept2PyPjg1qBmXiW2w1eBWXfepDUd5D4FDsF+/HbJLc469yljTJA2OJc6r9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GP7YgWvl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GP7YgWvl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF8C5C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784017713;
	bh=Bvo4Iq9z3wj0GsXhf0mWfE+sCKcjIK819maerL9L8HY=;
	h=To:Subject:From:Date:From;
	b=GP7YgWvlSRRAyH8Vzz2dCy29BernAeg9c+0Xx8vutlpCVXdhhPTcCdqeNsFsMfHj5
	 2xE5+4ZEeQxdJZwhFdJu/ReYgUoY6Slza3+d3k5R2Jwgc8wfHt2s6AyXAGyVKVIlwY
	 lC1mSva08bVM0Yu9jq4m8ZSMjTMpxjhjEEERdWEIF68JfZZncT/0Iabi0I1/scdtN9
	 /MqkY4sUHXAVoJ8vjaj52/MOQ7sWyOuggZM9XoC9eDleE63uzXgqdc74CDDbtvn/QF
	 8TmztnhbKld8CCozBofwui5DPZt0u5d7H94wQt7pU6jXm1Y9S7/8muSTETNagDz2Wt
	 eT1BCxye8P6bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEE96C44501
	for <ddprobe@lists.linux.dev>; Tue, 14 Jul 2026 08:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178401771368.25423.17256347857937709640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c7b642da83c4c1d2e7ee85f6a97e7d3521c81aaae89726850347b9447b81f0fc
Date: Tue, 14 Jul 2026 08:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784017713
