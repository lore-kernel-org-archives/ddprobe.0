Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B6A679EA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:11:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78ADC433AC
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:11:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673539887;
	bh=JPEXLI22CmUu6PnhPlrK1Aglul3801eyTQkIaU5/c1Q=;
	h=To:Subject:From:Date:From;
	b=Sr6HzgOd5p4dy1kz9ewHOW4LaTDyqbn3HUR89L2n2KrTvS3QIs/IRDNpXUCoLITNR
	 UC0BTdT7lKE58tz9F/FE3akOsPp28eMIEY0DyJShCfLJkyONt1af3oY8z/Teh5RuhA
	 9XWmje3v5hdqhRywA75shzh+L/Mj3Gj+c7uqmZRNh15PvDbpMHuz71dC3mGWy7U15a
	 ikKD0oGbi3kS+LA7YJpepevRrhZs1/I7nriowimxvIVPUhM1SniXMl0LNnuF+mTmlP
	 9WxpwXKRT+hYzxlNlhF6kfsL/DnnAMWreu/LBwe8PlvilCwZgrxxJmGB0YAqUFiM34
	 cB7OG3IBbsI3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 82E2EC54EBD
	for <ddprobe@lists.linux.dev>; Thu, 12 Jan 2023 16:11:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167353988751.9384.17012836252207314531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d86b9f3255f49a741024c88e8d033f115d24634c913631d0fd848ac927859bc
Date: Thu, 12 Jan 2023 16:11:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673539887
