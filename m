Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6661877
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:21:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9AB01C433D2
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:21:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1673151687;
	bh=UEvR/Y3awuF4RoxzSFLE7Pi1UvBFQKYdDREirj0lIDA=;
	h=To:Subject:From:Date:From;
	b=jiUaIqbKQYlXp4jv9lS5DdH/1lbapqESjRA5DyMLHAgQB+eBSELl06eaYVfXnl1z0
	 tlFs45WpIDFSnm3qmRtRQAdba2f/PeepT0JPlkfxAjKeFNk6ZyNbjgFjPKn6ZncK/U
	 orWiyR+HjA0+C4kQWH1q+Y6wfvSNdzBMdfU1D5u0k+Lh53OG9+4BypV5uovQdV8aJf
	 oxnDHNA8Mm1xx0nhDKANg8sSCnebnL49565KZ1uHeSzol9hT579/ledNX+1PD2w74v
	 jEzOma7bNugydFZT5+evkyd6+K3lea5G3cnqsvgPw9gjwAGVbhqGZA+N5MkqaHmRR7
	 u9v8og3j2nzqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73D08C53210
	for <ddprobe@lists.linux.dev>; Sun,  8 Jan 2023 04:21:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167315168742.31665.6556087479274095987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47e3d6583781873e8ab0bedfd3510605b6b534a49e4650cc4eaf848cd813a9a9
Date: Sun, 08 Jan 2023 04:21:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1673151687
