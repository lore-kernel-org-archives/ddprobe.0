Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D37568F57
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 90CCCC433EF
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672773687;
	bh=XVfgWpf1Ca9g+tUOQnzZaz6UKjYB6wy5FPP82cro4IY=;
	h=To:Subject:From:Date:From;
	b=faZbNgh9kbB37U+j+5WUWar/yBbT2I4LLBNeQyAHx1pv9YmTdwuUUxm0nGAU70egs
	 TAwffkJkvIHdNQq8c6BQ7Oov9oUScz4NWVynwnS188BxnIaQETt80217cGYlaTtrCH
	 rMKHgp3+MFsP0t0LB1zly9CxAGBF+ULLYnua2OUOE/hXFkfYjd2e9UJzHXkw8RJcZO
	 lW2AbX0FBvlgi1+b+Pd9qs4bPNlUZJpaPj1EXAQZ+9kUpFWSsQtJtp3CbTx5NA9TNz
	 wp6zCWGucjnzR+WJpOYbUnItBTlut7HthqEkv2AFbbGPTItlAdpb0QugoJ8bsdu/mb
	 /AP36pHAA1JAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6EF01C3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 19:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167277368744.22415.18330054420297736012.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd41822df528891c7edb799721de1f2f5af09f2f89be17eaa03499ebf434e96
Date: Tue, 03 Jan 2023 19:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672773687
