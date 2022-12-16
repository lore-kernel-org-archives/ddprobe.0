Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0B74190
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8F953C433EF
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671193887;
	bh=U9WLAAaiXnuuvMzT1DIQ5TcfAadLDstS1JY1GvwXyWc=;
	h=To:Subject:From:Date:From;
	b=YRtIsdkSjEreYBaphvkPa5zf726mEP7KVnzWALXm7iP5CvHXsPK8bftbaYbeH0488
	 kS40CTWM226k5aGpLGb5URYkhWb8ZZeWADC+N349jGPEQeiAMGG6ux4SVx5rRwJBwr
	 XgdD/9JtK5mLbLtt8aJ2n4pCHGL8Geeudg2b/2TKS9pt0zJMWQGR0mnGJU4TD7TqA1
	 Osp1bWnRcNztXfydd7VlSSIWxsZKO0IOo9R6Bje/z1k2uv7lp+5f94FZru+/rYcq9Q
	 bmw77/ga41trVYnYwLQmKmpYJjvI/OR7ZIActQhRg949ZF6MTJGwgXVds5B9mIDaTH
	 +Bs17bC+fCOMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 718A9C4332F
	for <ddprobe@lists.linux.dev>; Fri, 16 Dec 2022 12:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167119388741.23267.13748513173665267123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c8a5fd48f69a5165715071b9dbdb3b4efee67202bc329aec2d88416a61c7f94
Date: Fri, 16 Dec 2022 12:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671193887
