Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FFAC79F9
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 13:53:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCED6C433D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 13:53:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1680011585;
	bh=g7HxfqoSVpfceV/Wc9ZOwnj3RmX5Td+YjvkCFGcVVaw=;
	h=To:Subject:From:Date:From;
	b=Ape6977iqhItis+BDIU6B0uhuUpYvVzLdvJQVPAj00Bq0Wk+Q6l98PrrDTQ4NRU4d
	 JeDvWbeCchUSjVj7Z0ZJCvl9+7b/WgPaxXAckw04kiOlk4AGWyD0a2aCFpirk/0K5Z
	 76hDqiRCg7jUvViqxBWbS9QNHd5zUUnADCKcJTgIRLG+Q/9pd+NQlXGX1ks7baindC
	 96udhq5t59so7tjF64a+xl4In8cMKfNHUsjgbIyzVkRUudNZZ+Y/tFTrUlZ/91A6bx
	 1hV/gShGoijeb3Tzwb/mqvjzK9JF92CIndm+lA7jDvhKZMQum230uDJYgz9Cm7eDQJ
	 VLkm2gwmVz0jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3C79C77B61
	for <ddprobe@lists.linux.dev>; Tue, 28 Mar 2023 13:53:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168001158579.7673.7495560344745749814.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09218268b90db8eb16cf2ea339892ae027bdcd09862dc1d406d4d17d061c6658
Date: Tue, 28 Mar 2023 13:53:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1680011585
