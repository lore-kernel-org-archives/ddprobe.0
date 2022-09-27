Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82BD653
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:30:53 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 64657C433B5
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:30:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1664263853;
	bh=saGv+hoZSkJ2UUvT+khhjrhC9zk7Qx5KYdnmmbXmHsE=;
	h=To:Subject:From:Date:From;
	b=PrdM3cEcQUK/MtTQ4v/YwsSLrpdv1vbbgXsrx5mp1mD6CJvQpUcsuQhH6GmIBASFO
	 MFCBdyVh6nQzleFSG2YJ7n/zXOXXD350CkDPUVAfVz7eTblcTNk2PbKt3jMEiX7DpA
	 zpdRuDGCExUG+MaRhbWqSMwDtQNgEcjuZElh7UkgAlvWsP0vSfTGjrnrh7kPz+UEy7
	 ulL3mULiY5Z5UFxXRqWIKVKkup6NHwU8p06K8qc41kKCiAHhkANjoGaIhQUfJ3U5Ps
	 8Vjxy36LHpusB20panm858cbH1rS1uQcR/VeNUoN0vve5qEu6jquLbPYRPZzi5/omw
	 dRAPjAKwL2p2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 50A40C6FA90
	for <ddprobe@lists.linux.dev>; Tue, 27 Sep 2022 07:30:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166426385331.9009.12680209407817581235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bde012bcdd18581824925a3a14bff97b5a6519fbddc0050c4daa6e577f95593c
Date: Tue, 27 Sep 2022 07:30:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1664263853
