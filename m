Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 76DF8C8D9
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:23:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id EF2AEC433C0
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:23:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687339389;
	bh=xkNMeqk2AE9Kfyvhs4KeaYKgoMCfVZSX+A0ZJL8kcu8=;
	h=To:Subject:From:Date:From;
	b=c03GvavL8lcG7BPb8p7zizI0MNCvoYRt93bQfSqwQDLOuSE7myxpJjOuvh5VRIhyl
	 rhG3/WZRF5jjnYNJEHAjv3/rQjm8yazX/ZJpj21cNKQlbjWfZHxo01OELLtXsGHFF5
	 5jAat6yZgRkde1LCrJ1c/xaRjaHS6lMjN/nWmK8PCBxSHoA9stZzSQyiS+abXL+/V9
	 N2k2EbAqhktWs0iDIO3KjAYr0C/hXDBoAybKSyqsQv50Ig0xBXJhT6M1XQ3w2ewjw2
	 bVa98ZF0Rrf1u+OXtgqBTko8ylu/izrM9ePkqxEefHu6/pevFM+LS+83bR/JVPqbmd
	 VYwnSG6NM8A9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8B85EB64D7
	for <ddprobe@lists.linux.dev>; Wed, 21 Jun 2023 09:23:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168733938873.17632.12303968090177341209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ed699f1f5aa90a4b1b36b76d34d2cfdee40b57d842327cb8975e1eb655d3989
Date: Wed, 21 Jun 2023 09:23:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687339388
