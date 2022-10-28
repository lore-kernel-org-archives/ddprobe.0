Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D164B122AC
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 690DDC433D6
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1666991454;
	bh=BSwNYNNm1NbMVFS7ZTrNFwBHRf1+k36BFc5dIL8HCPM=;
	h=To:Subject:From:Date:From;
	b=JPAumCAN4aHLn7MJBGpMYx7d3Lv7kp7Y4VfEHhZ9CBFTFiUF4x2JgBfkVp6/YvlUe
	 2raYH7aTwfssmwISSWTdpp/gSeesmzjUAYbPMCSwsnfMYBzJMpgoKnhZBMenNO96ON
	 FUp3VqkFLDVbUvihilqSHXz0BT2EaIiDZtO+7lnwmufOWgs6NhGBACHhHlGeafXdFR
	 R+/axKzVtKDE/QKsTaSW/gsnihhUcdZfC13Tp09Zk0592rcF6riGhX+rDEttikKRQ+
	 DOKJVbV6nG9L05lxwLk3jge89RHAGP/hQmInu7mMLxkYnLxQk3tJLXuZTHMo01206Q
	 vQWeGFNHURe8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5375FC38A02
	for <ddprobe@lists.linux.dev>; Fri, 28 Oct 2022 21:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166699145433.11377.6259719558963059635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22335f2b60f3db71ac2bbd6b8712288478acc5d4e8bcb4133c53ab378a577a8a
Date: Fri, 28 Oct 2022 21:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1666991454
