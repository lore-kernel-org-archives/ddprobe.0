Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAE9C193
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:31:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 974B8C433EF
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:31:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1671762687;
	bh=05tUVm2YE6SZsFqlUrcxjYKpLaZoa8YIDnfKDMlX5UQ=;
	h=To:Subject:From:Date:From;
	b=cmosrZv/lA6xe3Kn6amI3mJQPjqgBJE+YmYSas0egpyoaULrh0PZN1h7xMOD7BCFJ
	 RWZAQvNZlyC1yK9/47EMAkcYH1dgDp7pfMCfUO08uixZMsSLtExTyQJQHXOYqOM4gJ
	 UmRy7pzzslL3ej+6R3lG8+cUjSAw6oKcdNEH37zerBgXUC2jne3OjD57NdAu4zrKhV
	 Ty/FFrmGd07HpFYklybVf3doSNT5AjMf0nVkk59Sv2ybxmPTeFi+OnWn0IQ0h1QjgT
	 ZHOV4pXdScC9vxAUvplyGy9ttEp2Ok5rbwOQr2PzcxAAWRq3lD3/91yyjjLhZf2GIH
	 VsFL3BXWnHeNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7044DC4332F
	for <ddprobe@lists.linux.dev>; Fri, 23 Dec 2022 02:31:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167176268743.14166.3413551416920294904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61d8d6edf52080437353332470244fd9ce8271dd3445127d45ad0785f6fdf86
Date: Fri, 23 Dec 2022 02:31:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1671762687
