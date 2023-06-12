Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C54C1381
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:43:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id E1D46C433EF
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:43:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686534185;
	bh=eIPDkCSv7+gIdgwHPEiAbsvYVIAZxerTifIXy0u1yks=;
	h=To:Subject:From:Date:From;
	b=e8MTtKhVgPklU5yVojZ13x/jY6xd7AvmJU8HBYcWsOaVUQ3vwPECNRru+zDECJCHL
	 iLT2A/bgTPA3xpxV4z5g5TPnUMnjpuYKMUzGmLHznV0iO2z42A3Sq96zjUMSFc8pMV
	 0n3PoA2M99tuaUoG7b/jVHJqhkyzk4amcPb9bR8R0ikNrPHZr4a4vFvzVsHKce0IEN
	 +fYDk4/LgNT/ORst/6cH1S0yM6CFVbdd8xIFqPmYtnESByWfwewzD7StwXdOSxxvnR
	 6eeBIWZJ5u++pEbGR+8QemFEoSOpR7rlUDjzKssHxsVrll1k+TjNBcYvI3YGgGvvrw
	 cA5+vd74NkgZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C08B6C7EE2E
	for <ddprobe@lists.linux.dev>; Mon, 12 Jun 2023 01:43:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168653418577.21785.16170028372529066834.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4f9cccc3c12ebb7f18862b24ae58ea6894cafc3df1fa5dd5f7d4578cf42896
Date: Mon, 12 Jun 2023 01:43:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686534185
