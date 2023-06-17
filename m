Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 914E2A28
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:59:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB928C433C8
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:59:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1686974349;
	bh=H5fOfE+6wqkR+Dxq87uaHgg1/I/uFF3CFX0VYiXamvs=;
	h=To:Subject:From:Date:From;
	b=YP7Eu1l/O7m/L8EZRthL5IjAfW1uw69cpKmNHeKASRxxWQH4boHnQVFHgPXyoJxeB
	 O49pfADBTzGU4S2xwOfAIjQCrjQrHn1T5+9MGXmfd/QSOVbeldUI+78B/ZRKqJmIOa
	 /7nLqQofcXYja2fS/Jm7uauyQwk8ZeV74H1Hsby4YTt4fANSMpUsK0U6oKyEZ3pwEe
	 kqxzkp285oj3ZLKcUi0AOB6N5nwseVngpMBvbDzTPyciXFk3KncgBqn72i9V9oQkKz
	 /BlvFEEvBJV8nhb8rmifvYgSsrbYfkf51QIpv9rLoeGWmpcuh3MXZJYJGyFUvjRdxa
	 /Ds6qRJ7OW6dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7092EB64D9
	for <ddprobe@lists.linux.dev>; Sat, 17 Jun 2023 03:59:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168697434871.2316.2271942081991780549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eec419a8878d6d3eefcf52a65b3f5855fc77da2f8170496caf28273ee5d6694b
Date: Sat, 17 Jun 2023 03:59:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1686974348
