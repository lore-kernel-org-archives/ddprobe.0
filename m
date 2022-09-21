Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9E5E844E
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 71211C433D6
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663799453;
	bh=cjFux+wwhuBvQw7X2jwq/n+NhESuHQ+lDN5x07OkYto=;
	h=To:Subject:From:Date:From;
	b=VmC2vqnz3cCT2eoCesUJGL1NTO8pEoFBU6kqTOHmiwQuM6r2aWhpAJUfizQNFQ1VQ
	 G1OqLtOHepC6b3RNFovdwDSbzWDwKwBMeTNW0vnjgLv2QS6qMr3O8tdeVi5NrX4UYT
	 S58vhHYZYkvZRljS54XEjDhDFaVlsSU5Z02ieR4yQFfRuL2IqfYt59q803BSROv/bN
	 M7dbsvZ9JZOSK+WBTSmkavjHgrUWAu/mN+3JQ7V5wdUZ8MWQ958/PZYkAICt8q0Udw
	 GLm+pynoZRndsGnhljwyXm7/p3dHRgDPvEA1/DyoBOxDyR12m6HA7U0EHHJtL04YSd
	 Q6LMEpUg6Zvjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56BD4ECAAD8
	for <ddprobe@lists.linux.dev>; Wed, 21 Sep 2022 22:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166379945334.6060.3213058171752557698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cee7aeca8b3a16aa99034ba7f98fed702d7b1de2ca799ee6e546551a1da3099d
Date: Wed, 21 Sep 2022 22:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663799453
