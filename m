Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD08392
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:41:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 96846C433F0
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:41:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1672720887;
	bh=53J4G7AEk6GkXpKGC/PPb7nV6u3MoDZa8wzUNoIQg3I=;
	h=To:Subject:From:Date:From;
	b=Nulbvdzj4gOAIQ8Akxy+hQF0gzLj4g35cgC7y+rXZTxlA6FIX4S7m3lkyYHoqL86Y
	 EG/fcQp/04V5Mn3Wn7akrVZSezAiTD9g1LdhngWbUq119u9XjURKO7VpNX4UnDh/v6
	 xpQlPgOfv5CLsKMBKpMGVaDkFbGFrqXoC4SIGV/henwsXDQ7xicZEyT3lylTMQR3hm
	 O9e5nB5pHPV6biChOkyQ8FLrP7SyM0UDaLAPvmjysgG4XVUuZKBunYlqp4xV63W8Mv
	 Nw+L7+4ycg1YHx/ZA7S6FoxrH94V1Ob5mi71rFf+n8oKOa9yG5ZfCW2mEKxw2wNrsl
	 9vHVD7dFMwa1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7899FC3DA7D
	for <ddprobe@lists.linux.dev>; Tue,  3 Jan 2023 04:41:27 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167272088743.8879.17731656124464516952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b4f4757d97f60e5d53d155c3390214295d1ee29c15a146b6e97b7ccbb8ee203
Date: Tue, 03 Jan 2023 04:41:27 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1672720887
