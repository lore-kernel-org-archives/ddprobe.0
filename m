Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE32C180
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7854BC433F0
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1674196887;
	bh=JLCaVfr3kUjOGUDC5Pm2FVn4sSDOvfC87e8mKQdVgPU=;
	h=To:Subject:From:Date:From;
	b=C3APRFdqoXxbpGNVb3pv2d8YeQje0SkNhBBc4yka1zVJDnb0/734UBQMe3aYxLuMB
	 zzNh9jpcDxWsfsVb+XvUs9BuEyyS6VCuKDjGoE/SyM9QH1uXcKYdLLvDuA7bOr6Goc
	 nH1xhjjLuAoHHYKybgUCueBVLDwuslfFF1I3j3A1Y8gRSOzvI6xzMMEFzN6t6G44co
	 0lx1kQv3IDGWlRKnt9ULbx+dGxp4jq2u+AK1h30mHDUvh2Yzo2PLAhnLLUvYfWYJYe
	 Ii5QTPHt1ve9lvAjS5bLxnObUdrlldQVh1WWKJwyLxH02ZMyH7SKBui+GHX1f6Q9zh
	 xLf+msr5npiiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D99CC6379F
	for <ddprobe@lists.linux.dev>; Fri, 20 Jan 2023 06:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167419688737.11145.6085915216476711795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8197af95bd8aad8c99bc23a36e5d1e6dfa7ec37f42907d15670d291dd7bd95b
Date: Fri, 20 Jan 2023 06:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1674196887
