Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B09A66FA1
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:10:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id 69FB5C433D6
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:10:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1669828254;
	bh=OdUtZklqyANdsEhjpXY0ux7DTmWI5AVmxHnjJJrk3+E=;
	h=To:Subject:From:Date:From;
	b=qodq85tbfOEoxP6oFQV4s3g4CcsdjxiL8TvC4ITImmfaDobQVNQ+Ue0n+RWTkqhQs
	 YXfNJiyiX3qTN+ccM0mYlMrvPyEGuuQn9f/W5IOZNFPYUpsvPNzoojPAOgdNuZpViy
	 pgQPJZXWVo549TpUqpkJMUMX3ZHjacMw+Maq9w5zY5u9bG4eUmYsdvAaPTZ/OCg3+F
	 hRlTu2e7RL3PprvhzMj8BO358cLqt8fFn8P06eGZPzpTLdEk6oZfbktRnHmk4gBVBR
	 40FuTSKwjfgZFLUgxS5E7VPYzKzN5sN8P/2M8oxEEQhjJcRkKE6y+ThZC2Jni+689h
	 YdHSnLal+3ZOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 52AEEC433FE
	for <ddprobe@lists.linux.dev>; Wed, 30 Nov 2022 17:10:54 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <166982825433.30338.923704656891558851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9e9721c106a60e22a0b265dca10a3f873f17a36d80559f2e6550a3564f60d35
Date: Wed, 30 Nov 2022 17:10:54 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1669828254
