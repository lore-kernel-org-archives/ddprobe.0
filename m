Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E5D703173D
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 18:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFceJ+sf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 75D8AC433C8
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 18:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1702491496;
	bh=TOCoOFZFkgqtXqWBQKQWLgugGokqlldVI9BVhjWY/jA=;
	h=To:Subject:From:Date:From;
	b=sFceJ+sfi3MALUgGNRBPo6Vbg+65/IfI/slKw/n1UO2MhUYHqc3ENSmcODrjdKGfw
	 D+0ysKBbWgK2szKLREU/nbZFTGtvHgzxNf9MFzxdc8Uv9M6/txQNaifL/bdj7hFUlQ
	 4GU8/5kRelaTsO8Ziy3JsTXxoT9k1WunqTW9piaWFwQfM/n3RTH5hk1DscCmtRCT4H
	 EgNqjZTXR2rzUlBDHNQJIRxJMMfL3sM5hOA2EBXs5TSdpVTytBEPfGzBk2VGLwdTTA
	 VYZHfizwRCaVNfpBXyfvHWd9eKfZDlVKJcMvO8aWD9SxT8wv4z/bF+UaDIzgrISQe3
	 qGjnbt7SiKaWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5FA1EC4332F
	for <ddprobe@lists.linux.dev>; Wed, 13 Dec 2023 18:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170249149638.15484.5628526091129263189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 753dd6a21ac64fb4ef3cf453744c51bbc6eb46aa7ceaf05e5d49201078af6076
Date: Wed, 13 Dec 2023 18:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1702491496
