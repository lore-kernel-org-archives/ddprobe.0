Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42D407468
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:33:06 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFC51C4339B
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:33:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1679945585;
	bh=fxLBpVzhHnvg0eWZ5B5ty9/QCfOSeY3WEqxJbnmuYD4=;
	h=To:Subject:From:Date:From;
	b=LedthqN7R2DVsjnn4hxUEz6PUQ5p1h3YOyfJ9In4ca7bsSIIWg8RG3SgDSwTp/e92
	 YPxxGh7Z2COANmekV/vUAOdf68NOUUWOysj7ndmrrtAbFd9i5TeEj8y83I+cMXH4bD
	 Qm9rD8XZ+i1ktLpyDGiOuREslq13Y3gaOqcc8r4LnBUIbneWUjC2RNAlrKFn59dEFb
	 TIjanWsApSbnT2LtbqgVrNhuHkgaBbAprnITGIHsgPwT9ajd8TfSA147UTM608jk7b
	 dGjhkM5CGsmn7gelTg733K2J/NjZf97KEaIHmrhQdvGy5/TtOpw0GWEsqNj6shBmjS
	 eDJg3jTpY7Uag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4780C76195
	for <ddprobe@lists.linux.dev>; Mon, 27 Mar 2023 19:33:05 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <167994558579.8156.17327058290846604021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a87a55325843b0ad2b4114888fc4db412d132ae47ce7cd952cde7d0042fa3c40
Date: Mon, 27 Mar 2023 19:33:05 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1679945585
