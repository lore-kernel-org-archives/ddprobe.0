Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFD457E
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:10:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 6E1D8C433D6
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1662513053;
	bh=4ANZHS55EnsS7u3KIJrvgE5W97TbAM62HzgqCUYKaNs=;
	h=To:Subject:From:Date:From;
	b=bcQZMAyfjzj1LlCsCG8dmWhGzln+bqWi0LEJoS4Gf4wxv+QT92K2TlRUOTpzymWGQ
	 WYaapI93XRYegqEXPdzCwZmI6IzLnXaK2VQJrqDoJ8GuZyDJs4Nbdei3qEJ+jW/XSJ
	 yES2169JvRbvn/FJqB2wanED2kgiwfuIxKYR+fJVCoSGx8JmKfDL5jdtTluoN7P3IZ
	 O6dDmTuKY8RQij5vZA8Z22tq9lJuhj95M0W8Gq+5s1vECPd/kQzYAKC8td+0IXJPa9
	 bP2FVZxk83tcoUU/XxoVKnOKkisyqOL0/OSES0fvSw3xwYe+a2yGNeolAP8/gaAeDz
	 RyvYPGMucqycg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 529C2ECAAA1
	for <ddprobe@lists.linux.dev>; Wed,  7 Sep 2022 01:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166251305333.21952.12374062140284285579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dca76f062f6eb84fa6e433e03d8c1a983c16b2818fb0319e340ab58d35ab074d
Date: Wed, 07 Sep 2022 01:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1662513053
