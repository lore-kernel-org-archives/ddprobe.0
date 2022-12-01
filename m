Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE92110F6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76737C433D6
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669885854;
	bh=svGnDFpDF7fD+6dQne3950QJf+chvw9z5hGqH+8XLDg=;
	h=To:Subject:From:Date:From;
	b=fQj2pC0l3kIJupqd1XnzNH45yrGjXnAS7Gz4rf1TdYUTI/gsupyDXtFmb+Ro2D3qj
	 EOWXRR7A4qFZPaDv5yMRezzr8IYROtddSpZ7ieaaTYgCfovZQDCWZNZ5ZhzeVUhLS9
	 QgOy9OziN9vKyy+wyoNFt3eDUyeEwZaXW+K/sf90Nm9w2e7PoTY7Whg0TVg9vMMFdt
	 tXSh+L2GGtDFrOMSRrKJWq11hNt5bugHAI7GF6gS1BUBCJgib9kRS5zTyRSrM7g8P6
	 kdwN+JWsYDWbhhP4rBhbtNzPzv91+Vl+c0EEt1vaB6H0+vyztyhD8S7YoYBEwszQPJ
	 WfNaquoIyRO6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E778C43217
	for <ddprobe@lists.linux.dev>; Thu,  1 Dec 2022 09:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166988585437.4896.13118404609476730153.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02846d902c57fca1f99f3c5864d54d0354a9470d77cb5593193b9cf60ff6ad78
Date: Thu, 01 Dec 2022 09:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669885854
