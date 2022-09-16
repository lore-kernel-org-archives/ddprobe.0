Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C3DA72FAF
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:40:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69733C433D7
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:40:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1663321253;
	bh=B7MN9uXRbll6iZ0dZkbC2X89iZN8V+Yra7YVJKgKi/Y=;
	h=To:Subject:From:Date:From;
	b=GM/WvNiv3wv69Pg+YZ+uu6ethws1OHLDp4iK8QGQGgAKxDbFJksnTScdWv6cZ0fCV
	 cmZh4hoJRjDmYa5CtzjUWnloo1JfrMPa6pwgLo1B0cyYoRV2kY6GooDXh6rMS+IeFM
	 A51GJwZUSGutl++Y9gwVVUMCYpTsR8cRaCaY1sUY3bzVklj0rmHaEYgf3LKoTdGdqd
	 bt/skrpAssma9xe4A/4SOhKXmhwdbyeLayUn0IB5uqHeNTXRbuyisPCVFZ9w2erUOJ
	 nH4DPqqHN0ecDptxHzClMYqu6PWMsDBqpno8k53sZvy3JaGITrAFXPfKWkxHYLgmQS
	 jWs5y7KErXEQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 51952ECAAD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Sep 2022 09:40:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166332125332.3541.10105447662119668087.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6212f04b3a430f3747ccb287f83195058e21013051f0f8cab71c2dae52db4913
Date: Fri, 16 Sep 2022 09:40:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1663321253
