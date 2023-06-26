Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D15C1856
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 06:53:08 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id C268EC433C0
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 06:53:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687762388;
	bh=p8r/hofOJEb3TqCbO2BG9YVXR74S0of6BzKB7Hz43TA=;
	h=To:Subject:From:Date:From;
	b=GjDp85BkSnTc5aR2ygx1KR/1OCqgJx5hrpqIIPk35LZSUb6uQ/YbSTILN5rjOTYIV
	 jFWVAMKOFngLKNCVmWsrPgw1P7FGsS9PCZ+/wUaTuEfBjnGPfRukkj2VDXoVRBAPN3
	 ZeJbQG6h3R0+futrywcoGS/tYiF03ZDrscRbWI+CASQD4bPpG1ajUaTZAVNd640k+V
	 Z1cG6ELUEELUAbg0HBNoald7LupAGJgBBTzErlj4wS7lrl6j67qqWtBScAGD/SmJQF
	 nAqAVet2RqQYjmD0ioIiN/87rx03kcOyWshGIILz64BMbUbQW2HyFdwzd+SDNzoU+H
	 8o9HqjoL83jfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAD83EB64D7
	for <ddprobe@lists.linux.dev>; Mon, 26 Jun 2023 06:53:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168776238869.21062.797073590464850890.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9ff73a7523a32c40b8969180fcdbd324142e7fb14364dc01cc2ec62e60bc28b
Date: Mon, 26 Jun 2023 06:53:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687762388
