Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4745779D2
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:45:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBB7EC433C7
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:45:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1695163508;
	bh=bTt20oOdgqcAxd2BLG4BLqRD4x6jN9M2LzlmEfbvijo=;
	h=To:Subject:From:Date:From;
	b=LXJIzCxrJYPXQVwvDFnjBgj9a/Cb31h95Aojhrzdd9Vm7DuzXPKtB1YlH8BeqQGWJ
	 tldI5GJx4ZSeSF2kcslh0d3re02pwXKkQAt2jnErrNPIKxWaWDQ6qLJUMB5rdxHgEk
	 s9/GGXL6h6Ntm579jlroKjcyx+KO2S8rtzQ2CNATEQIkPtFfGRPVje4eixJlNyVcaX
	 Q8+kflosSnl2GnqClcdelnSL+p3AxL0TV1maupHqM4JUIHdWJHqfkR16aqODqXHspg
	 lPc57YI0ylg3cf8V+GHx7cetRfXutU4sUzC1dHBjCXZt559saumtmdKrZ+yTKIYI9w
	 bLmUYnwHfpG0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C38CE79A8
	for <ddprobe@lists.linux.dev>; Tue, 19 Sep 2023 22:45:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <169516350868.17755.7201379452937020264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39a7eadefd4a6f344ed6d9dc87ee27a2672a5409c2b4b7d53b52b4879c275dba
Date: Tue, 19 Sep 2023 22:45:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1695163508
