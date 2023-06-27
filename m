Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AF3B7E6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:43:09 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE02FC433C0
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:43:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1687898588;
	bh=OYboNbCs1PouvnQm+jw15rQIfGQEg1ULrDg9o6PulxE=;
	h=To:Subject:From:Date:From;
	b=AmGa54jnIr0LMADzagPjBLemSCUYTWgYLgpTbTEKaitJUAZE4rmWFSkOQbSnS5mdO
	 cGKbtcLCFy1ahg2Yv6QDfbvTkmrkBOiHqvJ+iQx2Y04YFU731e008s4ZNZzjeaG9Oi
	 a3tdtEKlsy5CpEbkXgomy73fTsKsyRzQmq8QQW9Oeqn0Hluk/p1nAm6jjVIuRw8sI0
	 vGgpfJKkSEfq9xUyCnl80Whbplt60Fe5qYhs0JrgTqtSbk/cEzrS2wAZNPqZ+rZ+jH
	 qG6mKWkOkXCbbosYrdY7Sw/XkzLJsZAUIY3K7j4vNipbzIGEgjM16Bjs9JfTQdSoSy
	 dDphZbtz5GJ9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2061EB64D9
	for <ddprobe@lists.linux.dev>; Tue, 27 Jun 2023 20:43:08 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <168789858871.11895.6429668804894802424.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa0ffc9b80bd888ce2a756478060b906b9d9b79cf7572e3ada98ed858a560954
Date: Tue, 27 Jun 2023 20:43:08 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1687898588
