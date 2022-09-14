Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C8ACC15A7
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 23:00:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 67FBCC433C1
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 23:00:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663196453;
	bh=H95H63DMPiWTs6Oe7SqW/pd+jTUdRjGgZwTkUecGOuA=;
	h=To:Subject:From:Date:From;
	b=g91pSdvdfse1lY/EIJMVpuFFg/kKDF2m6lyxDm4HmVhZAjsmqLR7Ey+qOo35AeTmz
	 YpzfxMFdjJ3Ry5JZnZ5K7N6AtoLrH6KJ/jy+2klDX+rQVcWbJz9uB37MOO9ku0vRyH
	 bR9/V9l74MrMMs0zNsIQ6Asky+ib8Dp75uxwtrFtRnS2oeihgR2pgu8q9kGXfVIgjL
	 MvhvmFRE0P0dktnUY9FlpkA1OckLYCLCHIeSbVixvk4ZGXNFyrUUOe+/ocdM1u21VF
	 jtHsy53N9zW2JMmAxBDGs+Yt+F5TOzHhWACFqBuoJVODLxXd782epKiF2uENg6cCqx
	 6M6mc0wqILlbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4EB7BECAAD3
	for <ddprobe@lists.linux.dev>; Wed, 14 Sep 2022 23:00:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166319645331.22891.18146335402250958696.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 533f7f6dff230a4d6063beb7e812a15c898750f4b02541b626d82220e530895e
Date: Wed, 14 Sep 2022 23:00:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663196453
