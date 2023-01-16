Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38472A28
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCDFC433EF
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673827887;
	bh=e18Urf+cfmgkSbdH5j2nXbAfLHYU2XnQlPjlUt3sozA=;
	h=To:Subject:From:Date:From;
	b=PS5JibRmN50u75x2ac34JGxJzWfLTUbravVmJY2qfoA0bgIfN8R5ckRLN6Ee9IM2I
	 waUyMMezNpZdLR4m+u8EzIT8gYzJ510EAy/H8cowbkH505rTmTFzt6MmejQ2v+oqBU
	 pEZ7nX2su3vcvdeoP1EKmZcus3bLUXpJ2r1SYCLcNRUh6D2zB4oThRuG5n7OrSGsCp
	 he6WWF9cWhYnZIENA2/fv3GEg5kbBLKBW/1ELiAGOBDfC6vKekqNTcd1yRt/1WmxkU
	 o3hfKmTY+7skaOSQj+g0hcOE5qnNlO3y3tH310Fx5a378tIqSaVIrQ244/ZN34w/7l
	 m7LYB3D/rkFtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 850C5C3DA78
	for <ddprobe@lists.linux.dev>; Mon, 16 Jan 2023 00:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167382788750.20200.10034756028459546154.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba9ed6d29403a10a4041931afaa0a0e474d9fea9e54f91fca4281b24120ed4f1
Date: Mon, 16 Jan 2023 00:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673827887
