Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3965415A0
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:38:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7CD8C433D2
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:38:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1681702685;
	bh=FXKTDmatTV2Xq7M1Djjdbu54JUmhCtNgGogyJnEDmuk=;
	h=To:Subject:From:Date:From;
	b=fUno7NZXJB5lyYU76R4yxQxIBqLakXpQfNkIfQLlT8YgeFqZRW3/uBHXrPCrXfbw9
	 1bPd7A/UR/j+JqldCcuT3Vnhh0xrmZvBDu9iOY2iamxOMJ8hL1CCvj+8ONXrB7csql
	 4j0iknRiZ82itOfFe9LzhYcXOmCKBym/kIX6ZOwIxZXsTsb0ZoI3y8KJXEXJS97Pun
	 +NxryC3BiAgA4wIYXLlADZRk05GqFwWBoTag/Xo2kmWCYiqXBpiR9tuY+rVJQwp0cI
	 SQXzTHNNzUyQdfCnUUcuerIzpfqSbOhawXzfUJr6gpgM8T4QOdHsBbexYSNc5CVbSi
	 kcIL7wbnZzf8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9077C77B61
	for <ddprobe@lists.linux.dev>; Mon, 17 Apr 2023 03:38:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168170268574.1686.14094528742667653581.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9377f3afc7165edb9e463e3f454214bd2c5c2e4d6219faf9d2a42dfcc9b944b6
Date: Mon, 17 Apr 2023 03:38:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1681702685
