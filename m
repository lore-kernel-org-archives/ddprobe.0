Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33DB61FCE
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 21:29:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF8A5C433EF
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 21:29:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1684099745;
	bh=TYglP8z8SkVqce9Fs1VGR3QAAqpztOGI+hiH4ntXeHQ=;
	h=To:Subject:From:Date:From;
	b=Eu1qwuk9J8u6kjY6Z6qGnP5iP21Ekb8WhtwPzIODlGuPj5L/FFDhBe5iBWIa3VDh/
	 h3P+8y3QJyKga+cZdUDspQVpYVSIwVAMl1wwZZu65U+rEk+jGpCnJuyU8271LMjdN1
	 2ra06cTALMFJTUwohpoCurhV0ucNN+A/wYA3o/Guk43fywDZSaL7FUQXP9rwZ0Pqx9
	 6dblIPirIoujWlWafGLzsRLt78ylwQlv7YgZJwZsIq+kIOwJLqDUk9LBwJQyNDMx6n
	 LSWRchf5sqA7Q+KkQQeZ8b8p0hk7BSfIloZTKk+FayP+nWU7mQGR+kKf/yIOX7d0Lp
	 eSMomeAEgZzPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFE9FC77B7D
	for <ddprobe@lists.linux.dev>; Sun, 14 May 2023 21:29:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168409974576.5598.15645611838653066866.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdf8efbf7f9ee19aec4cdbbec6d75b06abc926def1ec5700a1150ad6f47b8c5a
Date: Sun, 14 May 2023 21:29:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1684099745
