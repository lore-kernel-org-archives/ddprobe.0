Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1808B384
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 00:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oIoC90/N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 93CBFC433C9
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 00:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1703292496;
	bh=0f2eRnAfKXakFkENoabXRDH/GFEOJRye6N5zhF2x520=;
	h=To:Subject:From:Date:From;
	b=oIoC90/Nv5s3JKMhsqmV9r9kCrlWHuysJ92sPHm02Iuu8dpR750uqGlgqzhrXw3ft
	 b++ZI4E1viwf6N+ToBLYrpFtl/cb0FzNd5qeDttO2FRa7K0u6DUNqAj2fGtVhgo+TM
	 d0kjSFQzR/3oRRyuGBQQCWhDbguXpjoEX6h/CO/CHbeP/gmkzC1bJKOHOm0wHJDYYQ
	 kUEGmCqEN9a0NV17ac55hkcaVdGlmAtIyXVLHZ842Xd/dYp3FuWFsdhmVUd+qbi+Yj
	 hCQySs/t5rxdm6jFYspnx4o1No1UPYgZ1QBh/+ngP7ychNoZr7qisCLbMGXeEVfiZX
	 cp+6GbkpZJhCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7790AC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 23 Dec 2023 00:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170329249644.9217.15654649640104206481.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3d4a9f7df8b9682cebef0d471a4390784c8eecead4edb07fe54e3e3470ee24b
Date: Sat, 23 Dec 2023 00:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1703292496
