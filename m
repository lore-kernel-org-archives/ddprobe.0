Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 372E514AD24
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724868955; cv=none; b=mluUAZ5v8fa12LMwPs7bpEYkSodZTNrP3nQrM4QWBEOfkZ43yz1wAc9mt4/ArdhK2aDllkhR808dmaRra+u1jeXHSiw67WTrMQSpJL/40IwreV9tArC1BMV8SBbAoKpvzBhJzPtMoxjUqS/+b6nQgD7pWboEIzagAQ7X5y9Tp9E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724868955; c=relaxed/simple;
	bh=E+G/ktR8Nhz6LAXUU7om2jOVVkF2IBBijTx3aoaUzVw=;
	h=To:Subject:From:Message-Id:Date; b=W48kTsSaSDMJE1P6CWFuqtB7QobEyF0XsqDIbIW5kI9jJYXmVaW1YnJ+FOvWcRi8YhzVUtSSWBLYf1AXIh1u0PvhHj6Bpj7PWfQAQAZw11TID5/GjYs8u783RD0kGxeYk4eXOzCYCdy5H0tgikFyI8S2mqib2N+J1PIzO0Xn5fA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cMqE+p60; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cMqE+p60"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0F3FC4CEC0
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724868954;
	bh=E+G/ktR8Nhz6LAXUU7om2jOVVkF2IBBijTx3aoaUzVw=;
	h=To:Subject:From:Date:From;
	b=cMqE+p607DDh5ME/R42E/ao33Oijbh9FKaTMBV82xIlSbgVS5nj4RErnwIfHRU1K2
	 V8XKTmwBozfB4RTwwl8Hb73Rq5uAKqoN6t5geykQvM/17kUvVN4LHb5NGFCO07Xprt
	 nGHNFk3yLVg9oYjpTJjzK3sPqwtfNCD+26ANJEHbBwNj0psFKJC4CQxi5WRkyBc4Cb
	 6Vj3QG4+DOQivTxO1WCtfTaVyb9KyLXMjxsPVbWRQfPhG3Yh++gPJxmDWBqAG7pOIK
	 FAQkfolnG6IBGFUlUX7JFzhPGd5g396xwDvudAG2Z1pwKFuqpfJ+emLXJvOUu73EtE
	 mdlgXtW+Hvx6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987DEC636ED
	for <ddprobe@lists.linux.dev>; Wed, 28 Aug 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172486895361.18255.4871966795238294464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f3960c5abfa495f389bdaa14a9ac681b18c0141f7960283781ee18212571206
Date: Wed, 28 Aug 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724868953
